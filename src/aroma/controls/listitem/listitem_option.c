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
 * Filename    : listitem_option.c
 * Description : list item option
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 07/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_listitem_option_c__
#define __libaroma_listitem_option_c__
#include <aroma_internal.h>
#include "../../ui/ui_internal.h"

/* LIST ITEM HANDLER */
byte _libaroma_listitem_option_message(
  LIBAROMA_CONTROLP, LIBAROMA_CTL_LIST_ITEMP,byte,dword,int,int);
void _libaroma_listitem_option_draw(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP,LIBAROMA_CANVASP,word,byte);
void _libaroma_listitem_option_destroy(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP);
static LIBAROMA_CTL_LIST_ITEM_HANDLER _libaroma_listitem_option_handler =
{
  message:_libaroma_listitem_option_message,
  draw:_libaroma_listitem_option_draw,
  destroy:_libaroma_listitem_option_destroy
};

/* LIST ITEM INTERNAL DATA */
typedef struct{
  byte selected;
  byte onchangeani;
  char * main_text;
  char * extra_text;
  LIBAROMA_CANVASP icon;
  int h;
} _LIBAROMA_LISTITEM_OPTION, * _LIBAROMA_LISTITEM_OPTIONP;

/*
 * Function    : _libaroma_listitem_option_message
 * Return Value: byte
 * Descriptions: message handler
 */
byte _libaroma_listitem_option_message(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    byte msg,
    dword param,
    int x,
    int y){
  if (item->handler!=&_libaroma_listitem_option_handler){
    return 0;
  }
  _LIBAROMA_LISTITEM_OPTIONP mi = 
    (_LIBAROMA_LISTITEM_OPTIONP) item->internal;
  switch (msg){
    case LIBAROMA_CTL_LIST_ITEM_MSG_THREAD:
      {
        return 0;
      }
      break;
    case LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_DOWN:
      {
        //printf("list item #%i -> down\n",item->id);
        mi->onchangeani=0;
        return LIBAROMA_CTL_LIST_ITEM_MSGRET_HAVE_ADDONS_DRAW;
      }
      break;
    case LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_HOLDED:
      {
        mi->onchangeani=0;
        //printf("list item #%i -> holded\n",item->id);
      }
      break;
    case LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_UP:
      {
        mi->onchangeani=0;
        if (param!=LIBAROMA_CTL_LIST_ITEM_MSGPARAM_HOLDED){
          mi->onchangeani=1;
          if (mi->selected){
            mi->selected=0;
          }
          else{
            mi->selected=1;
          }
          //printf("list item #%i -> up/change state: %i\n",item->id,mi->selected);
        }
        else{
          //printf("list item #%i -> up - already holded\n",item->id);
        }
        return 0;
      }
      break;
    case LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_CANCEL:
      {
        //printf("list item #%i -> touch canceled by scroll\n",item->id);
        mi->onchangeani=0;
        return 0;
      }
      break;
  }
  return 0;
} /* End of _libaroma_listitem_option_message */

/*
 * Function    : _libaroma_listitem_option_draw
 * Return Value: void
 * Descriptions: item draw routine
 */
void _libaroma_listitem_option_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    LIBAROMA_CANVASP cv,
    word bgcolor,
    byte state){
  if (item->handler!=&_libaroma_listitem_option_handler){
    return;
  }
  _LIBAROMA_LISTITEM_OPTIONP mi = (_LIBAROMA_LISTITEM_OPTIONP) item->internal;
  
  byte is_dark=libaroma_color_isdark(bgcolor);
  word textcolor, graycolor;
  word flags=item->flags;
  
  if (!(state&LIBAROMA_CTL_LIST_ITEM_DRAW_ADDONS)){
    int vpad = 8;
    int seph = (flags&LIBAROMA_LISTITEM_WITH_SEPARATOR)?1:0;
    byte small_icon = (flags&LIBAROMA_LISTITEM_OPTION_SMALL_ICON)?1:0;
    
    if (state&LIBAROMA_CTL_LIST_ITEM_DRAW_PUSHED){
      word selcolor = is_dark?RGB(335577):RGB(aaacad);
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
    int tw = cv->w - libaroma_dp(88);
    int tx = libaroma_dp(16);
    int dpsz=libaroma_dp(small_icon?24:40);
    if (mi->icon){
      icoh+=dpsz;
    }
    
    if ((mi->icon)||(item->flags&LIBAROMA_LISTITEM_OPTION_INDENT_NOICON)){
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
      mtextp = libaroma_text(
        mi->main_text,
        textcolor,
        tw,
        LIBAROMA_FONT(0,4)|
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
      if ((flags&LIBAROMA_LISTITEM_OPTION_FREE_ICON)||
        (!(flags&LIBAROMA_LISTITEM_OPTION_SHARED_ICON))){
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
  
  /* addons draw */
  if (!(state&LIBAROMA_CTL_LIST_ITEM_DRAW_CACHE)){
    /*
    float poly[8]={
      50, 50,
      100, 0,
      150, 50,
      100, 100
    };
    libaroma_draw_polygon(
      cv,
      poly,
      4,
      RGB(446688),
      0xcc,
      0
    );
    */
    
    byte is_switch = (flags&LIBAROMA_LISTITEM_OPTION_SWITCH)?1:0;
    float relstate=1;
    if ((item->state!=NULL)&&(mi->onchangeani)){
      if (item->state->ripple.touched==2){
        relstate=0;
      }
      else if (libaroma_ripple_current(&item->state->ripple,release_start)){
        float curelstate=libaroma_ripple_current(
          &item->state->ripple,release_state
        );
        if (curelstate<0.25){
          relstate=0;
        }
        else if (curelstate>0.75){
          relstate=1;
        }
        else{
          relstate=MAX(MIN((curelstate-0.25) * 2,1),0);
          relstate=libaroma_cubic_bezier_swiftout(relstate);
          relstate=MAX(MIN(1,relstate),0);
        }
      }
    }
    
    int xpos = cv->w - libaroma_dp(36);
    int ypos = cv->h>>1;
    if (is_switch){
      word h_color_rest   = RGB(ECECEC);
      word h_color_active = RGB(009385);
      word b_color_rest   = RGB(B2B2B2);
      word b_color_active = RGB(B2DFDB);
      
      word bc0=mi->selected?b_color_rest:b_color_active;
      word bc1=mi->selected?b_color_active:b_color_rest;
      word hc0=mi->selected?h_color_rest:h_color_active;
      word hc1=mi->selected?h_color_active:h_color_rest;
        
      word bc = libaroma_alpha(bc0,bc1,relstate*0xff);
      word hc = libaroma_alpha(hc0,hc1,relstate*0xff);
      
      /* draw background */
      int b_width   = libaroma_dp(34);
      int b_height  = libaroma_dp(14);
      
      float selrelstate = mi->selected?relstate:1-relstate;
      int base_x = xpos-(b_width>>1);
      int h_sz = libaroma_dp(20);
      int base_w = b_width - h_sz;
      int h_draw_x = base_x + round(base_w*selrelstate);
      int h_draw_y = ypos-(h_sz>>1);
      
      libaroma_gradient_ex1(cv,
        xpos-(b_width>>1),
        ypos-(b_height>>1),
        b_width,
        b_height,
        bc,bc,
        (b_height>>1),0x1111,
        0xff,0xff,
        0
      );
      
      int rsz = libaroma_dp(1);
      
      /* shadow */
      byte new_shadow = 1;
      if (item->state!=NULL){
        if (item->state->cache_client!=NULL){
          /* shadow already cached */
          libaroma_draw_opacity(cv,
            item->state->cache_client,
            h_draw_x-rsz,
            h_draw_y,3,0x30
          );
          new_shadow=0;
        }
      }
      if (new_shadow){
        LIBAROMA_CANVASP bmask = libaroma_canvas_ex(h_sz,h_sz,1);
        libaroma_canvas_setcolor(bmask,0,0);
        libaroma_gradient(bmask,0,0,h_sz,h_sz,0,0,h_sz>>1,0x1111);
        LIBAROMA_CANVASP scv = libaroma_blur_ex(bmask,rsz,1,0);
        libaroma_canvas_free(bmask);
        
        libaroma_draw_opacity(cv,scv,h_draw_x-rsz,h_draw_y,3,0x30);
        if (item->state!=NULL){
          /* will automatically freed by list control */
          item->state->cache_client=scv;
        }
        else{
          libaroma_canvas_free(scv);
        }
      }
      
      /* handle */
      libaroma_gradient_ex1(cv,
        h_draw_x,
        h_draw_y,
        h_sz,
        h_sz,
        hc,hc,
        (h_sz>>1),0x1111,
        0xff,0xff,
        0
      );
    }
    else{
      int rsz  = libaroma_dp(18);
      
      /* init cache */
      byte new_cache = 0;
      LIBAROMA_CANVASP checkcache = NULL;
      if ((mi->selected)||(item->state!=NULL)){
        new_cache=1;
        if (item->state!=NULL){
          if (item->state->cache_client!=NULL){
            checkcache = item->state->cache_client;
            new_cache=0;
          }
        }
        if (new_cache){
          checkcache = libaroma_canvas_ex(rsz,rsz,1);
          memset(checkcache->alpha,0,rsz*rsz);
  
          libaroma_gradient_ex1(checkcache,
            0,0,rsz,rsz,RGB(009587),RGB(009587),libaroma_dp(2),0x1111,
            0xff,0xff,2);
          
          /* tick */
          LIBAROMA_PATHP path=libaroma_path(12*rsz>>6, 27*rsz>>6);
          libaroma_path_add(path, 25*rsz>>6, 40*rsz>>6);
          libaroma_path_add(path, 52*rsz>>6, 13*rsz>>6);
          libaroma_path_add(path, 57*rsz>>6, 18*rsz>>6);
          libaroma_path_add(path, 25*rsz>>6, 50*rsz>>6);
          libaroma_path_add(path,  7*rsz>>6, 32*rsz>>6);
          libaroma_path_draw(checkcache, path, 0, 0, 2, 0.5);
          libaroma_path_free(path);
          
          if (item->state!=NULL){
            /* will automatically freed by list control */
            item->state->cache_client=checkcache;
            new_cache=0;
          }
        }
      }
      
      if (relstate<1){
        float rrelstate = 1-relstate;
        int sel_sz = rsz * (mi->selected?relstate:rrelstate);
        int hal_sz = rsz * (mi->selected?rrelstate:relstate);
        if (hal_sz>0){
          libaroma_gradient_ex1(cv,
            xpos-(hal_sz>>1),
            ypos-(hal_sz>>1),
            hal_sz,
            hal_sz,
            RGB(cccccc),RGB(cccccc),
            libaroma_dp(2),0x1111,
            0xff,0xff,
            0
          );
          int irsz=hal_sz-libaroma_dp(2);
          if (irsz>0){
            libaroma_gradient_ex1(cv,
              xpos-(irsz>>1),
              ypos-(irsz>>1),
              irsz,irsz,
              bgcolor,bgcolor,
              libaroma_dp(1),0x1111,
              0xff,0xff,
              0
            );
          }
        }
        if (sel_sz>0){
          libaroma_draw_scale_nearest(
            cv, checkcache,
            xpos-(sel_sz>>1),
            ypos-(sel_sz>>1),
            sel_sz, sel_sz,
            0, 0, rsz, rsz
          );
        }
      }
      else if (mi->selected){
        libaroma_draw(
          cv, checkcache,
          xpos-(rsz>>1),
          ypos-(rsz>>1),
          1
        );
      }
      else{
        libaroma_gradient_ex1(cv,
          xpos-(rsz>>1),
          ypos-(rsz>>1),
          rsz,
          rsz,
          RGB(cccccc),RGB(cccccc),
          libaroma_dp(2),0x1111,
          0xff,0xff,
          0
        );
        int irsz=libaroma_dp(16);
        libaroma_gradient_ex1(cv,
          xpos-(irsz>>1),
          ypos-(irsz>>1),
          irsz,irsz,
          bgcolor,bgcolor,
          libaroma_dp(1),0x1111,
          0xff,0xff,
          0
        );
      }
      
      if (new_cache){
        libaroma_canvas_free(checkcache);
      }
      
    }
    
  }
  
} /* End of _libaroma_listitem_option_draw */

/*
 * Function    : _libaroma_listitem_option_release_internal
 * Return Value: void
 * Descriptions: release internal data
 */
void _libaroma_listitem_option_release_internal(_LIBAROMA_LISTITEM_OPTIONP mi,
  word flags){
  if (mi->main_text){
    free(mi->main_text);
  }
  if (mi->extra_text){
    free(mi->extra_text);
  }
  if (mi->icon){
    if ((flags&LIBAROMA_LISTITEM_OPTION_FREE_ICON)||
      (!(flags&LIBAROMA_LISTITEM_OPTION_SHARED_ICON))){
      libaroma_canvas_free(mi->icon);
    }
  }
  free(mi);
} /* End of _libaroma_listitem_option_release_internal */

/*
 * Function    : _libaroma_listitem_option_destroy
 * Return Value: void
 * Descriptions: destroy option item
 */
void _libaroma_listitem_option_destroy(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item){
  if (item->handler!=&_libaroma_listitem_option_handler){
    return;
  }
  _libaroma_listitem_option_release_internal(
    (_LIBAROMA_LISTITEM_OPTIONP) item->internal, item->flags
  );
} /* End of _libaroma_listitem_option_destroy */

/*
 * Function    : libaroma_listitem_option
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: create option item
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_listitem_option(
    LIBAROMA_CONTROLP ctl,
    int id,
    byte selected,
    const char * main_text,
    const char * extra_text,
    LIBAROMA_CANVASP icon,
    word flags,
    int at_index){
  /* check valid list control */
  if (!libaroma_ctl_list_is_valid(ctl)){
    ALOGW("listitem_option control is not valid list control");
    return 0;
  }
  _LIBAROMA_LISTITEM_OPTIONP mi = (_LIBAROMA_LISTITEM_OPTIONP)
    calloc(sizeof(_LIBAROMA_LISTITEM_OPTION),1);
  if (!mi){
    ALOGW("listitem_option cannot allocate internal data");
    return NULL;
  }
  mi->selected=0;
  mi->icon=NULL;
  
  int vpad = 8;
  int seph = (flags&LIBAROMA_LISTITEM_WITH_SEPARATOR)?1:0;
  
  /* init icon */
  int h = 0;
  if (icon){
    int dpsz=libaroma_dp((flags&LIBAROMA_LISTITEM_OPTION_SMALL_ICON)?24:40);
    if ((flags&LIBAROMA_LISTITEM_OPTION_FREE_ICON)||
      (!(flags&LIBAROMA_LISTITEM_OPTION_SHARED_ICON))){
      mi->icon=libaroma_canvas_ex(dpsz,dpsz,1);
      if (mi->icon){
        flags|=LIBAROMA_LISTITEM_OPTION_INDENT_NOICON;
        memset(mi->icon->alpha,0,mi->icon->s);
        libaroma_draw_scale_smooth(
          mi->icon, icon,
          0, 0, dpsz, dpsz,
          0, 0, icon->w, icon->h
        );
      }
      if (flags&LIBAROMA_LISTITEM_OPTION_FREE_ICON){
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
  int tw = ctl->w-libaroma_dp(88);
  if ((mi->icon)||(flags&LIBAROMA_LISTITEM_OPTION_INDENT_NOICON)){
    tw-=libaroma_dp(56);
  }
  int th = libaroma_dp(vpad*2);
  if (mi->main_text){
    LIBAROMA_TEXT mtextp = libaroma_text(
      mi->main_text,
      0,
      tw,
      LIBAROMA_FONT(0,4)|
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
  
  
  
  h = MAX(h,th)+libaroma_dp(vpad*2+seph);
  mi->h=h;
  
  LIBAROMA_CTL_LIST_ITEMP item = libaroma_ctl_list_add_item_internal(
    ctl,
    id,
    h,
    LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH|flags,
    (voidp) mi,
    &_libaroma_listitem_option_handler,
    at_index
  );
  if (!item){
    ALOGW("listitem_option add_item_internal failed");
    _libaroma_listitem_option_release_internal(mi,flags);
  }
  return item;
} /* End of libaroma_listitem_option */


#endif /* __libaroma_listitem_option_c__ */
