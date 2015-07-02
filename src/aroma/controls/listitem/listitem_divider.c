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
 * Filename    : listitem_divider.c
 * Description : item caption source
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 25/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_listitem_divider_c__
#define __libaroma_listitem_divider_c__
#include <aroma_internal.h>

#include "../../ui/ui_internal.h"

/* LIST ITEM HANDLER */
byte _libaroma_listitem_divider_message(
  LIBAROMA_CONTROLP, LIBAROMA_CTL_LIST_ITEMP,byte,dword,int,int);
void _libaroma_listitem_divider_draw(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP,LIBAROMA_CANVASP,word,byte);
void _libaroma_listitem_divider_destroy(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP);
static LIBAROMA_CTL_LIST_ITEM_HANDLER _libaroma_listitem_divider_handler =
{
  message:_libaroma_listitem_divider_message,
  draw:_libaroma_listitem_divider_draw,
  destroy:_libaroma_listitem_divider_destroy
};

/*
 * Function    : libaroma_listitem_isdivider
 * Return Value: byte
 * Descriptions: is list item divider
 */
byte libaroma_listitem_isdivider(LIBAROMA_CTL_LIST_ITEMP item){
  if (!item){
    return 0;
  }
  if (item->handler!=&_libaroma_listitem_divider_handler){
    return 0;
  }
  return 1;
} /* End of libaroma_listitem_iscaption */


/*
 * Function    : _libaroma_listitem_divider_message
 * Return Value: byte
 * Descriptions: message handler
 */
byte _libaroma_listitem_divider_message(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    byte msg,
    dword param,
    int x,
    int y){
  return 0;
} /* End of _libaroma_listitem_divider_message */

/*
 * Function    : _libaroma_listitem_divider_draw
 * Return Value: void
 * Descriptions: item draw routine
 */
void _libaroma_listitem_divider_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    LIBAROMA_CANVASP cv,
    word bgcolor,
    byte state){
  if (item->handler!=&_libaroma_listitem_divider_handler){
    return;
  }
  
  word flags=item->flags;
  byte is_dark=libaroma_color_isdark(bgcolor);
  word vcolor=is_dark?RGB(555555):RGB(dddddd);
  if (!(state&LIBAROMA_CTL_LIST_ITEM_DRAW_ADDONS)){
    if (flags&LIBAROMA_LISTITEM_DIVIDER_SUBSCREEN){
      vcolor = libaroma_alpha(vcolor,bgcolor,30);
      libaroma_draw_rect(
        cv,
        0, 0,
        cv->w, cv->h,
        vcolor,
        0xff
      );
      libaroma_draw_rect(
        cv, 0, cv->h-libaroma_dp(1), cv->w, libaroma_dp(1),
        0, 20
      );
      libaroma_gradient(cv,
        0,0,
        cv->w, libaroma_dp(4),
        libaroma_alpha(vcolor, 0, 40), vcolor,
        0, 0
      );
    }
    else{
      int xpos=0;
      if (flags&LIBAROMA_LISTITEM_SEPARATOR_TEXTALIGN){
        xpos=libaroma_dp(72);
      }
      libaroma_draw_rect(
        cv,
        xpos,
        (cv->h>>1)-(libaroma_dp(1)>>1),
        cv->w-xpos, libaroma_dp(1),
        vcolor,
        0xff
      );
    }
  }
} /* End of _libaroma_listitem_divider_draw */

/*
 * Function    : _libaroma_listitem_divider_destroy
 * Return Value: void
 * Descriptions: destroy check item
 */
void _libaroma_listitem_divider_destroy(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item){
  return;
} /* End of _libaroma_listitem_divider_destroy */

/*
 * Function    : libaroma_listitem_divider
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: create divider item
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_listitem_divider(
    LIBAROMA_CONTROLP ctl,
    int id,
    word flags,
    int at_index){
  /* check valid list control */
  if (!libaroma_ctl_list_is_valid(ctl)){
    ALOGW("listitem_divider control is not valid list control");
    return 0;
  }
  flags&=~LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH;
  LIBAROMA_CTL_LIST_ITEMP item = libaroma_ctl_list_add_item_internal(
    ctl,
    id,
    libaroma_dp(8),
    flags,
    NULL,
    &_libaroma_listitem_divider_handler,
    at_index
  );
  if (!item){
    ALOGW("listitem_divider add_item_internal failed");
  }
  return item;
} /* End of libaroma_listitem_divider */


#endif /* __libaroma_listitem_divider_c__ */

