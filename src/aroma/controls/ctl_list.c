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
#ifndef __libaroma_ctl_list_c__
#define __libaroma_ctl_list_c__
#include <aroma_internal.h>
#include "../ui/ui_internal.h"

/* SCROLL CONTROL HANDLER */
dword _libaroma_ctl_list_message(
  LIBAROMA_CONTROLP, LIBAROMA_CTL_SCROLL_CLIENTP,LIBAROMA_MSGP,int,int);
void _libaroma_ctl_list_destroy(
  LIBAROMA_CONTROLP, LIBAROMA_CTL_SCROLL_CLIENTP);
byte _libaroma_ctl_list_thread(
  LIBAROMA_CONTROLP, LIBAROMA_CTL_SCROLL_CLIENTP);
void _libaroma_ctl_list_draw(
  LIBAROMA_CONTROLP, LIBAROMA_CTL_SCROLL_CLIENTP, LIBAROMA_CANVASP,
  int, int, int, int);
static LIBAROMA_CTL_SCROLL_CLIENT_HANDLER _libaroma_ctl_list_handler={
  message:_libaroma_ctl_list_message,
  draw:_libaroma_ctl_list_draw,
  destroy:_libaroma_ctl_list_destroy,
  thread:_libaroma_ctl_list_thread
};

/* list structure */
typedef struct {
  int h;
  int hpad;
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
  LIBAROMA_MUTEX imutex;
  LIBAROMA_CTL_LIST_TOUCHPOS pos;
} LIBAROMA_CTL_LIST, * LIBAROMA_CTL_LISTP;


/*
 * Function    : __libaroma_ctl_list_item_reg_thread
 * Return Value: byte
 * Descriptions: register item thread
 */
byte __libaroma_ctl_list_item_reg_thread(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_LIST_ITEMP item){
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->handler!=&_libaroma_ctl_list_handler){
    return 0;
  }
  /*
  if (!item->handler->message){
    ALOGW("item_reg_thread item doesn't have message handler");
    return 0;
  }
  */
  
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  if (mi->threadn==0){
    mi->threads = (LIBAROMA_CTL_LIST_ITEMP *)
      malloc(sizeof(LIBAROMA_CTL_LIST_ITEMP));
    mi->threads[0] = item;
    mi->threadn=1;
  }
  else{
    int i;
    for (i=0;i<mi->threadn;i++){
      if (mi->threads[i]==item){
        /* already registered */
        return 2;
      }
    }
    
    LIBAROMA_CTL_LIST_ITEMP * new_threads = (LIBAROMA_CTL_LIST_ITEMP *)
      realloc(mi->threads, sizeof(LIBAROMA_CTL_LIST_ITEMP)*(mi->threadn+1));
    if (!new_threads){
      if (mi->threads){
        free(mi->threads);
      }
      mi->threads=NULL;
      mi->threadn=0;
      ALOGW("item_reg_thread cannot realloc threads");
      return 0;
    }
    mi->threads=new_threads;
    mi->threads[mi->threadn]=item;
    mi->threadn++;
  }
  return 1;
} /* End of __libaroma_ctl_list_item_reg_thread */

/*
 * Function    : __libaroma_ctl_list_item_unreg_thread
 * Return Value: byte
 * Descriptions: unregister item thread
 */
byte __libaroma_ctl_list_item_unreg_thread(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_LIST_ITEMP item){
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->handler!=&_libaroma_ctl_list_handler){
    return 0;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  if (mi->threadn<1){
    return 0;
  }
  
  if (mi->threadn==1){
    if (mi->threads[0]==item){
      free(mi->threads);
      mi->threads=NULL;
      mi->threadn=0;
      return 1;
    }
    return 0;
  }
  
  LIBAROMA_CTL_LIST_ITEMP * new_threads = (LIBAROMA_CTL_LIST_ITEMP *)
      malloc(sizeof(LIBAROMA_CTL_LIST_ITEMP)*(mi->threadn-1));
  if (!new_threads){
    ALOGW("item_unreg_thread cannot allocate new threads");
    if (mi->threads){
      free(mi->threads);
    }
    mi->threads=NULL;
    mi->threadn=0;
    return 0;
  }
  
  int i;
  int z=0;
  int n=-1;
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
    return 1;
  }
  free(new_threads);
  ALOGV("item_unreg_thread item is unregistered");
  return 0;
} /* End of __libaroma_ctl_list_item_unreg_thread */

    
/*
 * Function    : _libaroma_ctl_list_draw_item_fresh
 * Return Value: void
 * Descriptions: fresh item drawing
 */
void _libaroma_ctl_list_draw_item_fresh(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CTL_LIST_ITEMP item,
  LIBAROMA_CANVASP canvas,
  word bgcolor,
  int hpad,
  byte flag
){
  if ((!canvas)||(!item)||(!ctl)) {
    return;
  }
  
  /* cleanup */
  if (!(flag&LIBAROMA_CTL_LIST_ITEM_DRAW_ADDONS)){
    libaroma_canvas_setcolor(canvas,bgcolor,0xff);
  }
  LIBAROMA_CANVASP tcanvas=NULL;
  LIBAROMA_CANVASP ccv = canvas;
  /* have horizontal padding */
  if (hpad>0){
    tcanvas = libaroma_canvas_area(
      canvas, hpad, 0, canvas->w-hpad*2, canvas->h
    );
    if (tcanvas){
      ccv = tcanvas;
    }
  }
  /* draw directly */
  if (item->handler->draw!=NULL){
    item->handler->draw(ctl,item,ccv,bgcolor,
      flag);
  }
  if (tcanvas){
    libaroma_canvas_free(tcanvas);
  }
} /* End of _libaroma_ctl_list_draw_item_fresh */

/*
 * Function    : _libaroma_ctl_list_free_state
 * Return Value: void
 * Descriptions: free state
 */
void _libaroma_ctl_list_free_state(LIBAROMA_CTL_LIST_ITEMP item){
  if (item->state!=NULL){
    if (item->state->cache_rest){
      libaroma_canvas_free(item->state->cache_rest);
    }
    if (item->state->cache_push){
      libaroma_canvas_free(item->state->cache_push);
    }
    if (item->state->cache_client){
      libaroma_canvas_free(item->state->cache_client);
    }
    free(item->state);
    ALOGT("[X] State Freed %x",item->id);
  }
  item->state=NULL;
} /* End of _libaroma_ctl_list_free_state */

/*
 * Function    : _libaroma_ctl_list_new_state
 * Return Value: byte
 * Descriptions: create new state
 */
byte _libaroma_ctl_list_init_state(
    LIBAROMA_CTL_LIST_ITEMP item
){
  if (item->state==NULL){
    item->state = 
      (LIBAROMA_CTL_LIST_ITEM_STATEP) calloc(sizeof(
        LIBAROMA_CTL_LIST_ITEM_STATE
      ),1);
    if (!item->state){
      ALOGW("list_new_state alloc memory failed");
      return 0;
    }
    ALOGT("[0] State Created %x",item->id);
    return 1;
  }
  return 2;
} /* End of _libaroma_ctl_list_new_state */

/*
 * Function    : _libaroma_ctl_list_init_state_cache
 * Return Value: byte
 * Descriptions: init cache canvases
 */
byte _libaroma_ctl_list_init_state_cache(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CTL_LIST_ITEMP item
){
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->handler!=&_libaroma_ctl_list_handler){
    return 0;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  
  if (item->state){
    if (!item->state->cache_rest){
      item->state->cache_rest=libaroma_canvas(ctl->w,item->h);
    }
    if (!item->state->cache_push){
      item->state->cache_push=libaroma_canvas(ctl->w,item->h);
    }
    word bgcolor = libaroma_ctl_scroll_get_bg_color(ctl);
    if (item->state->cache_rest){
      _libaroma_ctl_list_draw_item_fresh(
        ctl,item,item->state->cache_rest,bgcolor,mi->hpad,
        LIBAROMA_CTL_LIST_ITEM_DRAW_NORMAL|LIBAROMA_CTL_LIST_ITEM_DRAW_CACHE
      );
    }
    if (item->state->cache_push){
      _libaroma_ctl_list_draw_item_fresh(
        ctl,item,item->state->cache_push,bgcolor,mi->hpad,
        LIBAROMA_CTL_LIST_ITEM_DRAW_PUSHED|LIBAROMA_CTL_LIST_ITEM_DRAW_CACHE
      );
    }
    return 1;
  }
  return 0;
} /* End of _libaroma_ctl_list_init_state_cache */

/*
 * Function    : _libaroma_ctl_list_draw_item
 * Return Value: void
 * Descriptions: draw item
 */
void _libaroma_ctl_list_draw_item(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    LIBAROMA_CANVASP canvas,
    word bgcolor
){
  if ((!item)||(!canvas)){
    return;
  }
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return;
  }
  if (client->handler!=&_libaroma_ctl_list_handler){
    return;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  
  /* normal animation handler */
  if (item->state){
    if (item->state->normal_handler){
      libaroma_draw(canvas, item->state->cache_rest, 0, 0, 0);
      int ripple_i = 0;
      int ripple_p = 0;
      while(libaroma_ripple_loop(&item->state->ripple,&ripple_i,&ripple_p)){
        int x=0;
        int y=(item->y+libaroma_dp(1));
        int size=0;
        byte push_opacity=0;
        byte ripple_opacity=0;
        if (libaroma_ripple_calculation(
          &item->state->ripple, canvas->w, canvas->h,
          &push_opacity, &ripple_opacity,
          &x, &y, &size, ripple_p
        )){
          libaroma_draw_opacity(canvas, 
            item->state->cache_push, 0, 0, 2, 
            (byte) push_opacity
          );
          libaroma_draw_mask_circle(
              canvas, 
              item->state->cache_push, 
              x, y,
              x, y,
              size,
              ripple_opacity
            );
        }
      }
      if (item->state->normal_handler==2){
        _libaroma_ctl_list_draw_item_fresh(
          ctl, item,canvas,bgcolor,mi->hpad,
          LIBAROMA_CTL_LIST_ITEM_DRAW_ADDONS
        );
      }
      return;
    }
  }
  
  /* draw fresh */
  _libaroma_ctl_list_draw_item_fresh(
    ctl, item,canvas,bgcolor,mi->hpad, LIBAROMA_CTL_LIST_ITEM_DRAW_NORMAL
  );
} /* End of _libaroma_ctl_list_draw_item */

/*
 * Function    : _libaroma_ctl_list_dodraw_item
 * Return Value: byte
 * Descriptions: do draw item directly
 */
byte _libaroma_ctl_list_dodraw_item(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item
){
  if (!item){
    return 0;
  }
  byte res=0;
  if (libaroma_ctl_scroll_is_visible(ctl,item->y,item->h)){
    word bgcolor = libaroma_ctl_scroll_get_bg_color(ctl);
    LIBAROMA_CANVASP canvas=libaroma_canvas(ctl->w,item->h);
    if (canvas!=NULL){
      _libaroma_ctl_list_draw_item(
        ctl,item,canvas,bgcolor
      );
      res=libaroma_ctl_scroll_blit(
         ctl, 
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
  if (client->handler!=&_libaroma_ctl_list_handler){
    return 0;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  
  byte need_redraw=0;
  int i;
  libaroma_mutex_lock(mi->imutex);
  libaroma_mutex_lock(mi->mutex);
  int num_thread = mi->threadn;
  if (num_thread>0){
    LIBAROMA_CTL_LIST_ITEMP * threads = (LIBAROMA_CTL_LIST_ITEMP *) malloc(
      sizeof(LIBAROMA_CTL_LIST_ITEM)*num_thread);
    for (i=0;i<num_thread;i++){
      threads[i]=mi->threads[i];
    }
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (i=0;i<num_thread;i++){
      LIBAROMA_CTL_LIST_ITEMP item = threads[i];
      if (item){
        byte unreg_me=0;
        byte is_draw=0;
        if (item->state){
          /* normal behaviour */
          if (item->state->normal_handler){
            byte res = libaroma_ripple_thread(&item->state->ripple, 0);
            if (res&LIBAROMA_RIPPLE_REDRAW){
              is_draw = 1;
            }
            if (res&LIBAROMA_RIPPLE_HOLDED){
              if (item->handler->message){
                int cx = 0; int cy=0;
                LIBAROMA_CTL_LIST_TOUCHPOSP pos = libaroma_ctl_list_getpos(ctl);
                if (pos){
                  cy = pos->last_y - item->y;
                  cx = pos->last_x;
                }
                byte msgret=item->handler->message(
                  ctl,
                  item,
                  LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_HOLDED,
                  LIBAROMA_CTL_LIST_ITEM_MSGPARAM_HOLDED,
                  cx, cy
                );
                if (msgret&LIBAROMA_CTL_LIST_ITEM_MSGRET_NEED_DRAW){
                  is_draw=1;
                }
                if (msgret&LIBAROMA_CTL_LIST_ITEM_MSGRET_UNREG_THREAD){
                  unreg_me=1;
                }
              }
            }
            if (res&LIBAROMA_RIPPLE_RELEASED){
              _libaroma_ctl_list_free_state(item);
              unreg_me=1;
            }
          }
        }
        if (item->handler->message){
          byte msgret=item->handler->message(
            ctl,
            item,
            LIBAROMA_CTL_LIST_ITEM_MSG_THREAD,
            libaroma_ctl_scroll_is_visible(ctl,item->y,item->h),
            0,
            0
          );
          if (msgret&LIBAROMA_CTL_LIST_ITEM_MSGRET_NEED_DRAW){
            is_draw=1;
          }
          if (msgret&LIBAROMA_CTL_LIST_ITEM_MSGRET_UNREG_THREAD){
            unreg_me=1;
          }
        }
        if (is_draw){
          if (_libaroma_ctl_list_dodraw_item(ctl,item)){
            need_redraw=1;
          }
        }
        
        /* unreg thread */
        if (!unreg_me){
          threads[i] = NULL;
        }
      }
    }
    
    /* unreg threads */
    for (i=0;i<num_thread;i++){
      LIBAROMA_CTL_LIST_ITEMP item = threads[i];
      if (item!=NULL){
        if (!(item->flags&LIBAROMA_CTL_LIST_ITEM_REGISTER_THREAD)){
          __libaroma_ctl_list_item_unreg_thread(ctl, item);
        }
      }
    }
    free(threads);
  }
  libaroma_mutex_unlock(mi->mutex);
  libaroma_mutex_unlock(mi->imutex);
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
  if (client->handler!=&_libaroma_ctl_list_handler){
    return NULL;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  
  /* find first item */
  LIBAROMA_CTL_LIST_ITEMP f = mi->first;
  while(f){
    if ((f->y<=y)&&(f->y+f->h>y)){
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
  if (client->handler!=&_libaroma_ctl_list_handler){
    return;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
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
  
  libaroma_mutex_lock(mi->imutex);
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
        ctl, item, canvas, bgcolor
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
  libaroma_mutex_unlock(mi->imutex);
} /* End of _libaroma_ctl_list_draw */

/*
 * Function    : _libaroma_ctl_list_scroll_message
 * Return Value: dword
 * Descriptions: handle scroll message
 */
dword _libaroma_ctl_list_scroll_message(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_SCROLL_CLIENTP client,
    LIBAROMA_CTL_LISTP mi,
    int msg,
    int param,
    int x,
    int y){
  switch(msg){
    case LIBAROMA_CTL_SCROLL_MSG_ISNEED_TOUCH:{
        if ((y<mi->vpad)||(y>mi->h-mi->vpad)){
          ALOGT("list_scroll_message ISNEED(%i,%i) not needed",x,y);
          /* no need touch handle */
          return 0;
        }
        LIBAROMA_CTL_LIST_ITEMP item=
            _libaroma_ctl_list_item_by_y(ctl, client, y);
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
        mi->pos.start_x=x;
        mi->pos.start_y=y;
        mi->pos.last_x=x;
        mi->pos.last_y=y;
        
        byte retval = 0;
        if (mi->touched!=NULL){
          byte mres = 0;
          if (mi->touched->handler->message){
            int cy = y - mi->touched->y;
            mres=mi->touched->handler->message(
              ctl,
              mi->touched,
              LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_DOWN,
              0,
              x, cy
            );
          }
          if (!(mres&LIBAROMA_CTL_LIST_ITEM_MSGRET_HANDLED)){
            /* init state item */
            if (_libaroma_ctl_list_init_state(mi->touched)){
              _libaroma_ctl_list_init_state_cache(ctl,mi->touched);
              if (mres&LIBAROMA_CTL_LIST_ITEM_MSGRET_HAVE_ADDONS_DRAW){
                mi->touched->state->normal_handler = 2;
              }
              else{
                mi->touched->state->normal_handler = 1;
              }
              libaroma_mutex_lock(mi->mutex);
              libaroma_ripple_down(&mi->touched->state->ripple, x, y);
              __libaroma_ctl_list_item_reg_thread(ctl, mi->touched);
              libaroma_mutex_unlock(mi->mutex);
            }
          }
          else if(mi->touched->state){
            mi->touched->state->normal_handler = 0;
          }
          
          if (mres&LIBAROMA_CTL_LIST_ITEM_MSGRET_NEED_DRAW){
            if (_libaroma_ctl_list_dodraw_item(ctl,mi->touched)){
              retval=LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW;
            }
          }
        }
        return retval;
      }
      break;
    case LIBAROMA_CTL_SCROLL_MSG_TOUCH_MOVE:{
        ALOGT("list_scroll_message TOUCH_MOVE(%i,%i)",x,y);
        mi->pos.last_x=x;
        mi->pos.last_y=y;
        byte retval = 0;
        if (mi->touched!=NULL){
          byte mres = 0;
          if (mi->touched->handler->message){
            int cy = y - mi->touched->y;
            mres=mi->touched->handler->message(
              ctl,
              mi->touched,
              LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_MOVE,
              0,
              x, cy
            );
          }
          if (mi->touched->state){
            libaroma_ripple_move(&mi->touched->state->ripple,x,y);
          }
          if (mres&LIBAROMA_CTL_LIST_ITEM_MSGRET_NEED_DRAW){
            if (_libaroma_ctl_list_dodraw_item(ctl,mi->touched)){
              retval=LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW;
            }
          }
        }
        return retval;
      }
      break;
    case LIBAROMA_CTL_SCROLL_MSG_TOUCH_UP:
    case LIBAROMA_CTL_SCROLL_MSG_TOUCH_CANCEL:{
        ALOGT_IF(msg==LIBAROMA_CTL_SCROLL_MSG_TOUCH_UP,
          "list_scroll_message TOUCH_UP(%i,%i)",x,y);
        ALOGT_IF(msg==LIBAROMA_CTL_SCROLL_MSG_TOUCH_CANCEL,
          "list_scroll_message TOUCH_CANCEL(%i,%i)",x,y);
        mi->pos.last_x=x;
        mi->pos.last_y=y;
        byte retval = 0;
        if (mi->touched!=NULL){
          dword param_msg = 0;
          if (mi->touched->state){
            if (msg==LIBAROMA_CTL_SCROLL_MSG_TOUCH_CANCEL){
              libaroma_ripple_cancel(&mi->touched->state->ripple);
            }
            else{
              byte res = libaroma_ripple_up(&mi->touched->state->ripple,0);
              if (res&LIBAROMA_RIPPLE_HOLDED){
                param_msg = LIBAROMA_CTL_LIST_ITEM_MSGPARAM_HOLDED;
              }
            }
          }
          byte mres = 0;
          if (mi->touched->handler->message){
            int cy = y - mi->touched->y;
            mres=mi->touched->handler->message(
              ctl,
              mi->touched,
              (msg==LIBAROMA_CTL_SCROLL_MSG_TOUCH_UP)?
                LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_UP:
                LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_CANCEL,
              param_msg,
              x, cy
            );
          }
          if (mres&LIBAROMA_CTL_LIST_ITEM_MSGRET_NEED_DRAW){
            if (_libaroma_ctl_list_dodraw_item(ctl,mi->touched)){
              retval=LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW;
            }
          }
        }
        return retval;
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
  if (client->handler!=&_libaroma_ctl_list_handler){
    return 0;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  
  dword res=0;
  
  /* handle the message */
  libaroma_mutex_lock(mi->imutex);
  switch(msg->msg){
    case LIBAROMA_CTL_SCROLL_MSG:{
        res=_libaroma_ctl_list_scroll_message(
          ctl, client, mi, msg->x, msg->y, x, y
        );
      }
      break;
  }
  libaroma_mutex_unlock(mi->imutex);
  return res;
} /* End of _libaroma_ctl_list_message */

/*
 * Function    : _libaroma_ctl_list_destroy
 * Return Value: void
 * Descriptions: destroy scroll list client
 */
void _libaroma_ctl_list_destroy(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_SCROLL_CLIENTP client){
  if (client->handler!=&_libaroma_ctl_list_handler){
    return;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  
  /* cleanup items */
  LIBAROMA_CTL_LIST_ITEMP f = mi->first;
  while(f){
    LIBAROMA_CTL_LIST_ITEMP p = f;
    f = p->next;
    
    /* destroy */
    if (p->handler->destroy!=NULL){
      p->handler->destroy(ctl,p);
    }
    _libaroma_ctl_list_free_state(p);
    free(p);
  }
  
  if (mi->threadn>0){
    free(mi->threads);
  }
  
  /* free internal data */
  libaroma_mutex_free(mi->imutex);
  libaroma_mutex_free(mi->mutex);
  free(mi);
  client->internal=NULL;
  client->handler=NULL;
} /* End of _libaroma_ctl_list_destroy */

/*
 * Function    : libaroma_ctl_list
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create list scroll control
 */
LIBAROMA_CONTROLP libaroma_ctl_list(
    LIBAROMA_WINDOWP win, word id,
    int x, int y, int w, int h,
    int horizontal_padding,
    int vertical_padding,
    word bg_color, byte flags
){
  /* allocating internal data */
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP)
      calloc(sizeof(LIBAROMA_CTL_LIST),1);
  if (!mi){
    ALOGW("libaroma_ctl_list cannot allocating memory for list control");
    return NULL;
  }
  mi->vpad = libaroma_window_measure_point(vertical_padding);
  mi->hpad = libaroma_window_measure_point(horizontal_padding);
  mi->h = mi->vpad*2;
  mi->flags = flags;
  libaroma_mutex_init(mi->mutex);
  libaroma_mutex_init(mi->imutex);
  
  /* create scroll control */
  LIBAROMA_CONTROLP ctl = libaroma_ctl_scroll(
    win, id, x, y, w, h, bg_color, flags
  );
  
  /* set scroll client */
  libaroma_ctl_scroll_set_client(
    ctl,
    (voidp) mi,
    &_libaroma_ctl_list_handler
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
 * Function    : libaroma_ctl_list_getpos
 * Return Value: LIBAROMA_CTL_LIST_TOUCHPOSP
 * Descriptions: get touch positions
 */
LIBAROMA_CTL_LIST_TOUCHPOSP libaroma_ctl_list_getpos(LIBAROMA_CONTROLP ctl){
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return NULL;
  }
  if (client->handler!=&_libaroma_ctl_list_handler){
    return NULL;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  return &mi->pos;
} /* End of libaroma_ctl_list_getpos */

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
  if (client->handler!=&_libaroma_ctl_list_handler){
    return NULL;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  if (!find_id){
    if (index==-1){
      return mi->last;
    }
    else if (index==0){
      return mi->first;
    }
  }
  int curr_index = 0;
  libaroma_mutex_lock(mi->imutex);
  LIBAROMA_CTL_LIST_ITEMP f = mi->first;
  if (f){
    while(f){
      if (((!find_id)&&(curr_index==index))||((find_id)&&(f->id==index))) {
        libaroma_mutex_unlock(mi->imutex);
        return f;
      }
      f = f->next;
      curr_index++;
    }
  }
  libaroma_mutex_unlock(mi->imutex);
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
  if (client->handler!=&_libaroma_ctl_list_handler){
    return 0;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  libaroma_mutex_lock(mi->imutex);
  libaroma_mutex_lock(mi->mutex);
  if (f){
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
    if (f->handler->destroy!=NULL){
      f->handler->destroy(ctl,f);
    }
    _libaroma_ctl_list_free_state(f);
    __libaroma_ctl_list_item_unreg_thread(ctl, f);
    if (mi->touched==f){
      mi->touched=NULL;
    }
    free(f);
    libaroma_mutex_unlock(mi->mutex);
    libaroma_mutex_unlock(mi->imutex);
    libaroma_ctl_scroll_request_height(ctl, mi->h);
    return 1;
  }
  libaroma_mutex_unlock(mi->mutex);
  libaroma_mutex_unlock(mi->imutex);
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
  if (client->handler!=&_libaroma_ctl_list_handler){
    return 0;
  }
  return 1;
} /* End of libaroma_ctl_list_is_valid */

/*
 * Function    : libaroma_ctl_list_item_setheight
 * Return Value: byte
 * Descriptions: update item height
 */
byte libaroma_ctl_list_item_setheight(
    LIBAROMA_CONTROLP ctl,LIBAROMA_CTL_LIST_ITEMP item, int h){
  if (!item){
    return 0;
  }
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->handler!=&_libaroma_ctl_list_handler){
    return 0;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  if (item->h!=h){
    mi->h-=item->h;
    item->h=h;
    mi->h+=item->h;
    __libaroma_ctl_list_repos_next_items(item,item->y);
    libaroma_ctl_scroll_request_height(ctl, mi->h);
    return 1;
  }
  return 2;
} /* End of libaroma_ctl_list_item_setheight */

/*
 * Function    : libaroma_ctl_list_item_position
 * Return Value: byte
 * Descriptions: get item position
 */
byte libaroma_ctl_list_item_position(
    LIBAROMA_CONTROLP ctl,LIBAROMA_CTL_LIST_ITEMP item,
    LIBAROMA_RECTP rect, byte absolute){
  if (!rect){
    return 0;
  }
  if (!item){
    return 0;
  }
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->handler!=&_libaroma_ctl_list_handler){
    return 0;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  
  int x=0;
  int y=0;
  if (absolute){
    libaroma_window_calculate_pos_abs(NULL,ctl,&x,&y);
  }
  else{
    libaroma_window_calculate_pos(NULL,ctl,&x,&y);
  }
  int ctl_y = libaroma_ctl_scroll_get_scroll(ctl,NULL);
  rect->x=x;
  rect->y=item->y-(y+ctl_y+mi->vpad);
  rect->w=ctl->w-(mi->hpad*2);
  rect->h=item->h;
  return 1;
} /* End of libaroma_ctl_list_item_position */

/*
 * Function    : libaroma_ctl_list_scroll_to_item
 * Return Value: byte
 * Descriptions: focus item to scroll
 */
byte libaroma_ctl_list_scroll_to_item(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    byte smooth
  ){
  if (!item){
    return 0;
  }
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return 0;
  }
  if (client->handler!=&_libaroma_ctl_list_handler){
    return 0;
  }
  /*LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;*/
  int sel_cy = item->y + (item->h>>1);
  int draw_y = (ctl->h>>1) - sel_cy;
  draw_y = (draw_y<0)?(0-draw_y):0;
  if (smooth){
    libaroma_ctl_scroll_request_pos(ctl,draw_y);
  }
  else{
    libaroma_ctl_scroll_set_pos(ctl,draw_y);
  }
  return 1;
} /* End of libaroma_ctl_list_scroll_to_item */

/*
 * Function    : libaroma_ctl_list_add_item_internal
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: add item internally
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_ctl_list_add_item_internal(
    LIBAROMA_CONTROLP ctl,
    int id,
    int height,
    word flags,
    voidp internal,
    LIBAROMA_CTL_LIST_ITEM_HANDLERP handler,
    int at_index){
  if (!handler){
    return NULL;
  }
  LIBAROMA_CTL_SCROLL_CLIENTP client = libaroma_ctl_scroll_get_client(ctl);
  if (!client){
    return NULL;
  }
  if (client->handler!=&_libaroma_ctl_list_handler){
    return NULL;
  }
  LIBAROMA_CTL_LISTP mi = (LIBAROMA_CTL_LISTP) client->internal;
  
  LIBAROMA_CTL_LIST_ITEMP item = (LIBAROMA_CTL_LIST_ITEMP)
      calloc(sizeof(LIBAROMA_CTL_LIST_ITEM),1);
  if (item==NULL){
    ALOGW("list_add_item_internal cannot allocating memory for item");
    return NULL;
  }
  
  libaroma_mutex_lock(mi->imutex);
  libaroma_mutex_lock(mi->mutex);
  item->y=0;
  item->h=height;
  item->id=id;
  item->flags=flags;
  item->handler=handler;
  item->internal=internal;
  
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
  
  if (flags&LIBAROMA_CTL_LIST_ITEM_REGISTER_THREAD){
    __libaroma_ctl_list_item_reg_thread(ctl,item);
  }
  
  libaroma_mutex_unlock(mi->mutex);
  libaroma_mutex_unlock(mi->imutex);
  
  /* set current height */
  libaroma_ctl_scroll_request_height(ctl, mi->h);
  return item;
} /* End of libaroma_ctl_list_add_item_internal */

/*
 * Function    : libaroma_listitem_nonitem
 * Return Value: byte
 * Descriptions: is non item
 */
byte libaroma_listitem_nonitem(LIBAROMA_CTL_LIST_ITEMP item){
  if (!item){
    return 1;
  }
  if (libaroma_listitem_isdivider(item)){
    return 1;
  }
  return libaroma_listitem_iscaption(item);
} /* End of libaroma_listitem_nonitem */

#endif /* __libaroma_ctl_list_c__ */
