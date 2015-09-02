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
 * Window Poll Command
 */
#define LIBAROMA_CMD_SET(cmd, param, id) \
  (((cmd&0xff) << 24) | ((param&0xff) << 16) | (id&0xffff))
#define LIBAROMA_CMD_ID(cmd) (cmd&0xffff)
#define LIBAROMA_CMD(cmd) ((cmd>>24)&0xff)
#define LIBAROMA_CMD_PARAM(cmd) ((cmd>>16)&0xff)

/* command id */
#define LIBAROMA_CMD_NONE       0x0
#define LIBAROMA_CMD_CLICK      0x1
#define LIBAROMA_CMD_HOLD       0x2

/*
 * Window Messages Queue
 */
#define LIBAROMA_MSG_WIN_ACTIVE       LIBAROMA_MSG_SYS(0x1)
#define LIBAROMA_MSG_WIN_INACTIVE     LIBAROMA_MSG_SYS(0x2)
#define LIBAROMA_MSG_WIN_INVALIDATE   LIBAROMA_MSG_SYS(0x3)
#define LIBAROMA_MSG_WIN_RESIZE       LIBAROMA_MSG_SYS(0x4)
#define LIBAROMA_MSG_WIN_MEASURED     LIBAROMA_MSG_SYS(0x5)
#define LIBAROMA_MSG_WIN_DIRECTMSG    LIBAROMA_MSG_SYS(0x6)
#define LIBAROMA_MSG_WIN_FOCUS        LIBAROMA_MSG_SYS(0x7)
#define LIBAROMA_MSG_WIN_BLUR         LIBAROMA_MSG_SYS(0x8)
#define LIBAROMA_MSG_WIN_TITLE        LIBAROMA_MSG_SYS(0x9)

/*
 * Window Show Animation
 */
#define LIBAROMA_WINDOW_SHOW_ANIMATION_NONE         0
#define LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_LEFT    1
#define LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_RIGHT   2
#define LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_LEFT   3
#define LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_RIGHT  4
#define LIBAROMA_WINDOW_SHOW_ANIMATION_STACKIN      5
#define LIBAROMA_WINDOW_SHOW_ANIMATION_STACKOUT     6
#define LIBAROMA_WINDOW_SHOW_ANIMATION_FADE         7
#define LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_TOP		8
#define LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_TOP			9
#define LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_BOTTOM	10
#define LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_BOTTOM	11
        
/*
 * Special Size & Position
 */
#define LIBAROMA_SIZE_FULL     0
#define LIBAROMA_SIZE_HALF    -1
#define LIBAROMA_SIZE_THIRD   -2
#define LIBAROMA_SIZE_QUARTER -3
#define LIBAROMA_POS_HALF     -4
#define LIBAROMA_POS_1P3      -5
#define LIBAROMA_POS_2P3      -6
#define LIBAROMA_POS_1P4      -7
#define LIBAROMA_POS_3P4      -8

/* transition callback */
typedef void (*LIBAROMA_TRANSITION_CB)(
  LIBAROMA_CANVASP,
  LIBAROMA_CANVASP,
  LIBAROMA_CANVASP,
  float,
  LIBAROMA_RECTP,
  LIBAROMA_RECTP
);

/* client window handler */
typedef struct _LIBAROMA_WINDOW_HANDLER{
  void (*prefree)(LIBAROMA_WINDOWP);
  void (*postfree)(LIBAROMA_WINDOWP);
  byte (*updatebg)(LIBAROMA_WINDOWP);
  byte (*invalidate)(LIBAROMA_WINDOWP,byte);
  byte (*sync)(LIBAROMA_WINDOWP,int,int,int,int);
  byte (*message_hooker)(
    LIBAROMA_WINDOWP, LIBAROMA_MSGP, dwordp
  );
  
  /* controls */
  byte (*control_draw_flush)(
    LIBAROMA_WINDOWP,LIBAROMA_CONTROLP,LIBAROMA_CANVASP,byte
  );
  byte (*control_erasebg)(
    LIBAROMA_WINDOWP,LIBAROMA_CONTROLP,LIBAROMA_CANVASP
  );
  byte (*control_isvisible)(
    LIBAROMA_WINDOWP,LIBAROMA_CONTROLP
  );
  LIBAROMA_CANVASP (*control_draw_begin)(
    LIBAROMA_WINDOWP,LIBAROMA_CONTROLP
  );
} LIBAROMA_WINDOW_HANDLER, * LIBAROMA_WINDOW_HANDLERP;

/*
 * Structure   : _LIBAROMA_WINDOW
 * Typedef     : LIBAROMA_WINDOW, * LIBAROMA_WINDOWP
 * Descriptions: window structure
 */
struct _LIBAROMA_WINDOW{
  LIBAROMA_COLORSETP colorset;
  
  /* px measured */
  int ax;
  int ay;
  int x;
  int y;
  int w;
  int h;
  /* requested size */
  int rx;
  int ry;
  int rw;
  int rh;
  /* measured size */
  int left;
  int top;
  int width;
  int height;
  
  /* states */
  byte active;
  byte lock_sync;
  
  /* graphs */
  char theme_bg[256];
  LIBAROMA_CANVASP dc;
  LIBAROMA_CANVASP bg;
  
  /* childs */
  int childn;
  LIBAROMA_CONTROLP * childs;
  LIBAROMA_CONTROLP focused;
  LIBAROMA_CONTROLP touched;
  
  /* thread manager */
  byte (*ui_thread)(LIBAROMA_WINDOWP);
  
  /* update background */
  void (*onupdatebg)(LIBAROMA_WINDOWP,LIBAROMA_CANVASP);
  
  /* client window */
  LIBAROMA_WINDOWP parent;
  LIBAROMA_WINDOW_HANDLERP handler;
  voidp client_data;
};

/*
 * Function    : libaroma_window_usedp
 * Return Value: byte
 * Descriptions: use dp for mesurement
 */
byte libaroma_window_usedp(byte isdp);

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
 * Function    : libaroma_window_measure_point
 * Return Value: int
 * Descriptions: mesure point
 */
int libaroma_window_measure_point(int x);

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
 * Function    : libaroma_window_add
 * Return Value: byte
 * Descriptions: add control into window
 */
byte libaroma_window_add(
  LIBAROMA_WINDOWP win,
  LIBAROMA_CONTROLP ctl
);

/*
 * Function    : libaroma_window_del
 * Return Value: byte
 * Descriptions: delete control from window
 */
byte libaroma_window_del(
  LIBAROMA_WINDOWP win,
  LIBAROMA_CONTROLP ctl
);

/*
 * Function    : libaroma_window_getid
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: get control by id
 */
LIBAROMA_CONTROLP libaroma_window_getid(
    LIBAROMA_WINDOWP win, word id);

/*
 * Function    : libaroma_window_setfocus
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: set control focus
 */
LIBAROMA_CONTROLP libaroma_window_setfocus(
    LIBAROMA_WINDOWP win, LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_window_anishow
 * Return Value: byte
 * Descriptions: show window - animated
 */
byte libaroma_window_anishow(
  LIBAROMA_WINDOWP win, byte animation, int duration);

/* no animation */
#define libaroma_window_show(win) \
  libaroma_window_anishow(win,0,0)

/*
 * Function    : libaroma_window_post_command
 * Return Value: byte
 * Descriptions: post command into message queue
 */
byte libaroma_window_post_command(dword cmd);

/*
 * Function    : libaroma_window_post_command_ex
 * Return Value: byte
 * Descriptions: post direct command extended
 */
byte libaroma_window_post_command_ex(dword cmd,
  byte state, int key, int y, voidp d);

/*
 * Function    : libaroma_window_pool
 * Return Value: dword
 * Descriptions: poll window messages
 */
dword libaroma_window_pool(
    LIBAROMA_WINDOWP win,
    LIBAROMA_MSGP msg);


/********* ROOT WINDOW MANAGER *********/

/*
 * Function    : libaroma_window_layer_init
 * Return Value: byte
 * Descriptions: init window as layered window
 */
byte libaroma_window_layer_init(LIBAROMA_WINDOWP win);

/*
 * Function    : libaroma_window_layer_release
 * Return Value: byte
 * Descriptions: release layer window
 */
byte libaroma_window_layer_release(LIBAROMA_WINDOWP win);

/*
 * Function    : libaroma_window_sidebar
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: new or get sidebar window
 */
LIBAROMA_WINDOWP libaroma_window_sidebar(LIBAROMA_WINDOWP win, int width);

/*
 * Function    : libaroma_window_sidebar_show
 * Return Value: byte
 * Descriptions: show/hide sidebar
 */
byte libaroma_window_sidebar_show(LIBAROMA_WINDOWP win, byte show);

/* slide sidebar callback */
typedef void (*LIBAROMA_WINDOW_SIDEBAR_SLIDE_CB)(
  LIBAROMA_WINDOWP,int,int);

/*
 * Function    : libaroma_window_sidebar_onslide
 * Return Value: byte
 * Descriptions: set sidebar slide position callback
 */
byte libaroma_window_sidebar_onslide(
  LIBAROMA_WINDOWP win, LIBAROMA_WINDOW_SIDEBAR_SLIDE_CB cb);

#endif /* __libaroma_window_h__ */
