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
 * Filename    : ctl_label.c
 * Description : label control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 28/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_ctl_label_c__
#define __libaroma_ctl_label_c__

#define _LIBAROMA_CONTROL_LABEL_SIGNATURE 0x01
/*
 * Structure   : __LIBAROMA_CONTROL_LABEL
 * Typedef     : _LIBAROMA_CONTROL_LABEL, * _LIBAROMA_CONTROL_LABELP
 * Descriptions: internal label data
 */
typedef struct __LIBAROMA_CONTROL_LABEL _LIBAROMA_CONTROL_LABEL;
typedef struct __LIBAROMA_CONTROL_LABEL * _LIBAROMA_CONTROL_LABELP;
struct __LIBAROMA_CONTROL_LABEL{
  LIBAROMA_TEXT textp;
  char * text;
};

void _libaroma_control_label_destroy(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CONTROL_LABELP me = 
    (_LIBAROMA_CONTROL_LABELP) ctl->internal;
  if (me->text){
    free(me->text);
  }
  if (me->textp){
    libaroma_text_free(me->textp);
  }
  free(me);
}

void _libaroma_control_label_draw(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CANVASP c){
  _LIBAROMA_CONTROL_LABELP me = 
      (_LIBAROMA_CONTROL_LABELP) ctl->internal;
  libaroma_control_erasebg(ctl,c);
    
  libaroma_wm_draw_theme(c,"button",
    0,0,ctl->w,ctl->h,NULL);
    
  libaroma_text_draw(c,me->textp,0,0);
}

dword _libaroma_control_label_msg(LIBAROMA_CONTROLP ctl, LIBAROMA_MSGP msg){
  /*
  _LIBAROMA_CONTROL_LABELP me = 
    (_LIBAROMA_CONTROL_LABELP) ctl->internal;*/
  return 0;
}

LIBAROMA_CONTROLP libaroma_control_label(
  LIBAROMA_WINDOWP win, word id, char * text,
  int x, int y, int w, int h
){
  _LIBAROMA_CONTROL_LABELP me = (_LIBAROMA_CONTROL_LABELP)
    malloc(sizeof(_LIBAROMA_CONTROL_LABEL));
  if (!me){
    ALOGW("libaroma_control_label alloc label memory failed");
    return NULL;
  }
  memset(me,0,sizeof(_LIBAROMA_CONTROL_LABEL));
  me->text = strdup(text);
  me->textp = libaroma_text(
    me->text,
    libaroma_wm_get_color("control_text"),
    w - libaroma_dp(8),
    LIBAROMA_FONT(0,4)|LIBAROMA_TEXT_SINGLELINE,
    100
  );
  
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      _LIBAROMA_CONTROL_LABEL_SIGNATURE,id,
      x, y, w, h,
      libaroma_dp(28),libaroma_dp(32), /* min size */
      me,
      _libaroma_control_label_msg,
      _libaroma_control_label_draw,
      NULL,
      _libaroma_control_label_destroy,
      NULL,
      win
    );
  
  if (!ctl){
    if (me->text){
      free(me->text);
    }
    if (me->textp){
      libaroma_text_free(me->textp);
    }
    free(me);
  }
  return ctl;
}

#endif /* __libaroma_ctl_label_c__ */
