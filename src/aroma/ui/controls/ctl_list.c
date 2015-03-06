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
} LIBAROMA_CTL_SCROLL, * LIBAROMA_CTL_SCROLLP;

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
      /* cleanup */
      libaroma_canvas_setcolor(canvas,
        libaroma_ctl_scroll_get_bg_color(ctl),0xff);
      if (item->draw!=NULL){
        item->draw(item,canvas,current_index,mi->itemn);
      }
      else{
        /* test only */
        if (current_index<mi->itemn-1){
          libaroma_draw_rect(
            canvas, 
            libaroma_dp(10),
            canvas->h-libaroma_dp(1), 
            w-libaroma_dp(20),
            libaroma_dp(1),
            RGB(555555),
            60
          );
        }
        char text[64];
        snprintf(text,64,"ID: %i, index: %i",item->id,current_index);
        libaroma_draw_text(
          canvas,
          text,
          50,
          (item->h/2)-((libaroma_font_size_px(4)*1.2)/2),
          RGB(000000),
          w-100,
          LIBAROMA_FONT(0,4)|
          LIBAROMA_TEXT_SINGLELINE|
          LIBAROMA_TEXT_CENTER|
          LIBAROMA_TEXT_FIXED_INDENT|
          LIBAROMA_TEXT_FIXED_COLOR|
          LIBAROMA_TEXT_NOHR,
          120);
      }
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
  
  /* free internal data */
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
  mi->vpad = libaroma_window_usedp(2)?
      libaroma_dp(vertical_padding):vertical_padding;
  mi->h = mi->vpad*2;
  mi->flags = flags;
  
  /* create scroll control */
  LIBAROMA_CONTROLP ctl = libaroma_ctl_scroll(
    win, id, x, y, w, h, bg_color, flags
  );
  
  /* set scroll client */
  libaroma_ctl_scroll_set_client(
    ctl,
    (voidp) mi,
    _LIBAROMA_CTL_LIST_SIGNATURE,
    NULL /*message*/,
    _libaroma_ctl_list_draw,
    _libaroma_ctl_list_destroy,
    NULL /*thread*/
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
 * Function    : libaroma_ctl_list_add_item_internal
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: add item internally
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_ctl_list_add_item_internal(
    LIBAROMA_CONTROLP ctl,
    int id,
    int height,
    byte signature,
    voidp internal,
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
  item->y=0;
  item->h=height;
  item->id=id;
  item->flags=0;
  item->signature=signature;
  item->internal=internal;
  item->draw=draw;
  item->destroy=destroy;
  item->next=NULL;
  item->prev=NULL;
  
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
  
  /* set current height */
  libaroma_ctl_scroll_request_height(ctl, mi->h);
  return item;
} /* End of libaroma_ctl_list_add_item_internal */



#endif /* __libaroma_ctl_list_c__ */
