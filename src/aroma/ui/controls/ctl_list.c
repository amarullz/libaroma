/********************************************************************[libaroma]*
 * Copyright (C) 2011-2015 Ahmad Amarullah (http://amarullz.com/)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *______________________________________________________________________________
 *
 * Filename    : ctl_list.c
 * Description : list control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 04/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_ctl_list_c__
#define __libaroma_ctl_list_c__

#define _LIBAROMA_CTL_LIST_SIGNATURE 0x10

/* list structure */
typedef struct {
  int h;
  int vpad;
  int itemn;
  byte flags;
  LIBAROMA_CTL_LIST_ITEMP first;
  LIBAROMA_CTL_LIST_ITEMP last;
  LIBAROMA_CTL_LIST_ITEMP touched;
  LIBAROMA_CTL_LIST_ITEMP focused;
  
  int threadn;
  LIBAROMA_CTL_LIST_ITEMP * threads;
  LIBAROMA_MUTEX mutex;
} LIBAROMA_CTL_SCROLL, * LIBAROMA_CTL_SCROLLP;

/*
 * Function    : _libaroma_ctl_list_draw_item
 * Return Value: void
 * Descriptions: draw item
 */
void _libaroma_ctl_list_draw_item(
    LIBAROMA_CTL_LIST_ITEMP item,
    LIBAROMA_CANVASP canvas,
    word bgcolor
){
  if (!item){
    return;
  }
  if (!canvas){
    return;
  }
  /* cleanup */
  libaroma_canvas_setcolor(canvas,bgcolor,0xff);
  if (item->draw!=NULL){
    item->draw(item,canvas,bgcolor);
  }
} /* End of _libaroma_ctl_list_draw_item */

/*
 * Function    : _libaroma_ctl_list_dodraw_item
 * Return Value: byte
 * Descriptions: do draw item directly
 */
byte _libaroma_ctl_list_dodraw_item(
    LIBAROMA_CTL_LIST_ITEMP item
){
  if (!item){
    return 0;
  }
  byte res=0;
  if (libaroma_ctl_scroll_is_visible(item->ctl,item->y,item->h)){
    word bgcolor = libaroma_ctl_scroll_get_bg_color(item->ctl);
    LIBAROMA_CANVASP canvas=libaroma_canvas(item->ctl->w,item->h);
    if (canvas!=NULL){
      _libaroma_ctl_list_draw_item(
        item,canvas,bgcolor
      );
      res=libaroma_ctl_scroll_blit(
         item->ctl, 
         canvas,
         0, item->y, canvas->w, canvas->h,
         0
      );
      libaroma_canvas_free(canvas);
    }
  }
  return res;
} /* End of _libaroma_ctl_list_dodraw_item */

/*
 * Function    : _libaroma_ctl_list_thread
 * Return Value: byte
 * Descriptions: scroll list thread
 */
byte _libaroma_ctl_list_thread(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_SCROLL_CLIENTP client){
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return 0;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  
  libaroma_mutex_lock(mi->mutex);
  byte need_redraw=0;
  int i;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i=0;i<mi->threadn;i++){
    LIBAROMA_CTL_LIST_ITEMP item=mi->threads[i];
    if (item->message){
      if (item->message(
        item,
        LIBAROMA_CTL_LIST_ITEM_MSG_THREAD,
        libaroma_ctl_scroll_is_visible(ctl,item->y,item->h),
        0,
        0
      )){
        if (_libaroma_ctl_list_dodraw_item(item)){
          need_redraw=1;
        }
      }
    }
  }
  libaroma_mutex_unlock(mi->mutex);
  return need_redraw;
} /* End of _libaroma_ctl_list_thread */

/*
 * Function    : _libaroma_ctl_list_item_by_y
 * Return Value: void
 * Descriptions: get item by y position
 */
LIBAROMA_CTL_LIST_ITEMP _libaroma_ctl_list_item_by_y(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_SCROLL_CLIENTP client,
    int y){
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return NULL;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  
  /* find first item */
  LIBAROMA_CTL_LIST_ITEMP f = mi->first;
  while(f){
    if ((f->y>=y)&&(f->y+f->h<y)){
      return f;
    }
    f = f->next;
  }
  return NULL;
} /* End of _libaroma_ctl_list_item_by_y */

/*
 * Function    : _libaroma_ctl_list_draw
 * Return Value: void
 * Descriptions: draw routine
 */
void _libaroma_ctl_list_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_SCROLL_CLIENTP client,
    LIBAROMA_CANVASP cv,
    int x, int y, int w, int h){
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  if (y<mi->vpad){
    libaroma_draw_rect(
      cv, 0, 0, w, mi->vpad-y,
      libaroma_ctl_scroll_get_bg_color(ctl),
      0xff
    );
  }
  if (y+h>mi->h-mi->vpad){
    int dh=(y+h)-(mi->h-mi->vpad);
    libaroma_draw_rect(
      cv, 0, h-dh, w, dh,
      libaroma_ctl_scroll_get_bg_color(ctl),
      0xff
    );
  }
  
  /* find first item */
  int current_index = 0;
  LIBAROMA_CTL_LIST_ITEMP f = mi->first;
  while(f){
    if (f->y+f->h>y){
      break;
    }
    f = f->next;
    current_index++;
  }
  
  word bgcolor = libaroma_ctl_scroll_get_bg_color(ctl);
  
  /* draw routine */
  LIBAROMA_CTL_LIST_ITEMP item = f;
  while(item){
    if (item->y>=y+h){
      break;
    }
    LIBAROMA_CANVASP canvas=NULL;
    byte is_area=0;
    if ((item->y>=y)&&(item->y+item->h<y+cv->h)){
      canvas = libaroma_canvas_area(cv,0,item->y-y,w,item->h);
      is_area=1;
    }
    else{
      canvas = libaroma_canvas(w,item->h);
    }
    if (canvas!=NULL){
      _libaroma_ctl_list_draw_item(
        item, canvas, bgcolor
      );
      
      /* blit into working canvas */
      if (!is_area){
        libaroma_draw(cv,canvas,0,item->y-y,0);
      }
      libaroma_canvas_free(canvas);
    }
    item=item->next;
    current_index++;
  }
} /* End of _libaroma_ctl_list_draw */

/*
 * Function    : _libaroma_ctl_list_scroll_message
 * Return Value: dword
 * Descriptions: handle scroll message
 */
dword _libaroma_ctl_list_scroll_message(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_SCROLL_CLIENTP client,
    LIBAROMA_CTL_SCROLLP mi,
    int msg,
    int param,
    int x,
    int y){
  switch(msg){
    case LIBAROMA_CTL_SCROLL_MSG_ACTIVATED:
      {
        /* signal activate item */
        LIBAROMA_CTL_LIST_ITEMP f = mi->first;
        while(f){
          if (f->message!=NULL){
            f->message(f,LIBAROMA_CTL_LIST_ITEM_MSG_ACTIVATED,0,0,0);
          }
          f = f->next;
        }
      }
      break;
    case LIBAROMA_CTL_SCROLL_MSG_INACTIVATED:
      {
        /* signal inactivate item */
        LIBAROMA_CTL_LIST_ITEMP f = mi->first;
        while(f){
          if (f->message!=NULL){
            f->message(f,LIBAROMA_CTL_LIST_ITEM_MSG_INACTIVATED,0,0,0);
          }
          f = f->next;
        }
      }
      break;
    case LIBAROMA_CTL_SCROLL_MSG_ISNEED_TOUCH:{
        if ((y<mi->vpad)||(y>mi->h-mi->vpad)){
          ALOGT("list_scroll_message ISNEED(%i,%i) not needed",x,y);
          /* no need touch handle */
          return 0;
        }
        LIBAROMA_CTL_LIST_ITEMP item=
            _libaroma_ctl_list_item_by_y(
              ctl, client,y);
        if (item){
          if (item->flags&LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH){
            mi->touched = item;
            ALOGT("list_scroll_message ISNEED(%i,%i) needed",x,y);
            return LIBAROMA_CTL_SCROLL_MSG_HANDLED;
          }
        }
        ALOGT("list_scroll_message ISNEED(%i,%i) item don't use touch",x,y);
        return 0;
      }
      break;
    case LIBAROMA_CTL_SCROLL_MSG_TOUCH_DOWN:{
        ALOGT("list_scroll_message TOUCH_DOWN(%i,%i)",x,y);
        if (mi->touched!=NULL){
          if (mi->touched->message){
            int cy = y - mi->touched->y;
            if (mi->touched->message(
              mi->touched,
              LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_DOWN,
              0,
              x, cy
            )){
              if (_libaroma_ctl_list_dodraw_item(mi->touched)){
                return LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW;
              }
            }
          }
        }
      }
      break;
    case LIBAROMA_CTL_SCROLL_MSG_TOUCH_UP:{
        ALOGT("list_scroll_message TOUCH_UP(%i,%i)",x,y);
        if (mi->touched!=NULL){
          if (mi->touched->message){
            int cy = y - mi->touched->y;
            if (mi->touched->message(
              mi->touched,
              LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_UP,
              0,
              x, cy
            )){
              mi->touched=NULL;
              if (_libaroma_ctl_list_dodraw_item(mi->touched)){
                return LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW;
              }
            }
          }
          mi->touched=NULL;
        }
      }
      break;
    case LIBAROMA_CTL_SCROLL_MSG_TOUCH_MOVE:{
        ALOGT("list_scroll_message TOUCH_MOVE(%i,%i)",x,y);
        if (mi->touched!=NULL){
          if (mi->touched->message){
            int cy = y - mi->touched->y;
            if (mi->touched->message(
              mi->touched,
              LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_MOVE,
              0,
              x, cy
            )){
              if (_libaroma_ctl_list_dodraw_item(mi->touched)){
                return LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW;
              }
            }
          }
        }
      }
      break;
    case LIBAROMA_CTL_SCROLL_MSG_TOUCH_CANCEL:{
        ALOGT("list_scroll_message TOUCH_CANCEL(%i,%i)",x,y);
        if (mi->touched!=NULL){
          if (mi->touched->message){
            int cy = y - mi->touched->y;
            if (mi->touched->message(
              mi->touched,
              LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_CANCEL,
              0,
              x, cy
            )){
              if (_libaroma_ctl_list_dodraw_item(mi->touched)){
                mi->touched=NULL;
                return LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW;
              }
            }
          }
          mi->touched=NULL;
        }
      }
      break;
  }
  return 0;
} /* End of _libaroma_ctl_list_scroll_message */

/*
 * Function    : _libaroma_ctl_list_message
 * Return Value: dword
 * Descriptions: message handler
 */
dword _libaroma_ctl_list_message(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_SCROLL_CLIENTP client,
    LIBAROMA_MSGP msg,
    int x, int y){
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return 0;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  
  /* handle the message */
  switch(msg->msg){
    case LIBAROMA_CTL_SCROLL_MSG:{
        return _libaroma_ctl_list_scroll_message(
          ctl, client, mi, msg->x, msg->y, x, y
        );
      }
      break;
  }
  return 0;
} /* End of _libaroma_ctl_list_message */

/*
 * Function    : _libaroma_ctl_list_destroy
 * Return Value: void
 * Descriptions: destroy scroll list client
 */
void _libaroma_ctl_list_destroy(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_SCROLL_CLIENTP client){
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  
  /* cleanup items */
  LIBAROMA_CTL_LIST_ITEMP f = mi->first;
  while(f){
    if (f->destroy!=NULL){
      f->destroy(f);
    }
    LIBAROMA_CTL_LIST_ITEMP p = f;
    f = p->next;
    free(p);
  }
  
  if (mi->threadn>0){
    free(mi->threads);
  }
  
  /* free internal data */
  libaroma_mutex_free(mi->mutex);
  free(mi);
  client->internal=NULL;
  client->signature=0;
} /* End of _libaroma_ctl_list_destroy */

/*
 * Function    : libaroma_ctl_list
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create list scroll control
 */
LIBAROMA_CONTROLP libaroma_ctl_list(
    LIBAROMA_WINDOWP win, word id,
    int x, int y, int w, int h,
    int vertical_padding,
    word bg_color, byte flags
){
  /* allocating internal data */
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP)
      malloc(sizeof(LIBAROMA_CTL_SCROLL));
  if (!mi){
    ALOGW("libaroma_ctl_list cannot allocating memory for list control");
    return NULL;
  }
  memset(mi,0,sizeof(LIBAROMA_CTL_SCROLL));
  libaroma_mutex_init(mi->mutex);
  mi->vpad = libaroma_window_usedp(2)?
      libaroma_dp(vertical_padding):vertical_padding;
  mi->h = mi->vpad*2;
  mi->flags = flags;
  
  mi->threadn = 0;
  mi->threads = NULL;
  
  /* create scroll control */
  LIBAROMA_CONTROLP ctl = libaroma_ctl_scroll(
    win, id, x, y, w, h, bg_color, flags
  );
  
  /* set scroll client */
  libaroma_ctl_scroll_set_client(
    ctl,
    (voidp) mi,
    _LIBAROMA_CTL_LIST_SIGNATURE,
    _libaroma_ctl_list_message,
    _libaroma_ctl_list_draw,
    _libaroma_ctl_list_destroy,
    _libaroma_ctl_list_thread
  );
  
  /* set initial height */
  libaroma_ctl_scroll_set_height(ctl, mi->h);
  return ctl;
} /* End of libaroma_ctl_list */

/*
 * Function    : __libaroma_ctl_list_repos_next_items
 * Return Value: byte
 * Descriptions: reposition next items
 */
byte __libaroma_ctl_list_repos_next_items(LIBAROMA_CTL_LIST_ITEMP first,
  int y){
  LIBAROMA_CTL_LIST_ITEMP f=first;
  while(f){
    f->y=y;
    y+=f->h;
    f = f->next;
  }
  return 1;
} /* End of __libaroma_ctl_list_repos_next_items */

/*
 * Function    : libaroma_ctl_list_item_reg_thread
 * Return Value: byte
 * Descriptions: register item thread
 */
byte libaroma_ctl_list_item_reg_thread(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_LIST_ITEMP item){
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return 0;
  }
  if (!item->message){
    ALOGW("item_reg_thread item doesn't have message handler");
    return 0;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  if (mi->threadn==0){
    libaroma_mutex_lock(mi->mutex);
    mi->threads = (LIBAROMA_CTL_LIST_ITEMP *)
      malloc(sizeof(LIBAROMA_CTL_LIST_ITEMP));
    mi->threads[0] = item;
    mi->threadn++;
    libaroma_mutex_unlock(mi->mutex);
  }
  else{
    int i;
    for (i=0;i<mi->threadn;i++){
      if (mi->threads[i]==item){
        /* already registered */
        return 2;
      }
    }
    
    libaroma_mutex_lock(mi->mutex);
    LIBAROMA_CTL_LIST_ITEMP * new_threads = (LIBAROMA_CTL_LIST_ITEMP *)
      realloc(mi->threads, sizeof(LIBAROMA_CTL_LIST_ITEMP)*(mi->threadn+1));
    if (!new_threads){
      ALOGW("item_reg_thread cannot realloc threads");
    }
    mi->threads=new_threads;
    mi->threads[mi->threadn]=item;
    mi->threadn++;
    libaroma_mutex_unlock(mi->mutex);
  }
  return 1;
} /* End of libaroma_ctl_list_item_reg_thread */

/*
 * Function    : libaroma_ctl_list_item_unreg_thread
 * Return Value: byte
 * Descriptions: unregister item thread
 */
byte libaroma_ctl_list_item_unreg_thread(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_LIST_ITEMP item){
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return 0;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  if (mi->threadn<1){
    ALOGV("item_unreg_thread threadn < 1");
    return 0;
  }
  
  if (mi->threadn==1){
    if (mi->threads[0]==item){
      libaroma_mutex_lock(mi->mutex);
      mi->threadn--;
      free(mi->threads);
      mi->threads=NULL;
      libaroma_mutex_unlock(mi->mutex);
    }
    return 0;
  }
  
  LIBAROMA_CTL_LIST_ITEMP * new_threads = (LIBAROMA_CTL_LIST_ITEMP *)
      malloc(sizeof(LIBAROMA_CTL_LIST_ITEMP)*(mi->threadn-1));
  if (!new_threads){
    ALOGW("item_unreg_thread cannot allocate new threads");
  }
  
  int i;
  int z=0;
  int n=-1;
  libaroma_mutex_lock(mi->mutex);
  for (i=0;i<mi->threadn;i++){
    if (mi->threads[i]==item){
      n=i;
    }
    else{
      new_threads[z++]=mi->threads[i];
    }
  }
  if (n>-1){
    free(mi->threads);
    mi->threads=new_threads;
    mi->threadn--;
    libaroma_mutex_unlock(mi->mutex);
    return 1;
  }
  
  libaroma_mutex_unlock(mi->mutex);
  free(new_threads);
  ALOGV("item_unreg_thread item is unregistered");
  return 0;
} /* End of libaroma_ctl_list_item_unreg_thread */

/*
 * Function    : libaroma_ctl_list_get_item_internal
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: get item at index or id
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_ctl_list_get_item_internal(
  LIBAROMA_CONTROLP ctl, int index, byte find_id
){
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return NULL;
  }
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return NULL;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  if (!find_id){
    if (index==-1){
      return mi->last;
    }
    else if (index==0){
      return mi->first;
    }
  }
  int curr_index = 0;
  LIBAROMA_CTL_LIST_ITEMP f = mi->first;
  if (f){
    while(f){
      if (((!find_id)&&(curr_index==index))||((find_id)&&(f->id==index))) {
        return f;
      }
      f = f->next;
      curr_index++;
    }
  }
  /* not found */
  return NULL;
} /* End of libaroma_ctl_list_get_item_internal */

/*
 * Function    : libaroma_ctl_list_del_itemp_internal
 * Return Value: byte
 * Descriptions: del item from list
 */
byte libaroma_ctl_list_del_itemp_internal(
  LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_LIST_ITEMP f
){
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return 0;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  
  if (f){
    libaroma_mutex_lock(mi->mutex);
    if ((f==mi->first)&&(f==mi->last)){
      mi->first=mi->last=NULL;
    }
    else if (f==mi->first){
      mi->first = f->next;
      mi->first->prev=NULL;
      __libaroma_ctl_list_repos_next_items(
        mi->first,
        f->y
      );
    }
    else if (f==mi->last){
      mi->last=f->prev;
      mi->last->next=NULL;
    }
    else{
      f->prev->next = f->next;
      f->next->prev = f->prev;
      __libaroma_ctl_list_repos_next_items(
        f->next,
        f->next->prev->y+f->next->prev->h
      );
    }
    
    mi->itemn--;
    mi->h-=f->h;
    if (f->destroy!=NULL){
      f->destroy(f);
    }
    free(f);
    libaroma_mutex_unlock(mi->mutex);
    libaroma_ctl_scroll_request_height(ctl, mi->h);
    return 1;
  }
  return 0;
} /* End of libaroma_ctl_list_del_itemp_internal */

/*
 * Function    : libaroma_ctl_list_del_item_internal
 * Return Value: byte
 * Descriptions: del list item by id/index
 */
byte libaroma_ctl_list_del_item_internal(
  LIBAROMA_CONTROLP ctl, int index, byte find_id
){
  return
    libaroma_ctl_list_del_itemp_internal(
      ctl,
      libaroma_ctl_list_get_item_internal(
        ctl, index, find_id
      )
    );
} /* End of libaroma_ctl_list_del_item_internal */

/*
 * Function    : libaroma_ctl_list_is_valid
 * Return Value: byte
 * Descriptions: check control, if it was valid list control
 */
byte libaroma_ctl_list_is_valid(LIBAROMA_CONTROLP ctl){
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return 0;
  }
  return 1;
} /* End of libaroma_ctl_list_is_valid */

/*
 * Function    : libaroma_ctl_list_item_setheight
 * Return Value: byte
 * Descriptions: update item height
 */
byte libaroma_ctl_list_item_setheight(LIBAROMA_CTL_LIST_ITEMP item, int h){
  if (!item){
    return 0;
  }
  LIBAROMA_CONTROLP ctl=item->ctl;
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return 0;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  if (item->h!=h){
    libaroma_mutex_lock(mi->mutex);
    mi->h-=item->h;
    item->h=h;
    mi->h+=item->h;
    __libaroma_ctl_list_repos_next_items(item,item->y);
    libaroma_mutex_unlock(mi->mutex);
    libaroma_ctl_scroll_request_height(ctl, mi->h);
    return 1;
  }
  return 2;
} /* End of libaroma_ctl_list_item_setheight */

/*
 * Function    : libaroma_ctl_list_add_item_internal
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: add item internally
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_ctl_list_add_item_internal(
    LIBAROMA_CONTROLP ctl,
    int id,
    int height,
    byte signature,
    byte flags,
    voidp internal,
    LIBAROMA_CTL_LISTCB_MESSAGE message,
    LIBAROMA_CTL_LISTCB_DRAW draw,
    LIBAROMA_CTL_LISTCB_DESTROY destroy,
    int at_index){
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return NULL;
  }
  if (client->signature!=_LIBAROMA_CTL_LIST_SIGNATURE){
    return NULL;
  }
  LIBAROMA_CTL_SCROLLP mi = (LIBAROMA_CTL_SCROLLP) client->internal;
  LIBAROMA_CTL_LIST_ITEMP item = (LIBAROMA_CTL_LIST_ITEMP)
      malloc(sizeof(LIBAROMA_CTL_LIST_ITEM));
  if (item==NULL){
    ALOGW("list_add_item_internal cannot allocating memory for item");
    return NULL;
  }
  item->ctl=ctl;
  item->y=0;
  item->h=height;
  item->id=id;
  item->flags=flags;
  item->signature=signature;
  item->internal=internal;
  item->message=message;
  item->draw=draw;
  item->destroy=destroy;
  item->next=NULL;
  item->prev=NULL;
  libaroma_mutex_lock(mi->mutex);
  if (mi->last==NULL){
    mi->first=mi->last=item;
    item->y=mi->vpad;
    mi->h+=item->h;
  }
  else if (at_index<0){
    /* at last */
    item->prev=mi->last;
    mi->last->next = item;
    item->y = mi->last->y + mi->last->h;
    mi->last = item;
    mi->h+=item->h;
  }
  else if (at_index==0){
    /* at first */
    item->next = mi->first;
    item->y=mi->vpad;
    mi->first = item;
    mi->h+=item->h;
    __libaroma_ctl_list_repos_next_items(item,mi->vpad);
  }
  else{
    int curr_index = 0;
    LIBAROMA_CTL_LIST_ITEMP f = mi->first;
    if (f){
      while(f){
        if (curr_index==at_index){
          item->prev = f;
          item->next = f->next;
          __libaroma_ctl_list_repos_next_items(item,f->y+f->h);
          f->next = item;
          if (item->next==NULL){
            mi->last = item;
          }
          mi->h+=item->h;
          break;
        }
        f = f->next;
        if (!f){
          curr_index=-1;
          break;
        }
        curr_index++;
      }
    }
    else{
      curr_index=-1;
    }
    if (curr_index<0){
      /* add in last */
      item->prev=mi->last;
      mi->last->next = item;
      item->y = mi->last->y + mi->last->h;
      mi->last = item;
      mi->h+=item->h;
    }
  }
  mi->itemn++;
  libaroma_mutex_unlock(mi->mutex);
  
  /* set current height */
  libaroma_ctl_scroll_request_height(ctl, mi->h);
  return item;
} /* End of libaroma_ctl_list_add_item_internal */



/*******************************************************************************
 *
 * include list item client sources
 *
 ******************************************************************************/
#include "list/listitem_option.c"

#endif /* __libaroma_ctl_list_c__ */
