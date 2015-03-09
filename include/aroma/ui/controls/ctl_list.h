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
 * Filename    : ctl_list.h
 * Description : list control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 04/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_ctl_list_h__
#define __libaroma_ctl_list_h__

/* flag aliases */
#define LIBAROMA_CTL_LIST_NO_INDICATOR LIBAROMA_CTL_SCROLL_NO_INDICATOR
#define LIBAROMA_CTL_LIST_WITH_SHADOW LIBAROMA_CTL_SCROLL_WITH_SHADOW
#define LIBAROMA_CTL_LIST_WITH_HANDLE LIBAROMA_CTL_SCROLL_WITH_HANDLE

/* item flags */
#define LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH    0x1

/* global item flags */
#define LIBAROMA_LISTITEM_WITH_SEPARATOR        0x2

/* item message */
#define LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_DOWN   0x1
#define LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_UP     0x2
#define LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_MOVE   0x3
#define LIBAROMA_CTL_LIST_ITEM_MSG_TOUCH_CANCEL 0x4
#define LIBAROMA_CTL_LIST_ITEM_MSG_THREAD       0x10
#define LIBAROMA_CTL_LIST_ITEM_MSG_ACTIVATED    0x11
#define LIBAROMA_CTL_LIST_ITEM_MSG_INACTIVATED  0x12


/* list item */
typedef struct _LIBAROMA_CTL_LIST_ITEM LIBAROMA_CTL_LIST_ITEM;
typedef struct _LIBAROMA_CTL_LIST_ITEM * LIBAROMA_CTL_LIST_ITEMP;

/* item callbacks */
typedef void (*LIBAROMA_CTL_LISTCB_DRAW) \
  (LIBAROMA_CTL_LIST_ITEMP,LIBAROMA_CANVASP,word);
  /* item, canvas, item index, number of items */
typedef void (*LIBAROMA_CTL_LISTCB_DESTROY) \
  (LIBAROMA_CTL_LIST_ITEMP);
typedef byte (*LIBAROMA_CTL_LISTCB_MESSAGE) \
  (LIBAROMA_CTL_LIST_ITEMP, byte, dword, int, int);
  /* list, message, param, x, y */
  
/* item structure */
struct _LIBAROMA_CTL_LIST_ITEM{
  int y;
  int h;
  int id;
  LIBAROMA_CONTROLP ctl;
  byte flags;
  byte signature;
  voidp internal;
  LIBAROMA_CTL_LISTCB_MESSAGE message;
  LIBAROMA_CTL_LISTCB_DRAW draw;
  LIBAROMA_CTL_LISTCB_DESTROY destroy;
  LIBAROMA_CTL_LIST_ITEMP next;
  LIBAROMA_CTL_LIST_ITEMP prev;
};

/*
 * Function    : libaroma_ctl_list
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create list scroll control
 */
LIBAROMA_CONTROLP libaroma_ctl_list(
    LIBAROMA_WINDOWP win, word id,
    int x, int y, int w, int h,
    int vertical_padding,
    word bg_color, byte flags
);

/*
 * Function    : libaroma_ctl_list_get_item_internal
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: get item at index or id
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_ctl_list_get_item_internal(
  LIBAROMA_CONTROLP ctl, int index, byte find_id
);

/*
 * Function    : libaroma_ctl_list_item_unreg_thread
 * Return Value: byte
 * Descriptions: unregister item thread
 */
byte libaroma_ctl_list_item_unreg_thread(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_LIST_ITEMP item);

/*
 * Function    : libaroma_ctl_list_item_reg_thread
 * Return Value: byte
 * Descriptions: register item thread
 */
byte libaroma_ctl_list_item_reg_thread(
    LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_LIST_ITEMP item);

/*
 * Function    : libaroma_ctl_list_del_itemp_internal
 * Return Value: byte
 * Descriptions: del item from list
 */
byte libaroma_ctl_list_del_itemp_internal(
  LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_LIST_ITEMP f
);

/*
 * Function    : libaroma_ctl_list_del_item_internal
 * Return Value: byte
 * Descriptions: del list item by id/index
 */
byte libaroma_ctl_list_del_item_internal(
  LIBAROMA_CONTROLP ctl, int index, byte find_id
);

/*
 * Function    : libaroma_ctl_list_is_valid
 * Return Value: byte
 * Descriptions: check control, if it was valid list control
 */
byte libaroma_ctl_list_is_valid(LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_ctl_list_item_setheight
 * Return Value: byte
 * Descriptions: update item height
 */
byte libaroma_ctl_list_item_setheight(LIBAROMA_CTL_LIST_ITEMP item, int h);

/*
 * Function    : libaroma_ctl_list_add_item_internal
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: add item internally
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_ctl_list_add_item_internal(
    LIBAROMA_CONTROLP ctl,
    int id,
    int height,
    byte signature,
    byte flags,
    voidp internal,
    LIBAROMA_CTL_LISTCB_MESSAGE message,
    LIBAROMA_CTL_LISTCB_DRAW draw,
    LIBAROMA_CTL_LISTCB_DESTROY destroy,
    int at_index);

#define libaroma_ctl_list_isactive(ctl) libaroma_ctl_scroll_isactive(ctl)

/*******************************************************************************
 *
 * include list item client headers
 *
 ******************************************************************************/
#include "list/listitem_option.h"

#endif /* __libaroma_ctl_list_h__ */
