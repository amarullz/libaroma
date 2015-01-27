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
 * Filename    : window.h
 * Description : window api
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_window_h__
#define __libaroma_window_h__

/*
 * Window Messages
 */
#define LIBAROMA_MSG_WIN_ACTIVE       LIBAROMA_MSG_SYS(0x1)
#define LIBAROMA_MSG_WIN_INACTIVE     LIBAROMA_MSG_SYS(0x2)
#define LIBAROMA_MSG_WIN_INVALIDATE   LIBAROMA_MSG_SYS(0x3)
#define LIBAROMA_MSG_WIN_REFRESH      LIBAROMA_MSG_SYS(0x4)

#define LIBAROMA_MSG_WIN_FOCUS        LIBAROMA_MSG_SYS(0x4)
#define LIBAROMA_MSG_WIN_BLUR         LIBAROMA_MSG_SYS(0x5)
#define LIBAROMA_MSG_WIN_TITLE        LIBAROMA_MSG_SYS(0x6)


/*
 * Structure   : _LIBAROMA_WINDOW
 * Typedef     : LIBAROMA_WINDOW, * LIBAROMA_WINDOWP
 * Descriptions: window structure
 */
typedef struct _LIBAROMA_WINDOW LIBAROMA_WINDOW;
typedef struct _LIBAROMA_WINDOW * LIBAROMA_WINDOWP;

/*
 * Structure   : _LIBAROMA_CONTROL
 * Typedef     : LIBAROMA_CONTROL, * LIBAROMA_CONTROLP
 * Descriptions: control structure
 */
typedef struct _LIBAROMA_CONTROL LIBAROMA_CONTROL;
typedef struct _LIBAROMA_CONTROL * LIBAROMA_CONTROLP;

/*
 * Typedef     : LIBAROMA_CTLCB_*
 * Descriptions: control callbacks
 */
typedef byte (*LIBAROMA_CTLCB_MESSAGE) \
  (LIBAROMA_CONTROLP, LIBAROMA_MSGP);
typedef void (*LIBAROMA_CTLCB_DRAW) \
  (LIBAROMA_CONTROLP, byte);
typedef void (*LIBAROMA_CTLCB_DESTROY) \
  (LIBAROMA_CONTROLP);

/*
 * Structure   : _LIBAROMA_WINDOW
 * Typedef     : LIBAROMA_WINDOW, * LIBAROMA_WINDOWP
 * Descriptions: window structure
 */
struct _LIBAROMA_WINDOW{
  LIBAROMA_CANVASP dc;
  char theme_bg[256];
  LIBAROMA_CANVASP bg;
  int x;
  int y;
  int w;
  int h;
  int client_w;
  int client_h;
  int scroll_x;
  int scroll_y;
  int threadn;
  int childn;
  LIBAROMA_CONTROLP * childs;
  LIBAROMA_CONTROLP focused;
  LIBAROMA_CONTROLP touched;
};

/*
 * Structure   : _LIBAROMA_CONTROL
 * Typedef     : LIBAROMA_CONTROL, * LIBAROMA_CONTROLP
 * Descriptions: control structure
 */
struct _LIBAROMA_CONTROL{
  byte signature;
  word id;
  voidp internal;
  LIBAROMA_WINDOWP window;
  int x;
  int y;
  int w;
  int h;
  
  /* callback */
  LIBAROMA_CTLCB_MESSAGE message;
  LIBAROMA_CTLCB_DRAW draw;
  LIBAROMA_CTLCB_DESTROY destroy;
};

/*
 * Function    : libaroma_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: new window
 */
LIBAROMA_WINDOWP libaroma_window(
  char * bg_theme_name,
  int x, int y, int w, int h
);

/*
 * Function    : libaroma_window_free
 * Return Value: byte
 * Descriptions: free window
 */
byte libaroma_window_free(
  LIBAROMA_WINDOWP win
);

/*
 * Function    : libaroma_window_show
 * Return Value: byte
 * Descriptions: show window
 */
byte libaroma_window_show(LIBAROMA_WINDOWP win);

/*
 * Function    : libaroma_window_resize
 * Return Value: byte
 * Descriptions: resize window
 */
byte libaroma_window_resize(
  LIBAROMA_WINDOWP win,
  int x, int y, int w, int h
);

/*
 * Function    : libaroma_window_add_control
 * Return Value: byte
 * Descriptions: add control into window
 */
byte libaroma_window_add_control(
  LIBAROMA_WINDOWP win,
  LIBAROMA_CONTROLP ctl
);

/*
 * Function    : libaroma_window_del_control
 * Return Value: byte
 * Descriptions: delete control from window
 */
byte libaroma_window_del_control(
  LIBAROMA_CONTROLP ctl
);

/*
 * Function    : libaroma_window_control_draw
 * Return Value: byte
 * Descriptions: draw control into window
 */
byte libaroma_window_control_draw(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CANVASP canvas,
  byte sync
);

/*
 * Function    : libaroma_window_control_erasebg
 * Return Value: byte
 * Descriptions: erase control background
 */
byte libaroma_window_control_erasebg(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CANVASP canvas
);

/*
 * Function    : libaroma_window_control_isvisible
 * Return Value: byte
 * Descriptions: check if control visible
 */
byte libaroma_window_control_isvisible(LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_window_control_new
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create primitive control
 */
LIBAROMA_CONTROLP libaroma_window_control_new(
  byte signature, word id,
  int x, int y, int w, int h,
  LIBAROMA_CTLCB_MESSAGE message,
  LIBAROMA_CTLCB_DRAW draw,
  LIBAROMA_CTLCB_DESTROY destroy
);

/*
 * Function    : libaroma_control_free
 * Return Value: byte
 * Descriptions: free control
 */
byte libaroma_control_free(
  LIBAROMA_CONTROLP ctl
);

/*
 * Function    : libaroma_window_attach
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: attach control into window
 */
LIBAROMA_CONTROLP libaroma_window_attach(
  LIBAROMA_WINDOWP win,
  LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_window_event
 * Return Value: byte
 * Descriptions: process message
 */
byte libaroma_window_event(LIBAROMA_WINDOWP win, LIBAROMA_MSGP msg);

/*
 * Function    : libaroma_window_invalidate
 * Return Value: byte
 * Descriptions: invalidate window drawing
 */
byte libaroma_window_invalidate(LIBAROMA_WINDOWP win);

#endif /* __libaroma_window_h__ */
