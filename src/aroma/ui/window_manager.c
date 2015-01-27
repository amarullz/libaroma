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
 * Filename    : window_manager.c
 * Description : libaroma window manager
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_window_manager_c__
#define __libaroma_window_manager_c__

/*
 * Variable    : _libaroma_wm
 * Type        : LIBAROMA_WMP
 * Descriptions: window manager storage
 */
static LIBAROMA_WMP _libaroma_wm=NULL;

/*
 * Function    : _libaroma_wm_theme_release
 * Return Value: void
 * Descriptions: string array theme release callback
 */
void _libaroma_wm_theme_release(void * val) {
  LIBAROMA_WM_THEMEP theme = (LIBAROMA_WM_THEMEP) val;
  if (theme->theme_flags&LIBAROMA_WM_FLAG_THEME_WMFREE){
    if (theme->canvas){
      libaroma_canvas_free(theme->canvas);
    }
  }
} /* End of _libaroma_wm_theme_release */

/*
 * Function    : _libaroma_wm_default_set
 * Return Value: void
 * Descriptions: default theme/colorset
 */
void _libaroma_wm_default_set(byte set_flags){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return;
  }
  if (set_flags&LIBAROMA_WM_FLAG_RESET_COLOR){
    /*
     * primitive colorset - use lollipop
     */
    /* window */
    libaroma_wm_set_color("window",RGB(37474F));
    libaroma_wm_set_color("window_gradient",RGB(37474F));
    libaroma_wm_set_color("window_text",RGB(ffffff));
    libaroma_wm_set_color("window_text_shadow",RGB(000000));
    
    /* actionbar & title */
    libaroma_wm_set_color("actionbar",RGB(263238));
    libaroma_wm_set_color("actionbar_gradient",RGB(263238));
    libaroma_wm_set_color("actionbar_text",RGB(ffffff));
    libaroma_wm_set_color("actionbar_text_shadow",RGB(000000));
    
    /* default control */
    libaroma_wm_set_color("control",RGB(384248));
    libaroma_wm_set_color("control_gradient",RGB(384248));
    libaroma_wm_set_color("control_text",RGB(cccccc));
    libaroma_wm_set_color("control_text_shadow",RGB(000000));
    
    /* highlight */
    libaroma_wm_set_color("highlight",RGB(80CBC4));
    libaroma_wm_set_color("highlight_gradient",RGB(80CBC4));
    libaroma_wm_set_color("highlight_text",RGB(ffffff));
    libaroma_wm_set_color("highlight_text_shadow",RGB(000000));
  }
  if (set_flags&LIBAROMA_WM_FLAG_RESET_THEME){
    /* TODO: Default themeset */
  }
} /* End of _libaroma_wm_default_set */

/*
 * Function    : libaroma_wm_init
 * Return Value: byte
 * Descriptions: init window manager
 */
byte libaroma_wm_init(){
  if (_libaroma_wm){
    ALOGW("libaroma_wm_init window manager already initialized");
    return 0;
  }
  ALOGV("libaroma_wm_init init window manager");
  _libaroma_wm = (LIBAROMA_WMP) malloc(sizeof(LIBAROMA_WM));
  _libaroma_wm->theme = libaroma_sarray(_libaroma_wm_theme_release);
  _libaroma_wm->color = libaroma_sarray(NULL);
  _libaroma_wm->x = 0;
  _libaroma_wm->y = 0;
  _libaroma_wm->w = libaroma_fb()->w;
  _libaroma_wm->h = libaroma_fb()->h;
  _libaroma_wm->client_started = 0;
  _libaroma_wm->message_handler = NULL;
  _libaroma_wm->reset_handler = NULL;
  _libaroma_wm_default_set(
    LIBAROMA_WM_FLAG_RESET_COLOR|
    LIBAROMA_WM_FLAG_RESET_THEME);
  return 1;
} /* End of libaroma_wm_init */

/*
 * Function    : libaroma_wm_release
 * Return Value: byte
 * Descriptions: release window manager
 */
byte libaroma_wm_release(){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  ALOGV("libaroma_wm_release release window manager");
  libaroma_sarray_free(_libaroma_wm->color);
  libaroma_sarray_free(_libaroma_wm->theme);
  free(_libaroma_wm);
  _libaroma_wm=NULL;
  return 1;
} /* End of libaroma_wm_release */

/*
 * Function    : libaroma_wm_reset
 * Return Value: byte
 * Descriptions: reset theme and colorset
 */
byte libaroma_wm_reset(byte reset_flag){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  /* reinit theme and colorset */
  if (reset_flag&LIBAROMA_WM_FLAG_RESET_COLOR){
    libaroma_sarray_free(_libaroma_wm->color);
    _libaroma_wm->color = libaroma_sarray(NULL);
  }
  if (reset_flag&LIBAROMA_WM_FLAG_RESET_THEME){
    libaroma_sarray_free(_libaroma_wm->theme);
    _libaroma_wm->theme = libaroma_sarray(_libaroma_wm_theme_release);
  }
  _libaroma_wm_default_set(reset_flag);
  if (_libaroma_wm->reset_handler!=NULL){
    _libaroma_wm->reset_handler(_libaroma_wm, reset_flag);
  }
  return 1;
} /* End of libaroma_wm_reset */

/*
 * Function    : libaroma_wm_set_workspace
 * Return Value: byte
 * Descriptions: set window workspace size
 */
byte libaroma_wm_set_workspace(int x, int y, int w, int h){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if ((x<0)||(y<0)){
    ALOGW("workspace x/y should be >= 0");
    return 0;
  }
  if ((x+w>libaroma_fb()->w)||(y+h>libaroma_fb()->h)){
    ALOGW("workspace size should smaller than fb size");
    return 0;
  }
  
  _libaroma_wm->x = x;
  _libaroma_wm->y = y;
  _libaroma_wm->w = w;
  _libaroma_wm->h = h;
  return 1;
} /* End of libaroma_wm_set_workspace */

/*
 * Function    : libaroma_wm_set_message_handler
 * Return Value: byte
 * Descriptions: set message handler
 */
byte libaroma_wm_set_message_handler(
    LIBAROMA_WMCB_MESSAGE_HANDLER callback){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  _libaroma_wm->message_handler = callback;
  return 1;
} /* End of libaroma_wm_set_message_handler */

/*
 * Function    : libaroma_wm_set_reset_handler
 * Return Value: byte
 * Descriptions: set theme reset handler
 */
byte libaroma_wm_set_reset_handler(
    LIBAROMA_WMCB_RESET_HANDLER callback){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  _libaroma_wm->reset_handler = callback;
  return 1;
} /* End of libaroma_wm_set_reset_handler */

/*
 * Function    : libaroma_wm_sync
 * Return Value: byte
 * Descriptions: sync window workspace
 */
byte libaroma_wm_sync(int x, int y, int w, int h){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  int x2 = x+_libaroma_wm->x;
  int y2 = x+_libaroma_wm->y;
  int w2 = w;
  int h2 = h;
  if (x2<_libaroma_wm->x){
    w2 -= x2-_libaroma_wm->x;
    x2 = 0;
  }
  if (y2<_libaroma_wm->y){
    h2 -= y2-_libaroma_wm->y;
    y2 = 0;
  }
  if ((w2<1)||(h2<1)){
    /* sync doesn't needed */
    return 1;
  }
  if (w2+x2>_libaroma_wm->w){
    w2=_libaroma_wm->w-x2;
  }
  if (h2+y2>_libaroma_wm->h){
    h2=_libaroma_wm->h-y2;
  }
  /* now sync fb */
  return libaroma_sync_area(x2,y2,w2,h2);
} /* End of libaroma_wm_sync */

/*
 * Function    : libaroma_wm_canvas
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: request window drawing canvas
 */
LIBAROMA_CANVASP libaroma_wm_canvas(int x, int y, int w, int h){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return NULL;
  }
  int x2 = x+_libaroma_wm->x;
  int y2 = x+_libaroma_wm->y;
  int w2 = w;
  int h2 = h;
  if (x2<_libaroma_wm->x){
    w2 -= x2-_libaroma_wm->x;
    x2 = 0;
  }
  if (y2<_libaroma_wm->y){
    h2 -= y2-_libaroma_wm->y;
    y2 = 0;
  }
  if ((w2<1)||(h2<1)){
    /* sync doesn't needed */
    ALOGW("libaroma_wm_canvas invalid requested size (%ix%i)", w2, h2);
    return NULL;
  }
  if (w2+x2>_libaroma_wm->w){
    w2=_libaroma_wm->w-x2;
  }
  if (h2+y2>_libaroma_wm->h){
    h2=_libaroma_wm->h-y2;
  }
  return libaroma_canvas_area(
    libaroma_fb()->canvas,
    x2, y2, w2, h2
  );
} /* End of libaroma_wm_canvas */

/*
 * Function    : libaroma_wm_client_start
 * Return Value: void
 * Descriptions: start window client message
 */
byte libaroma_wm_client_start(){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  libaroma_msg_start();
  _libaroma_wm->client_started = 1;
  return 1;
} /* End of libaroma_wm_client_start */

/*
 * Function    : libaroma_wm_client_stop
 * Return Value: byte
 * Descriptions: stop window client message
 */
byte libaroma_wm_client_stop(){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  libaroma_msg_stop();
  _libaroma_wm->client_started = 0;
  return 1;
} /* End of libaroma_wm_client_stop */

/*
 * Function    : libaroma_wm_getmessage
 * Return Value: byte
 * Descriptions: get window manager client message
 */
byte libaroma_wm_getmessage(LIBAROMA_MSGP msg){
  byte ret=LIBAROMA_MSG_NONE;
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return ret;
  }
  do{
    ret=libaroma_msg(msg);
    /* check hooker/callback */
    if (_libaroma_wm->message_handler!=NULL){
      if (_libaroma_wm->message_handler(_libaroma_wm,msg)==
          LIBAROMA_WM_MSG_HANDLED){
        if (!_libaroma_wm->client_started){
          break;
        }
        continue;
      }
    }
  } while(0);
  return ret;
} /* End of libaroma_wm_getmessage */

/*
 * Function    : libaroma_wm_set_theme
 * Return Value: byte
 * Descriptions: set theme
 */
byte libaroma_wm_set_theme(
    char * name,
    LIBAROMA_CANVASP canvas,
    byte theme_flags,
    int dpi){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  LIBAROMA_WM_THEME save_data;
  save_data.canvas = canvas;
  save_data.theme_flags = theme_flags;
  if (dpi==0){
    dpi=libaroma_fb()->dpi;
  }
  save_data.dpi = dpi;
  if (libaroma_sarray_set(
      _libaroma_wm->theme,
      name,
      &save_data,
      sizeof(LIBAROMA_WM_THEME),
      1)){
    return 1;
  }
  return 0;
} /* End of libaroma_wm_set_theme */

/*
 * Function    : libaroma_wm_set_theme_stream
 * Return Value: byte
 * Descriptions: set theme from stream
 */
byte libaroma_wm_set_theme_stream(
    char * name,
    LIBAROMA_STREAMP stream,
    byte freestream,
    int dpi){
  if (!stream){
    ALOGW("libaroma_wm_set_theme_stream stream is NULL");
    return 0;
  }
  if (_libaroma_wm==NULL){
    if (freestream){
      libaroma_stream_close(stream);
    }
    ALOGW("window manager uninitialized");
    return 0;
  }
  /* check 9patch png from filename */
  int png9pos = strlen(stream->uri)-6;
  byte png9p_flag = 0;
  if (png9pos>0){
    char * ext_uri = (char *) (stream->uri+png9pos);
    png9p_flag=(strcmp(ext_uri,".9.png")==0)?LIBAROMA_WM_FLAG_THEME_PNG9P:0;
  }
  /* load image */
  LIBAROMA_CANVASP cv = libaroma_image_ex(stream, freestream, 1);
  if (!cv){
    ALOGW("libaroma_wm_set_theme_stream cannot load image '%s'", stream->uri);
    return 0;
  }
  return libaroma_wm_set_theme(
    name, cv, LIBAROMA_WM_FLAG_THEME_WMFREE|png9p_flag, dpi);
} /* End of libaroma_wm_set_theme_stream */

/*
 * Function    : libaroma_wm_get_theme
 * Return Value: LIBAROMA_WM_THEMEP
 * Descriptions: get theme
 */
LIBAROMA_WM_THEMEP libaroma_wm_get_theme(char * name){
  return (LIBAROMA_WM_THEMEP)
    libaroma_sarray_get(_libaroma_wm->theme, name);
} /* End of libaroma_wm_get_theme */

/*
 * Function    : libaroma_wm_del_theme
 * Return Value: byte
 * Descriptions: delete theme item
 */
byte libaroma_wm_del_theme(char * name){
  return libaroma_sarray_delete(_libaroma_wm->theme, name);
} /* End of libaroma_wm_del_theme */

/*
 * Function    : libaroma_wm_draw_theme
 * Return Value: byte
 * Descriptions: draw theme into canvas
 */
byte libaroma_wm_draw_theme(
    LIBAROMA_CANVASP dest, char * name,
    int dx, int dy, int dw, int dh,
    LIBAROMA_PNG9_PADP padding){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if (!name){
    ALOGW("libaroma_wm_draw_theme invalid name");
    return 0;
  }
  if (!dest){
    dest=libaroma_fb()->canvas;
  }
  LIBAROMA_WM_THEMEP th=libaroma_wm_get_theme(name);
  if (!th){
    ALOGV("libaroma_wm_draw_theme '%s' theme not found", name);
    return 0;
  }
  if (th->theme_flags&LIBAROMA_WM_FLAG_THEME_PNG9P){
    if (dw<1){
      dw = th->canvas->w - 2;
    }
    if (dh<1){
      dh = th->canvas->h - 2;
    }
    return libaroma_png9p_draw(
      dest,
      th->canvas,
      dx,dy,dw,dh,th->dpi,
      padding
    );
  }
  if (padding!=NULL){
    memset(padding,0,sizeof(LIBAROMA_PNG9_PAD));
  }
  if (dw<1){
    dw = th->canvas->w;
  }
  if (dh<1){
    dh = th->canvas->h;
  }
  return libaroma_draw_scale_smooth(
    dest, th->canvas,
    dx, dy, dw, dh,
    0, 0, th->canvas->w, th->canvas->h
  );
} /* End of libaroma_wm_draw_theme */

/*
 * Function    : libaroma_wm_set_color
 * Return Value: byte
 * Descriptions: set colorset
 */
byte libaroma_wm_set_color(char * name, word color){
  return libaroma_sarray_set(
    _libaroma_wm->color,
    name,
    &color,
    sizeof(word),
    0);
} /* End of libaroma_wm_set_color */

/*
 * Function    : libaroma_wm_get_color
 * Return Value: word
 * Descriptions: get colorset
 */
word libaroma_wm_get_color(char * name) {
  wordp color = (wordp) libaroma_sarray_get(
    _libaroma_wm->color,
    name);
  if (color == NULL) {
    return 0;
  }
  return *color;
} /* End of libaroma_wm_get_color */

/*
 * Function    : libaroma_wm_del_color
 * Return Value: byte
 * Descriptions: delete color item
 */
byte libaroma_wm_del_color(char * name){
  return libaroma_sarray_delete(_libaroma_wm->color, name);
} /* End of libaroma_wm_del_color */

#endif /* __libaroma_window_manager_c__ */
