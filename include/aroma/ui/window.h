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
#define LIBAROMA_MSG_WIN_RESIZE       LIBAROMA_MSG_SYS(0x4)

#define LIBAROMA_MSG_WIN_FOCUS        LIBAROMA_MSG_SYS(0x5)
#define LIBAROMA_MSG_WIN_BLUR         LIBAROMA_MSG_SYS(0x6)
#define LIBAROMA_MSG_WIN_TITLE        LIBAROMA_MSG_SYS(0x7)


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
 * Struct File : control.h
 */
typedef struct _LIBAROMA_CONTROL LIBAROMA_CONTROL;
typedef struct _LIBAROMA_CONTROL * LIBAROMA_CONTROLP;

/*
 * Structure   : _LIBAROMA_WINDOW
 * Typedef     : LIBAROMA_WINDOW, * LIBAROMA_WINDOWP
 * Descriptions: window structure
 */
struct _LIBAROMA_WINDOW{
  byte active;
  byte lock_sync;
  LIBAROMA_CANVASP wmc;
  LIBAROMA_CANVASP dc;
  char theme_bg[256];
  LIBAROMA_CANVASP bg;
  pthread_t thread_manager;
  int x;
  int y;
  int w;
  int h;
  int client_w;
  int client_h;
  int scroll_x;
  int scroll_y;
  int childn;
  LIBAROMA_CONTROLP * childs;
  LIBAROMA_CONTROLP focused;
  LIBAROMA_CONTROLP touched;
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
 * Function    : libaroma_window_resize
 * Return Value: byte
 * Descriptions: resize window
 */
byte libaroma_window_resize(
  LIBAROMA_WINDOWP win,
  int x, int y, int w, int h
);

/*
 * Function    : libaroma_window_isactive
 * Return Value: byte
 * Descriptions: check if window is active
 */
byte libaroma_window_isactive(LIBAROMA_WINDOWP win);

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
 * Function    : libaroma_window_attach
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: attach control into window
 */
LIBAROMA_CONTROLP libaroma_window_attach(
  LIBAROMA_WINDOWP win,
  LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_window_control_id
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: get control by id
 */
LIBAROMA_CONTROLP libaroma_window_control_id(
    LIBAROMA_WINDOWP win, word id);

/*
 * Function    : libaroma_window_setfocus
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: set control focus
 */
LIBAROMA_CONTROLP libaroma_window_setfocus(
    LIBAROMA_WINDOWP win, LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_window_event
 * Return Value: byte
 * Descriptions: process message
 */
byte libaroma_window_event(LIBAROMA_WINDOWP win, LIBAROMA_MSGP msg);

/*
 * Function    : libaroma_window_sync
 * Return Value: byte
 * Descriptions: sync window canvas
 */
byte libaroma_window_sync(LIBAROMA_WINDOWP win, int x, int y, int w, int h);

/*
 * Function    : libaroma_window_invalidate
 * Return Value: byte
 * Descriptions: invalidate window drawing
 */
byte libaroma_window_invalidate(LIBAROMA_WINDOWP win, byte sync);

#define LIBAROMA_WINDOW_SHOW_ANIMATION_NONE 0
#define LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_LEFT 1
#define LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_RIGHT 2
#define LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_LEFT 3
#define LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_RIGHT 4
#define LIBAROMA_WINDOW_SHOW_ANIMATION_STACKIN 5
#define LIBAROMA_WINDOW_SHOW_ANIMATION_STACKOUT 6

/*
 * Function    : libaroma_window_anishow
 * Return Value: byte
 * Descriptions: show window - animated
 */
byte libaroma_window_anishow(
  LIBAROMA_WINDOWP win, byte animation, int duration);

#define libaroma_window_show(win) \
  libaroma_window_anishow(win,0,0)

#endif /* __libaroma_window_h__ */
