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
 * Filename    : listitem_caption.c
 * Description : item caption source
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 25/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_listitem_caption_c__
#define __libaroma_listitem_caption_c__
#include <aroma_internal.h>

#include "../../ui/ui_internal.h"

/* LIST ITEM HANDLER */
byte _libaroma_listitem_caption_message(
  LIBAROMA_CONTROLP, LIBAROMA_CTL_LIST_ITEMP,byte,dword,int,int);
void _libaroma_listitem_caption_draw(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP,LIBAROMA_CANVASP,word,byte);
void _libaroma_listitem_caption_destroy(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP);
static LIBAROMA_CTL_LIST_ITEM_HANDLER _libaroma_listitem_caption_handler =
{
  message:_libaroma_listitem_caption_message,
  draw:_libaroma_listitem_caption_draw,
  destroy:_libaroma_listitem_caption_destroy
};

/* LIST ITEM INTERNAL DATA */
typedef struct{
  word textcolor;
  char * text;
  int h;
} _LIBAROMA_LISTITEM_CAPTION, * _LIBAROMA_LISTITEM_CAPTIONP;

/*
 * Function    : libaroma_listitem_iscaption
 * Return Value: byte
 * Descriptions: is list item caption
 */
byte libaroma_listitem_iscaption(LIBAROMA_CTL_LIST_ITEMP item){
  if (!item){
    return 0;
  }
  if (item->handler!=&_libaroma_listitem_caption_handler){
    return 0;
  }
  return 1;
} /* End of libaroma_listitem_iscaption */


/*
 * Function    : _libaroma_listitem_caption_message
 * Return Value: byte
 * Descriptions: message handler
 */
byte _libaroma_listitem_caption_message(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    byte msg,
    dword param,
    int x,
    int y){
  return 0;
} /* End of _libaroma_listitem_caption_message */

/*
 * Function    : _libaroma_listitem_caption_draw
 * Return Value: void
 * Descriptions: item draw routine
 */
void _libaroma_listitem_caption_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    LIBAROMA_CANVASP cv,
    word bgcolor,
    byte state){
  if (item->handler!=&_libaroma_listitem_caption_handler){
    return;
  }
  _LIBAROMA_LISTITEM_CAPTIONP mi = (_LIBAROMA_LISTITEM_CAPTIONP) item->internal;
  
  /*byte is_dark=libaroma_color_isdark(bgcolor);*/
  word textcolor;
  
  
  if (!(state&LIBAROMA_CTL_LIST_ITEM_DRAW_ADDONS)){
    int vpad = 6;
    textcolor= mi->textcolor;
    int icoh=libaroma_dp(vpad*2);
    int tw = cv->w - libaroma_dp(52);
    int tx = libaroma_dp(16);
    int ty = libaroma_dp(vpad*2);
    LIBAROMA_TEXT mtextp=NULL;
    
    /* prepare main text */
    int txtsh=0;
    int m_h=0;
    if (mi->text){
      mtextp = libaroma_text(
        mi->text,
        textcolor,
        tw,
        LIBAROMA_FONT(0,3)|
        LIBAROMA_TEXT_FIXED_INDENT|
        LIBAROMA_TEXT_FIXED_COLOR|
        LIBAROMA_TEXT_NOHR|LIBAROMA_TEXT_BOLD,
        137
      );
      m_h=libaroma_text_height(mtextp);
      ty+=m_h;
      txtsh+=m_h;
    }
    
    
    int etremsz=0;
    /* calculate whole height */
    ty+=libaroma_dp(vpad*2);
    int my_h = MAX(icoh,ty);
    
    int txt_sy=((my_h>>1)-((txtsh>>1)+libaroma_dp(2+etremsz)))+libaroma_dp(2);
    
    /* draw main text */
    if (mtextp){
      libaroma_text_draw(cv,mtextp,tx,txt_sy);
      txt_sy+=m_h;
      libaroma_text_free(mtextp);
    }
    
    if (my_h!=mi->h){
      mi->h=my_h;
      libaroma_ctl_list_item_setheight(
        ctl, item, my_h
      );
    }
  }
} /* End of _libaroma_listitem_caption_draw */

/*
 * Function    : _libaroma_listitem_caption_release_internal
 * Return Value: void
 * Descriptions: release internal data
 */
void _libaroma_listitem_caption_release_internal(
  _LIBAROMA_LISTITEM_CAPTIONP mi){
  if (mi->text){
    free(mi->text);
  }
  free(mi);
} /* End of _libaroma_listitem_caption_release_internal */

/*
 * Function    : _libaroma_listitem_caption_destroy
 * Return Value: void
 * Descriptions: destroy check item
 */
void _libaroma_listitem_caption_destroy(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item){
  if (item->handler!=&_libaroma_listitem_caption_handler){
    return;
  }
  _libaroma_listitem_caption_release_internal(
    (_LIBAROMA_LISTITEM_CAPTIONP) item->internal
  );
} /* End of _libaroma_listitem_caption_destroy */

/*
 * Function    : libaroma_listitem_caption_color
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: create check item custom text color
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_listitem_caption_color(
    LIBAROMA_CONTROLP ctl,
    int id,
    const char * text,
    word textcolor,
    int at_index){
  /* check valid list control */
  if (!libaroma_ctl_list_is_valid(ctl)){
    ALOGW("listitem_caption control is not valid list control");
    return 0;
  }
  _LIBAROMA_LISTITEM_CAPTIONP mi = (_LIBAROMA_LISTITEM_CAPTIONP)
    calloc(sizeof(_LIBAROMA_LISTITEM_CAPTION),1);
  if (!mi){
    ALOGW("listitem_caption cannot allocate internal data");
    return NULL;
  }
  int vpad = 6;
  int h = 0;
  mi->textcolor=textcolor;
  mi->text=(text?strdup(text):NULL);
  
  /* calculate height */
  int tw = ctl->w-libaroma_dp(52);
  int th = libaroma_dp(vpad*2);
  
  if (tw>0){
    if (mi->text){
      LIBAROMA_TEXT mtextp = libaroma_text(
        mi->text,
        0,
        tw,
        LIBAROMA_FONT(0,3)|
        LIBAROMA_TEXT_FIXED_INDENT|
        LIBAROMA_TEXT_FIXED_COLOR|
        LIBAROMA_TEXT_NOHR|LIBAROMA_TEXT_BOLD,
        137
      );
      th+=libaroma_text_height(mtextp);
      libaroma_text_free(mtextp);
    }
  }
  
  h = MAX(h,th)+libaroma_dp(vpad*2);
  mi->h=h;
  
  LIBAROMA_CTL_LIST_ITEMP item = libaroma_ctl_list_add_item_internal(
    ctl,
    id,
    h,0,
    (voidp) mi,
    &_libaroma_listitem_caption_handler,
    at_index
  );
  if (!item){
    ALOGW("listitem_caption add_item_internal failed");
    _libaroma_listitem_caption_release_internal(mi);
  }
  return item;
} /* End of libaroma_listitem_caption */

/*
 * Function    : libaroma_listitem_caption
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: create check item
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_listitem_caption(
    LIBAROMA_CONTROLP ctl,
    int id,
    const char * text,
    int at_index){
  return libaroma_listitem_caption_color(ctl,id,text,
    libaroma_colorget(ctl,NULL)->accent,at_index);
}

#endif /* __libaroma_listitem_caption_c__ */

