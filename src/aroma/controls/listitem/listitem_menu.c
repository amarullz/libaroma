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
 * Filename    : listitem_menu.c
 * Description : list item menu source
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 25/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_listitem_menu_c__
#define __libaroma_listitem_menu_c__

#include <aroma_internal.h>
#include "../../ui/ui_internal.h"

/* LIST ITEM HANDLER */
byte _libaroma_listitem_menu_message(
  LIBAROMA_CONTROLP, LIBAROMA_CTL_LIST_ITEMP,byte,dword,int,int);
void _libaroma_listitem_menu_draw(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP,LIBAROMA_CANVASP,word,byte);
void _libaroma_listitem_menu_destroy(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP);
static LIBAROMA_CTL_LIST_ITEM_HANDLER _libaroma_listitem_menu_handler =
{
  message:_libaroma_listitem_menu_message,
  draw:_libaroma_listitem_menu_draw,
  destroy:_libaroma_listitem_menu_destroy
};

/* LIST ITEM INTERNAL DATA */
typedef struct{
  char * main_text;
  char * extra_text;
  LIBAROMA_CANVASP icon;
  int h;
} _LIBAROMA_LISTITEM_MENU, * _LIBAROMA_LISTITEM_MENUP;

/*
 * Function    : _libaroma_listitem_menu_message
 * Return Value: byte
 * Descriptions: message handler
 */
byte _libaroma_listitem_menu_message(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    byte msg,
    dword param,
    int x,
    int y){
  if (item->handler!=&_libaroma_listitem_menu_handler){
    return 0;
  }
  /*
  _LIBAROMA_LISTITEM_MENUP mi = 
    (_LIBAROMA_LISTITEM_MENUP) item->internal;*/
  switch (msg){
    case LIBAROMA_CTL_LIST_ITEM_MSG_THREAD:
      {
        return 0;
      }
      break;
    case LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_DOWN:
      {
        return 0;
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
        return 0;
      }
      break;
    case LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_CANCEL:
      {
        return 0;
      }
      break;
  }
  return 0;
} /* End of _libaroma_listitem_menu_message */

/*
 * Function    : _libaroma_listitem_menu_draw
 * Return Value: void
 * Descriptions: item draw routine
 */
void _libaroma_listitem_menu_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    LIBAROMA_CANVASP cv,
    word bgcolor,
    byte state){
  if (item->handler!=&_libaroma_listitem_menu_handler){
    return;
  }
  _LIBAROMA_LISTITEM_MENUP mi = (_LIBAROMA_LISTITEM_MENUP) item->internal;
  
  byte is_dark=libaroma_color_isdark(bgcolor);
  word textcolor, graycolor;
  word flags=item->flags;
  
  if (!(state&LIBAROMA_CTL_LIST_ITEM_DRAW_ADDONS)){
    int vpad = (flags&LIBAROMA_LISTITEM_MENU_SMALL)?7:8;
    int seph = (flags&LIBAROMA_LISTITEM_WITH_SEPARATOR)?1:0;
    byte small_icon = (flags&LIBAROMA_LISTITEM_MENU_SMALL_ICON)?1:0;
    
    if (state&LIBAROMA_CTL_LIST_ITEM_DRAW_PUSHED){
      word selcolor = is_dark?RGB(444444):RGB(bbbbbb);
      libaroma_draw_rect(
        cv,
        0,0,
        cv->w,
        cv->h-libaroma_dp(1),
        selcolor,0xff
      );
      textcolor= is_dark?RGB(ffffff):RGB(000000);
      graycolor= is_dark?RGB(888888):RGB(777777);
    }
    else{
      textcolor= is_dark?RGB(ffffff):RGB(000000);
      graycolor= is_dark?RGB(888888):RGB(777777);
    }
    
    if ((item->next)&&(flags&LIBAROMA_LISTITEM_WITH_SEPARATOR)){
      if (!libaroma_listitem_nonitem(item->next)){
        int sepxp=0;
        if (flags&LIBAROMA_LISTITEM_SEPARATOR_TEXTALIGN){
          sepxp=libaroma_dp(72);
        }
        libaroma_draw_rect(
          cv,
          sepxp,
          cv->h-libaroma_dp(1),
          cv->w-sepxp,
          libaroma_dp(1),
          is_dark?RGB(555555):RGB(dddddd),
          0xff
        );
      }
    }
    
    int icoh=libaroma_dp(vpad*2+seph);
    int tw = cv->w - libaroma_dp(52);
    int tx = libaroma_dp(16);
    int dpsz=libaroma_dp(small_icon?24:40);
    if (mi->icon){
      icoh+=dpsz;
    }
    
    if ((mi->icon)||(item->flags&LIBAROMA_LISTITEM_MENU_INDENT_NOICON)){
      tw-=libaroma_dp(56);
      tx+=libaroma_dp(56);
    }
    
    int ty = libaroma_dp(vpad*2);
    LIBAROMA_TEXT mtextp=NULL;
    LIBAROMA_TEXT etextp=NULL;
    
    /* prepare main text */
    int txtsh=0;
    int m_h=0;
    if (mi->main_text){
      byte fsz=(flags&LIBAROMA_LISTITEM_MENU_SMALL)?3:4;
      mtextp = libaroma_text(
        mi->main_text,
        textcolor,
        tw,
        LIBAROMA_FONT(0,fsz)|
        LIBAROMA_TEXT_FIXED_INDENT|
        LIBAROMA_TEXT_FIXED_COLOR|
        LIBAROMA_TEXT_NOHR,
        137
      );
      m_h=libaroma_text_height(mtextp);
      ty+=m_h;
      txtsh+=m_h;
    }
    
    /* prepare extra text */
    int e_h = 0;
    int etremsz=0;
    if (mi->extra_text){
      etextp = libaroma_text(
        mi->extra_text,
        graycolor,
        tw,
        LIBAROMA_FONT(0,3)|
        LIBAROMA_TEXT_FIXED_INDENT|
        LIBAROMA_TEXT_FIXED_COLOR|
        LIBAROMA_TEXT_NOHR,
        143
      );
      e_h=libaroma_text_height(etextp)-(libaroma_font_size_px(3) / 3.5);
      ty+=e_h;
      txtsh+=e_h;
      etremsz=2;
    }
    
    /* calculate whole height */
    ty+=libaroma_dp(vpad*2+seph);
    int my_h = MAX(icoh,ty);
    
    /* draw icon */
    if (mi->icon){
      if ((flags&LIBAROMA_LISTITEM_MENU_FREE_ICON)||
        (!(flags&LIBAROMA_LISTITEM_MENU_SHARED_ICON))){
        libaroma_draw(
          cv,
          mi->icon,
          libaroma_dp(16),
          (my_h>>1) - (dpsz>>1),
          1
        );
      }
      else{
        libaroma_draw_scale_smooth(
          cv, mi->icon,
          libaroma_dp(16),
          (my_h>>1) - (dpsz>>1),
          dpsz,
          dpsz,
          0, 0, mi->icon->w, mi->icon->h
        );
      }
    }
    
    int txt_sy=(my_h>>1)-((txtsh>>1)+libaroma_dp(2+etremsz+seph));
    
    /* draw main text */
    if (mtextp){
      libaroma_text_draw(cv,mtextp,tx,txt_sy);
      txt_sy+=m_h;
      libaroma_text_free(mtextp);
    }
    
    /* draw extra text */
    if (etextp){
      libaroma_text_draw(cv,etextp,tx,txt_sy);
      libaroma_text_free(etextp);
    }
    
    
    if (my_h!=mi->h){
      mi->h=my_h;
      libaroma_ctl_list_item_setheight(
        ctl, item, my_h
      );
    }
  }
} /* End of _libaroma_listitem_menu_draw */

/*
 * Function    : _libaroma_listitem_menu_release_internal
 * Return Value: void
 * Descriptions: release internal data
 */
void _libaroma_listitem_menu_release_internal(_LIBAROMA_LISTITEM_MENUP mi,
  word flags){
  if (mi->main_text){
    free(mi->main_text);
  }
  if (mi->extra_text){
    free(mi->extra_text);
  }
  if (mi->icon){
    if ((flags&LIBAROMA_LISTITEM_MENU_FREE_ICON)||
      (!(flags&LIBAROMA_LISTITEM_MENU_SHARED_ICON))){
      libaroma_canvas_free(mi->icon);
    }
  }
  free(mi);
} /* End of _libaroma_listitem_menu_release_internal */

/*
 * Function    : _libaroma_listitem_menu_destroy
 * Return Value: void
 * Descriptions: destroy check item
 */
void _libaroma_listitem_menu_destroy(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item){
  if (item->handler!=&_libaroma_listitem_menu_handler){
    return;
  }
  _libaroma_listitem_menu_release_internal(
    (_LIBAROMA_LISTITEM_MENUP) item->internal, item->flags
  );
} /* End of _libaroma_listitem_menu_destroy */

/*
 * Function    : libaroma_listitem_menu
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: create check item
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_listitem_menu(
    LIBAROMA_CONTROLP ctl,
    int id,
    const char * main_text,
    const char * extra_text,
    LIBAROMA_CANVASP icon,
    word flags,
    int at_index){
  /* check valid list control */
  if (!libaroma_ctl_list_is_valid(ctl)){
    ALOGW("listitem_menu control is not valid list control");
    return 0;
  }
  _LIBAROMA_LISTITEM_MENUP mi = (_LIBAROMA_LISTITEM_MENUP)
    calloc(sizeof(_LIBAROMA_LISTITEM_MENU),1);
  if (!mi){
    ALOGW("listitem_menu cannot allocate internal data");
    return NULL;
  }
  mi->icon=NULL;
  
  int vpad = (flags&LIBAROMA_LISTITEM_MENU_SMALL)?7:8;
  int seph = (flags&LIBAROMA_LISTITEM_WITH_SEPARATOR)?1:0;
  
  /* init icon */
  int h = 0;
  if (icon){
    int dpsz=libaroma_dp((flags&LIBAROMA_LISTITEM_MENU_SMALL_ICON)?24:40);
    if ((flags&LIBAROMA_LISTITEM_MENU_FREE_ICON)||
      (!(flags&LIBAROMA_LISTITEM_MENU_SHARED_ICON))){
      mi->icon=libaroma_canvas_ex(dpsz,dpsz,1);
      if (mi->icon){
        flags|=LIBAROMA_LISTITEM_MENU_INDENT_NOICON;
        memset(mi->icon->alpha,0,mi->icon->s);
        libaroma_draw_scale_smooth(
          mi->icon, icon,
          0, 0, dpsz, dpsz,
          0, 0, icon->w, icon->h
        );
      }
      if (flags&LIBAROMA_LISTITEM_MENU_FREE_ICON){
        libaroma_canvas_free(icon);
      }
    }
    else{
      mi->icon = icon;
    }
    h=dpsz;
  }
  mi->main_text=(main_text?strdup(main_text):NULL);
  mi->extra_text=(extra_text?strdup(extra_text):NULL);
  
  /* calculate height */
  /*
  int th = (mi->main_text?libaroma_font_size_px(4):0)*1.2;
  th += (mi->extra_text?libaroma_font_size_px(3):0)*1.2;
  th += libaroma_dp(4);
  */
  int tw = ctl->w-libaroma_dp(52);
  if ((mi->icon)||(flags&LIBAROMA_LISTITEM_MENU_INDENT_NOICON)){
    tw-=libaroma_dp(56);
  }
  int th = libaroma_dp(vpad*2);
  
  if (tw>0){
    if (mi->main_text){
      byte fsz=(flags&LIBAROMA_LISTITEM_MENU_SMALL)?3:4;
      LIBAROMA_TEXT mtextp = libaroma_text(
        mi->main_text,
        0,
        tw,
        LIBAROMA_FONT(0,fsz)|
        LIBAROMA_TEXT_FIXED_INDENT|
        LIBAROMA_TEXT_FIXED_COLOR|
        LIBAROMA_TEXT_NOHR,
        137
      );
      th+=libaroma_text_height(mtextp);
      libaroma_text_free(mtextp);
    }
    
    /* prepare extra text */
    if (mi->extra_text){
      LIBAROMA_TEXT etextp = libaroma_text(
        mi->extra_text,
        0,
        tw,
        LIBAROMA_FONT(0,3)|
        LIBAROMA_TEXT_FIXED_INDENT|
        LIBAROMA_TEXT_FIXED_COLOR|
        LIBAROMA_TEXT_NOHR,
        143
      );
      th+=libaroma_text_height(etextp);
      th-=(libaroma_font_size_px(3) / 3.5);
      libaroma_text_free(etextp);
    }
  }
  
  h = MAX(h,th)+libaroma_dp(vpad*2+seph);
  mi->h=h;
  
  LIBAROMA_CTL_LIST_ITEMP item = libaroma_ctl_list_add_item_internal(
    ctl,
    id,
    h,
    LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH|flags,
    (voidp) mi,
    &_libaroma_listitem_menu_handler,
    at_index
  );
  if (!item){
    ALOGW("listitem_menu add_item_internal failed");
    _libaroma_listitem_menu_release_internal(mi,flags);
  }
  return item;
} /* End of libaroma_listitem_menu */

#endif /* __libaroma_listitem_menu_c__ */
