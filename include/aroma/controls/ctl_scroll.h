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
 * Filename    : ctl_scroll.h
 * Description : scroll control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 12/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_ctl_scroll_h__
#define __libaroma_ctl_scroll_h__

/* style flags */
#define LIBAROMA_CTL_SCROLL_NO_INDICATOR    0x01
#define LIBAROMA_CTL_SCROLL_WITH_SHADOW     0x02
#define LIBAROMA_CTL_SCROLL_WITH_HANDLE     0x04
#define LIBAROMA_CTL_SCROLL_WITH_VBORDER    0x80

/* messaging */
#define LIBAROMA_CTL_SCROLL_MSG                 LIBAROMA_MSG_SYS(0x80)
#define LIBAROMA_CTL_SCROLL_MSG_ISNEED_TOUCH    0x1
#define LIBAROMA_CTL_SCROLL_MSG_TOUCH_DOWN      0x2
#define LIBAROMA_CTL_SCROLL_MSG_TOUCH_UP        0x3
#define LIBAROMA_CTL_SCROLL_MSG_TOUCH_MOVE      0x4
#define LIBAROMA_CTL_SCROLL_MSG_TOUCH_CANCEL    0x5
#define LIBAROMA_CTL_SCROLL_MSG_HANDLED         0x1
#define LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW       0x2

/* client & handler */
typedef struct _LIBAROMA_CTL_SCROLL_CLIENT LIBAROMA_CTL_SCROLL_CLIENT;
typedef struct _LIBAROMA_CTL_SCROLL_CLIENT * LIBAROMA_CTL_SCROLL_CLIENTP;
typedef struct{
  void (*draw)
    (LIBAROMA_CONTROLP,LIBAROMA_CTL_SCROLL_CLIENTP,
     LIBAROMA_CANVASP,int,int,int,int);
  void (*destroy)
    (LIBAROMA_CONTROLP,LIBAROMA_CTL_SCROLL_CLIENTP);
  byte (*thread)
    (LIBAROMA_CONTROLP, LIBAROMA_CTL_SCROLL_CLIENTP);
  dword (*message)
    (LIBAROMA_CONTROLP, LIBAROMA_CTL_SCROLL_CLIENTP,LIBAROMA_MSGP, int, int);
} LIBAROMA_CTL_SCROLL_CLIENT_HANDLER,
  *LIBAROMA_CTL_SCROLL_CLIENT_HANDLERP;

/*
 * Structure   : _LIBAROMA_CTL_SCROLL_CLIENT
 * Typedef     : LIBAROMA_CTL_SCROLL_CLIENT, * LIBAROMA_CTL_SCROLL_CLIENTP
 * Descriptions: scroll client
 */
struct _LIBAROMA_CTL_SCROLL_CLIENT{
  voidp internal;
  LIBAROMA_CTL_SCROLL_CLIENT_HANDLERP handler;
};

/*
 * Function    : libaroma_ctl_scroll_request_pos
 * Return Value: byte
 * Descriptions: request to change scroll position - nicely
 */
word libaroma_ctl_scroll_get_bg_color(LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_ctl_scroll_set_client
 * Return Value: byte
 * Descriptions: set client handler
 */
byte libaroma_ctl_scroll_set_client(
    LIBAROMA_CONTROLP ctl,
    voidp internal,
    LIBAROMA_CTL_SCROLL_CLIENT_HANDLERP handler
);

/*
 * Function    : libaroma_ctl_scroll_get_client
 * Return Value: LIBAROMA_CTL_SCROLL_CLIENTP
 * Descriptions: get scroll client data
 */
LIBAROMA_CTL_SCROLL_CLIENTP libaroma_ctl_scroll_get_client(
    LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_ctl_scroll_request_height
 * Return Value: byte
 * Descriptions: request height
 */
byte libaroma_ctl_scroll_request_height(LIBAROMA_CONTROLP ctl, int h);

/*
 * Function    : libaroma_ctl_scroll_set_height
 * Return Value: byte
 * Descriptions: set scroll height
 */
byte libaroma_ctl_scroll_set_height(LIBAROMA_CONTROLP ctl, int h);

/*
 * Function    : libaroma_ctl_scroll_get_height
 * Return Value: int
 * Descriptions: get scroll height
 */
int libaroma_ctl_scroll_get_height(LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_ctl_scroll_set_pos
 * Return Value: byte
 * Descriptions: set scroll position - directly
 */
byte libaroma_ctl_scroll_set_pos(LIBAROMA_CONTROLP ctl, int scroll_y);

/*
 * Function    : libaroma_ctl_scroll_request_pos
 * Return Value: byte
 * Descriptions: request to change scroll position - nicely
 */
byte libaroma_ctl_scroll_request_pos(LIBAROMA_CONTROLP ctl, int req_y);

/*
 * Function    : libaroma_ctl_scroll_is_visible
 * Return Value: byte
 * Descriptions: is this area visible?
 */
byte libaroma_ctl_scroll_is_visible(
   LIBAROMA_CONTROLP ctl, int y, int h
);

/*
 * Function    : libaroma_ctl_scroll_blit
 * Return Value: byte
 * Descriptions: blit canvas into client canvas
 */
byte libaroma_ctl_scroll_blit(
   LIBAROMA_CONTROLP ctl, 
   LIBAROMA_CANVASP canvas,
   int x, int y, int w, int h,
   byte erase
);

/*
 * Function    : libaroma_ctl_scroll
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_scroll(
    LIBAROMA_WINDOWP win, word id,
    int x, int y, int w, int h,
    word bg_color, byte flags
);

/*
 * Function    : libaroma_ctl_scroll_get_scroll
 * Return Value: int
 * Descriptions: get scroll position
 */
int libaroma_ctl_scroll_get_scroll(LIBAROMA_CONTROLP ctl, int * scroll_h);

/*
 * Function    : libaroma_ctl_scroll_isactive
 * Return Value: byte
 * Descriptions: check if control is active
 */
byte libaroma_ctl_scroll_isactive(LIBAROMA_CONTROLP ctl);

typedef void (*LIBAROMA_CTL_SCROLL_MINSCROLL_HANDLER)(
  LIBAROMA_CONTROLP,LIBAROMA_CANVASP,int);
/*
 * Function    : libaroma_ctl_scroll_set_min_scroll
 * Return Value: byte
 * Descriptions: set minimal scroll y
 */
byte libaroma_ctl_scroll_set_min_scroll(
   LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_SCROLL_MINSCROLL_HANDLER cb, int y
);

#endif /* __libaroma_ctl_scroll_h__ */
