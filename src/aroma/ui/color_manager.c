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
 * Filename    : color_manager.c
 * Description : color manager
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 17/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_color_manager_c__
#define __libaroma_color_manager_c__
#include <aroma_internal.h>
#include "ui_internal.h"

static LIBAROMA_COLORSET __libaroma_fallback_colorset={
  primary:0,
  primary_text:0,
  primary_icon:0,
  primary_light:0,
  accent:0,
  window_bg:0,
  window_text:0,
  control_bg:0,
  control_primary_text:0,
  control_secondary_text:0,
  divider:0,
  dialog_bg:0,
  dialog_primary_text:0,
  dialog_secondary_text:0,
};

/*
 * Function    : libaroma_colorset
 * Return Value: byte
 * Descriptions: init colorset
 */
byte libaroma_colorset(LIBAROMA_COLORSETP colorset, byte type){
  if (!colorset){
    return 0;
  }
  colorset->primary=RGB(2196F3);
  colorset->primary_text=RGB(FFFFFF);
  colorset->primary_icon=RGB(FFFFFF);
  colorset->primary_light=RGB(BBDEFB);
  colorset->accent=RGB(2E7D32);
  colorset->window_bg=RGB(E0E0E0);
  colorset->window_text=RGB(212121);
  colorset->control_bg=RGB(FFFFFF);
  colorset->control_primary_text=RGB(212121);
  colorset->control_secondary_text=RGB(727272);
  colorset->divider=RGB(B6B6B6);
  
  
  colorset->dialog_bg=RGB(FFFFFF);
  colorset->dialog_primary_text=RGB(212121);
  colorset->dialog_secondary_text=RGB(727272);
  /*
  colorset->dialog_bg=RGB(444444);
  colorset->dialog_primary_text=RGB(ffffff);
  colorset->dialog_secondary_text=RGB(999999);
  */
  return 1;
}

/*
 * Function    : libaroma_colorget
 * Return Value: LIBAROMA_COLORSETP
 * Descriptions: get colorset
 */
LIBAROMA_COLORSETP libaroma_colorget(
  LIBAROMA_CONTROLP ctl, LIBAROMA_WINDOWP win){
  if (ctl){
    if (ctl->colorset){
      return ctl->colorset;
    }
    win = ctl->window;
  }
  if (win){
    if (win->colorset){
      return win->colorset;
    }
  }
  if (!libaroma_wm()){
    return &__libaroma_fallback_colorset;
  }
  return &libaroma_wm()->colorset;
}

#endif /* __libaroma_color_manager_c__ */
