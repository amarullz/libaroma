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
 * Filename    : listitem_check.h
 * Description : list item check
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 07/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_listitem_check_h__
#define __libaroma_listitem_check_h__

/* check signature */
#define LIBAROMA_LISTITEM_CHECK_INDENT_NOICON      0x0100
#define LIBAROMA_LISTITEM_CHECK_SMALL_ICON         0x0200
#define LIBAROMA_LISTITEM_CHECK_SHARED_ICON        0x0400
#define LIBAROMA_LISTITEM_CHECK_FREE_ICON          0x0800
#define LIBAROMA_LISTITEM_CHECK_SWITCH             0x1000
#define LIBAROMA_LISTITEM_CHECK_LEFT_CONTROL       0x2000
#define LIBAROMA_LISTITEM_CHECK_OPTION             0x4000

#define LIBAROMA_LISTITEM_CB_UNSELECTED           0x0
#define LIBAROMA_LISTITEM_CB_SELECTED             0x1
#define LIBAROMA_LISTITEM_CB_FREE                 0x2

/* Onchange cb */
typedef byte (*LIBAROMA_LISTITEM_CB)(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CTL_LIST_ITEMP item,
  int id,
  byte checked,
  voidp data,
  byte state
);

/* Set callback */
byte libaroma_listitem_check_set_cb(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_LIST_ITEMP item,
    LIBAROMA_LISTITEM_CB cb,
    voidp data);

/* set selected */
byte libaroma_listitem_set_selected(
  LIBAROMA_CONTROLP ctl,
  LIBAROMA_CTL_LIST_ITEMP item,
  byte selected);
  
/*
 * Function    : libaroma_listitem_check
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: create check item
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_listitem_check(
    LIBAROMA_CONTROLP ctl,
    int id,
    byte selected,
    const char * main_text,
    const char * extra_text,
    LIBAROMA_CANVASP icon,
    word flags,
    int at_index);

#endif /* __libaroma_listitem_check_h__ */
