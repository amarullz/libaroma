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
 * Filename    : listitem_image.c
 * Description : image list item
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 17/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_listitem_image_c__
#define __libaroma_listitem_image_c__
#include <aroma_internal.h>
#include "../../ui/ui_internal.h"

/* LIST ITEM HANDLER */
byte _libaroma_listitem_image_message(
  LIBAROMA_CONTROLP, LIBAROMA_CTL_LIST_ITEMP,byte,dword,int,int);
void _libaroma_listitem_image_draw(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP,LIBAROMA_CANVASP,word,byte);
void _libaroma_listitem_image_destroy(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP);
static LIBAROMA_CTL_LIST_ITEM_HANDLER _libaroma_listitem_image_handler =
{
  message:_libaroma_listitem_image_message,
  draw:_libaroma_listitem_image_draw,
  destroy:_libaroma_listitem_image_destroy
};

/* LIST ITEM INTERNAL DATA */
typedef struct{
  LIBAROMA_CANVASP image;
  LIBAROMA_CANVASP ready_image;
  int paralax_last_y;
  int paralax_y;
} _LIBAROMA_LISTITEM_IMAGE, * _LIBAROMA_LISTITEM_IMAGEP;

/*
 * Function    : _libaroma_listitem_image_message
 * Return Value: byte
 * Descriptions: message handler
 */
byte _libaroma_listitem_image_message(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    byte msg,
    dword param,
    int x,
    int y){
  if (item->handler!=&_libaroma_listitem_image_handler){
    return 0;
  }
  _LIBAROMA_LISTITEM_IMAGEP mi = 
    (_LIBAROMA_LISTITEM_IMAGEP) item->internal;
  
  switch (msg){
    case LIBAROMA_CTL_LIST_ITEM_MSG_THREAD:
      {
        if (item->flags&LIBAROMA_CTL_LIST_ITEM_REGISTER_THREAD){
          int ysc=libaroma_ctl_scroll_get_scroll(ctl,NULL);
          if (mi->paralax_last_y!=ysc){
            mi->paralax_last_y = ysc;
            int ysch=ysc+ctl->h;
            if ((ysch>=item->y)&&(ysc<item->y+item->h)){
              ysch-=item->y;
              mi->paralax_y=((item->h * ysch) / ctl->h);
              return LIBAROMA_CTL_LIST_ITEM_MSGRET_NEED_DRAW;
            }
          }
        }
      }
      break;
    
    case LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_DOWN:
      {
        //printf("list image #%i -> down\n",item->id);
      }
      break;
    case LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_HOLDED:
      {
        libaroma_window_post_command_ex(
          LIBAROMA_CMD_SET(LIBAROMA_CMD_HOLD, 0, ctl->id),
          0, item->id, 0, (voidp) item
        );
      }
      break;
    case LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_UP:
      {
        if (param!=LIBAROMA_CTL_LIST_ITEM_MSGPARAM_HOLDED){
          libaroma_window_post_command_ex(
            LIBAROMA_CMD_SET(LIBAROMA_CMD_CLICK, 0, ctl->id),
            0, item->id, 0, (voidp) item
          );
        }
      }
      break;
    case LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_CANCEL:
      {
        //printf("list image #%i -> touch canceled by scroll\n",item->id);
      }
      break;
  }
  return 0;
} /* End of _libaroma_listitem_image_message */

/*
 * Function    : _libaroma_listitem_image_draw
 * Return Value: void
 * Descriptions: item draw routine
 */
void _libaroma_listitem_image_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    LIBAROMA_CANVASP cv,
    word bgcolor,
    byte state){
  if (!(state&LIBAROMA_CTL_LIST_ITEM_DRAW_ADDONS)){
    if (item->handler!=&_libaroma_listitem_image_handler){
      return;
    }
    _LIBAROMA_LISTITEM_IMAGEP mi = (_LIBAROMA_LISTITEM_IMAGEP) item->internal;
    
    byte is_dark=libaroma_color_isdark(bgcolor);
    word flags=item->flags;
    
    if (mi->ready_image){
      if (flags&LIBAROMA_LISTITEM_IMAGE_PARALAX){
        if ((mi->ready_image->w!=cv->w)||(mi->ready_image->h!=cv->h*2)){
          libaroma_canvas_free(mi->ready_image);
          mi->ready_image=NULL;
        }
      }
      else{
        if ((mi->ready_image->w!=cv->w)||(mi->ready_image->h!=cv->h)){
          libaroma_canvas_free(mi->ready_image);
          mi->ready_image=NULL;
        }
      }
    }
    
    if (mi->ready_image==NULL){
      if (flags&LIBAROMA_LISTITEM_IMAGE_PARALAX){
        mi->ready_image=libaroma_canvas(cv->w,cv->h*2);
        mi->paralax_last_y=-1;
        _libaroma_listitem_image_message(
          ctl, item, LIBAROMA_CTL_LIST_ITEM_MSG_THREAD,0,0,0);
      }
      else{
        mi->ready_image=libaroma_canvas(cv->w,cv->h);
      }
      libaroma_draw_rect(
        mi->ready_image,0,0,
        mi->ready_image->w,mi->ready_image->h,bgcolor,0xff
      );
      if (mi->ready_image){
        if (flags&LIBAROMA_LISTITEM_IMAGE_FILL){
          if (flags&LIBAROMA_LISTITEM_IMAGE_PROPORTIONAL){
            float w_tmp	= ((float)mi->ready_image->w)/((float) mi->image->w);
            float h_tmp	= ((float)mi->ready_image->h)/((float) mi->image->h);
            int h2_tmp	= (int) (w_tmp * mi->image->h);
            float b			  = w_tmp;
            if (h2_tmp<mi->ready_image->h){
            	b = h_tmp;
            }
            int draw_w=ceil(mi->image->w*b);
            int draw_h=ceil(mi->image->h*b);
            int draw_x=floor((draw_w-mi->ready_image->w)/2);
            int draw_y=floor((draw_h-mi->ready_image->h)/2);
            LIBAROMA_CANVASP tc=libaroma_canvas(draw_w,draw_h);
            if (tc){
              libaroma_canvas_setcolor(tc,bgcolor,0xff);
              libaroma_draw_scale_smooth(
                tc, mi->image,
                0, 0, draw_w, draw_h,
                0, 0, mi->image->w, mi->image->h
              );
              
              libaroma_draw_ex(
                mi->ready_image,tc,
                0,0,
                draw_x,draw_y,
                mi->ready_image->w,mi->ready_image->h,
                0,0xff
              );
              libaroma_canvas_free(tc);
            }
            else{
              libaroma_draw_scale_smooth(
                mi->ready_image, mi->image,
                0, 0, mi->ready_image->w, mi->ready_image->h,
                0, 0, mi->image->w, mi->image->h
              );
            }
          }
          else{
            libaroma_draw_scale_smooth(
              mi->ready_image, mi->image,
              0, 0, mi->ready_image->w, mi->ready_image->h,
              0, 0, mi->image->w, mi->image->h
            );
          }
        }
        else{
          libaroma_draw(mi->ready_image,mi->image,
            (mi->ready_image->w>>1)-(mi->image->w>>1),
            (mi->ready_image->h>>1)-(mi->image->h>>1),
            1
          );
        }
      }
    }
    if (mi->ready_image){
      if (flags&LIBAROMA_LISTITEM_IMAGE_PARALAX){
        libaroma_draw_ex(
          cv,mi->ready_image,
          0,0,
          0,item->h-mi->paralax_y,
          cv->w,cv->h,
          0,0xff
        );
      }
      else{
        libaroma_draw(cv,mi->ready_image,0,0,0);
      }
    }
    int min_pushed=0;
    word selcolor = is_dark?RGB(ffffff):RGB(000000);
    if ((item->next)&&(flags&LIBAROMA_LISTITEM_WITH_SEPARATOR)){
      if (!libaroma_listitem_nonitem(item->next)){
        min_pushed=1;
        libaroma_draw_rect(
          cv,
          0,
          cv->h-libaroma_dp(1),
          cv->w,
          libaroma_dp(1),
          is_dark?RGB(555555):RGB(dddddd),
          0xcc
        );
      }
    }
    if (state&LIBAROMA_CTL_LIST_ITEM_DRAW_PUSHED){
      libaroma_draw_rect(
        cv,
        0,0,
        cv->w,
        cv->h-libaroma_dp(min_pushed),
        selcolor,0x50
      );
    }
  }
} /* End of _libaroma_listitem_image_draw */

/*
 * Function    : _libaroma_listitem_image_release_internal
 * Return Value: void
 * Descriptions: release internal data
 */
void _libaroma_listitem_image_release_internal(_LIBAROMA_LISTITEM_IMAGEP mi,
  word flags){
  if (mi->image){
    if ((flags&LIBAROMA_LISTITEM_IMAGE_FREE)||
      (!(flags&LIBAROMA_LISTITEM_IMAGE_SHARED))){
      libaroma_canvas_free(mi->image);
    }
  }
  if (mi->ready_image){
    libaroma_canvas_free(mi->ready_image);
  }
  free(mi);
} /* End of _libaroma_listitem_image_release_internal */

/*
 * Function    : _libaroma_listitem_image_destroy
 * Return Value: void
 * Descriptions: destroy option item
 */
void _libaroma_listitem_image_destroy(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item){
  if (item->handler!=&_libaroma_listitem_image_handler){
    return;
  }
  _libaroma_listitem_image_release_internal(
    (_LIBAROMA_LISTITEM_IMAGEP) item->internal, item->flags
  );
} /* End of _libaroma_listitem_image_destroy */

/*
 * Function    : libaroma_listitem_image
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: create option item
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_listitem_image(
    LIBAROMA_CONTROLP ctl,
    int id,
    LIBAROMA_CANVASP image,
    int h,
    word flags,
    int at_index){
  /* check valid list control */
  if (!libaroma_ctl_list_is_valid(ctl)){
    ALOGW("listitem_image control is not valid list control");
    return 0;
  }
  if (!image){
    ALOGW("listitem_image image is null");
    return 0;
  }
  _LIBAROMA_LISTITEM_IMAGEP mi = (_LIBAROMA_LISTITEM_IMAGEP)
    calloc(sizeof(_LIBAROMA_LISTITEM_IMAGE),1);
  if (!mi){
    ALOGW("listitem_image cannot allocate internal data");
    return NULL;
  }
  mi->image=image;
  mi->ready_image=NULL;
  if (h==0){
    h=image->h;
  }
  else{
    h=libaroma_window_measure_point(h);
  }
  if (flags&LIBAROMA_LISTITEM_IMAGE_PARALAX){
    flags|=LIBAROMA_LISTITEM_IMAGE_PROPORTIONAL;
    flags|=LIBAROMA_LISTITEM_IMAGE_FILL;
    flags|=LIBAROMA_CTL_LIST_ITEM_REGISTER_THREAD;
  }
  
  LIBAROMA_CTL_LIST_ITEMP item = libaroma_ctl_list_add_item_internal(
    ctl, id, h,
    flags,
    (voidp) mi,
    &_libaroma_listitem_image_handler,
    at_index
  );
  if (!item){
    ALOGW("listitem_image add_item_internal failed");
    _libaroma_listitem_image_release_internal(mi,flags);
  }
  return item;
} /* End of libaroma_listitem_image */


#endif /* __libaroma_listitem_image_c__ */
