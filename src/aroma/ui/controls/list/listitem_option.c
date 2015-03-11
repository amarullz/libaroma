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

/* LIST ITEM HANDLER */
byte _libaroma_listitem_option_message(
  LIBAROMA_CONTROLP, LIBAROMA_CTL_LIST_ITEMP,byte,dword,int,int);
void _libaroma_listitem_option_draw(
  LIBAROMA_CONTROLP,LIBAROMA_CTL_LIST_ITEMP,LIBAROMA_CANVASP,word);
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
  /* _LIBAROMA_LISTITEM_OPTIONP mi = 
    (_LIBAROMA_LISTITEM_OPTIONP) item->internal; */

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
    word bgcolor){
  if (item->handler!=&_libaroma_listitem_option_handler){
    return;
  }
  /*
  _LIBAROMA_LISTITEM_OPTIONP mi = (_LIBAROMA_LISTITEM_OPTIONP) item->internal;
  */
  
  libaroma_draw_rect(
    cv,
    5,5,cv->w-10,cv->h-10,RGB(008800),0xff
  );
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
void _libaroma_listitem_option_destroy(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item){
  if (item->handler!=&_libaroma_listitem_option_handler){
    return;
  }
  _libaroma_listitem_option_release_internal(
    (_LIBAROMA_LISTITEM_OPTIONP) item->internal
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
  mi->selected=0;
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
  h=(mi->icon)?mi->icon->h:0;
  int th = (mi->main_text?libaroma_font_size_px(4):0)*1.2;
  th += (mi->extra_text?libaroma_font_size_px(3):0)*1.2;
  th += libaroma_dp(4);
  h = MAX(h,th)+libaroma_dp(32);
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
    _libaroma_listitem_option_release_internal(mi);
  }
  return item;
} /* End of libaroma_listitem_option */


#endif /* __libaroma_listitem_option_c__ */
