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
 * Filename    : messages.h
 * Description : message queue engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_messages_h__
#define __libaroma_messages_h__

/* Message Structure */
/*
 * Structure   : _LIBAROMA_MSG
 * Typedef     : LIBAROMA_MSG, * LIBAROMA_MSGP
 * Descriptions: message structure
 */
typedef struct _LIBAROMA_MSG LIBAROMA_MSG;
typedef struct _LIBAROMA_MSG * LIBAROMA_MSGP;
struct _LIBAROMA_MSG{
  byte    msg;    /* message name - LIBAROMA_MSG_ */
  byte    state;  /* state parameter */
  int     key;    /* key code */
  int     x;      /* x parameter */
  int     y;      /* y parameter */
  voidp   d;      /* pointer parameter */
  long    sent;   /* send time */
};

/* Message Values */
#define LIBAROMA_MSG_USR(X)       (0xC0|X)  /* user messages */
#define LIBAROMA_MSG_SYS(X)       (0x80|X)  /* system/window messages */
#define LIBAROMA_MSG_KEY(X)       (0x40|X)  /* key event */
#define LIBAROMA_MSG_NONE         0x00      /* not valid message */
#define LIBAROMA_MSG_EXIT         0x01      /* should break the dispatch */
#define LIBAROMA_MSG_OK           0x02      /* ok message */
#define LIBAROMA_MSG_BACK         0x03      /* back message */
#define LIBAROMA_MSG_NEXT         0x04      /* next message */
#define LIBAROMA_MSG_MENU         0x05      /* show menu event */
#define LIBAROMA_MSG_TOUCH        0x06      /* touch event */
#define LIBAROMA_MSG_KEY_SELECT   LIBAROMA_MSG_KEY(LIBAROMA_HID_EV_RET_SELECT)
#define LIBAROMA_MSG_KEY_MENU     LIBAROMA_MSG_KEY(LIBAROMA_HID_EV_RET_MENU)
#define LIBAROMA_MSG_KEY_BACK     LIBAROMA_MSG_KEY(LIBAROMA_HID_EV_RET_BACK)
#define LIBAROMA_MSG_KEY_UP       LIBAROMA_MSG_KEY(LIBAROMA_HID_EV_RET_UP)
#define LIBAROMA_MSG_KEY_DOWN     LIBAROMA_MSG_KEY(LIBAROMA_HID_EV_RET_DOWN)
#define LIBAROMA_MSG_KEY_RAWKEY   LIBAROMA_MSG_KEY(LIBAROMA_HID_EV_RET_RAWKEY)
#define LIBAROMA_MSG_ISUSER(X)    ((0xC0&X)==0xC0)  /* user event */
#define LIBAROMA_MSG_ISSYS(X)     ((0xC0&X)==0x80)  /* sys event */
#define LIBAROMA_MSG_ISKEY(X)     ((0xC0&X)==0x40)  /* key event */

/*
 * Function    : libaroma_msg_start
 * Return Value: void
 * Descriptions: start receiving messages
 */
void libaroma_msg_start();

/*
 * Function    : libaroma_msg_stop
 * Return Value: void
 * Descriptions: stop receiving messages
 */
void libaroma_msg_stop();

/*
 * Function    : libaroma_msg_post
 * Return Value: byte
 * Descriptions: post user message
 */
byte libaroma_msg_post(
  byte    msg,
  byte    state,
  int     key,
  int     x,
  int     y,
  voidp   d
);

/*
 * Function    : libaroma_msg
 * Return Value: byte
 * Descriptions: get message from queue
 */
byte libaroma_msg(
    LIBAROMA_MSGP msg);

#endif /* __libaroma_messages_h__ */
