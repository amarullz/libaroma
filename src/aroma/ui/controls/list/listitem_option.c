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
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_listitem_option_c__
#define __libaroma_listitem_option_c__

typedef struct{
  byte selected;
  byte initialized;
  char * main_text;
  char * extra_text;
  LIBAROMA_TEXT tmain;
  LIBAROMA_TEXT textra;
  LIBAROMA_CANVASP icon;
  int h;
  
  /* metrics */
  int tx;
  int tw;
  int my;
  int ey;
  
} _LIBAROMA_LISTITEM_OPTION, * _LIBAROMA_LISTITEM_OPTIONP;

/*
 * Function    : _libaroma_listitem_option_init
 * Return Value: int
 * Descriptions: init ready to draw item
 */
int _libaroma_listitem_option_init(
  _LIBAROMA_LISTITEM_OPTIONP mi, int width, byte flags, word bgcolor){
  /* init control elements */
  if (!mi->initialized){
    byte is_dark = libaroma_color_isdark(bgcolor);
    int dp16=libaroma_dp(16);
    byte indent_noicon =
      (flags&LIBAROMA_LISTITEM_OPTION_INDENT_NOICON)?1:0;
    /* material design metrics */
    mi->tx = dp16;
    mi->tw = width - mi->tx * 2;
    int ovrl_h = 0;
    if (mi->icon){
      ovrl_h = mi->icon->h;
    }
    int txt_h = 0;
    if (indent_noicon){
      int icon_indent = libaroma_dp(56);
      mi->tx+=icon_indent;
      mi->tw-=icon_indent;
    }
    /* free if any */
    if (mi->tmain){
      libaroma_text_free(mi->tmain);
    }
    if (mi->textra){
      libaroma_text_free(mi->textra);
    }
    mi->my = dp16;
    mi->ey = mi->my;
    /* init main text */
    if (mi->main_text){
      mi->tmain = libaroma_text(
        mi->main_text,
        is_dark?RGB(ffffff):RGB(000000),
        mi->tw,
        LIBAROMA_FONT(0,4)|
        LIBAROMA_TEXT_LEFT|
        LIBAROMA_TEXT_FIXED_INDENT|
        LIBAROMA_TEXT_FIXED_COLOR|
        LIBAROMA_TEXT_NOHR,
        120
      );
      if (mi->tmain){
        int mth=libaroma_text_height(mi->tmain);
        txt_h+=mth;
        mi->ey+=mth;
      }
      free(mi->main_text);
      mi->main_text=NULL;
    }
    /* init extra text */
    if (mi->extra_text){
      mi->textra = libaroma_text(
        mi->extra_text,
        is_dark?RGB(cccccc):RGB(555555),
        mi->tw,
        LIBAROMA_FONT(0,3)|
        LIBAROMA_TEXT_LEFT|
        LIBAROMA_TEXT_FIXED_INDENT|
        LIBAROMA_TEXT_FIXED_COLOR|
        LIBAROMA_TEXT_NOHR,
        120
      );
      if (mi->textra){
        int mth=libaroma_text_height(mi->textra);
        txt_h+=mth;
      }
      free(mi->extra_text);
      mi->extra_text=NULL;
    }
    mi->initialized = 1;
    mi->h=MAX(ovrl_h,txt_h) + libaroma_dp(32);
    return mi->h;
  }
  return mi->h;
} /* End of _libaroma_listitem_option_init */

/*
 * Function    : _libaroma_listitem_option_message
 * Return Value: byte
 * Descriptions: message handler
 */
byte _libaroma_listitem_option_message(
    LIBAROMA_CTL_LIST_ITEMP item, byte msg, dword param, int x, int y){
  if (item->signature!=LIBAROMA_LISTITEM_OPTION_SIG){
    return 0;
  }
  _LIBAROMA_LISTITEM_OPTIONP mi = (_LIBAROMA_LISTITEM_OPTIONP) item->internal;
  
  if (msg==LIBAROMA_CTL_LIST_ITEM_MSG_ACTIVATED){
    /* init items */
    int h =_libaroma_listitem_option_init(
      mi,item->ctl->w,item->flags,
      libaroma_ctl_scroll_get_bg_color(item->ctl)
    );
    if ((h!=-1)&&(h!=item->h)){
      /* request update height */
      libaroma_ctl_list_item_setheight(item,h);
    }
  }
  
  return 0;
} /* End of _libaroma_listitem_option_message */

/*
 * Function    : _libaroma_listitem_option_draw
 * Return Value: void
 * Descriptions: item draw routine
 */
void _libaroma_listitem_option_draw(
    LIBAROMA_CTL_LIST_ITEMP item,
    LIBAROMA_CANVASP cv,
    word bgcolor){
  if (item->signature!=LIBAROMA_LISTITEM_OPTION_SIG){
    return;
  }
  _LIBAROMA_LISTITEM_OPTIONP mi = (_LIBAROMA_LISTITEM_OPTIONP) item->internal;
  if (!mi->initialized){
    _libaroma_listitem_option_init(
      mi,item->ctl->w,item->flags,
      bgcolor
    );
  }
  
  int dp16 = libaroma_dp(16);
  if (mi->icon){
    libaroma_draw(
      cv, mi->icon, dp16, dp16, 1
    );
  }
  if (mi->tmain){
    libaroma_text_draw(cv,mi->tmain,mi->tx,mi->my);
  }
  if (mi->textra){
    libaroma_text_draw(cv,mi->textra,mi->tx,mi->ey);
  }
} /* End of _libaroma_listitem_option_draw */

/*
 * Function    : _libaroma_listitem_option_release_internal
 * Return Value: void
 * Descriptions: release internal data
 */
void _libaroma_listitem_option_release_internal(_LIBAROMA_LISTITEM_OPTIONP mi){
  if (mi->main_text){
    free(mi->main_text);
  }
  if (mi->extra_text){
    free(mi->extra_text);
  }
  if (mi->tmain){
    libaroma_text_free(mi->tmain);
  }
  if (mi->textra){
    libaroma_text_free(mi->textra);
  }
  if (mi->icon){
    libaroma_canvas_free(mi->icon);
  }
  free(mi);
} /* End of _libaroma_listitem_option_release_internal */

/*
 * Function    : _libaroma_listitem_option_destroy
 * Return Value: void
 * Descriptions: destroy option item
 */
void _libaroma_listitem_option_destroy(LIBAROMA_CTL_LIST_ITEMP item){
  if (item->signature!=LIBAROMA_LISTITEM_OPTION_SIG){
    return;
  }
  _LIBAROMA_LISTITEM_OPTIONP mi = (_LIBAROMA_LISTITEM_OPTIONP) item->internal;
  _libaroma_listitem_option_release_internal(mi);
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
    byte freeicon,
    byte flags,
    int at_index){
  /* check valid list control */
  if (!libaroma_ctl_list_is_valid(ctl)){
    ALOGW("listitem_option control is not valid list control");
    return 0;
  }
  _LIBAROMA_LISTITEM_OPTIONP mi = (_LIBAROMA_LISTITEM_OPTIONP)
    malloc(sizeof(_LIBAROMA_LISTITEM_OPTION));
  if (!mi){
    ALOGW("listitem_option cannot allocate internal data");
    return NULL;
  }
  memset(mi,0,sizeof(_LIBAROMA_LISTITEM_OPTION));
  mi->selected=0; // selected;
  mi->icon=NULL;
  /* init icon */
  if (icon){
    int dpsz=libaroma_dp((flags&LIBAROMA_LISTITEM_OPTION_SMALL_ICON)?24:38);
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
    if (freeicon){
      libaroma_canvas_free(icon);
    }
  }
  mi->main_text=(main_text?strdup(main_text):NULL);
  mi->extra_text=(extra_text?strdup(extra_text):NULL);
  
  /* calculate height */
  int h = 0;
  
  if (ctl->window!=NULL){
    h=_libaroma_listitem_option_init(
      mi,
      ctl->w,
      flags,
      libaroma_ctl_scroll_get_bg_color(ctl)
    );
  }
  else{
    /* guessing height */
    h=(mi->icon)?mi->icon->h:0;
    int th = (mi->main_text?libaroma_font_size_px(4):0);
    th += (mi->extra_text?libaroma_font_size_px(3):0);
    th *= 1.2;
    th += libaroma_dp(4)-1;
    h = MAX(h,th)+libaroma_dp(32);
    mi->h=h;
  }
  
  LIBAROMA_CTL_LIST_ITEMP item = libaroma_ctl_list_add_item_internal(
    ctl,
    id,
    h,
    LIBAROMA_LISTITEM_OPTION_SIG,
    LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH|flags,
    (voidp) mi,
    _libaroma_listitem_option_message,
    _libaroma_listitem_option_draw,
    _libaroma_listitem_option_destroy,
    at_index
  );
  if (!item){
    ALOGW("listitem_option add_item_internal failed");
    _libaroma_listitem_option_release_internal(mi);
  }
  return item;
} /* End of libaroma_listitem_option */



#endif /* __libaroma_listitem_option_c__ */
