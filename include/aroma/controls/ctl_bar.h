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
 * Filename    : ctl_bar.h
 * Description : bar control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 01/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_ctl_bar_h__
#define __libaroma_ctl_bar_h__

#define LIBAROMA_CTL_BAR_TOOL_ICON_FREE        0x1
#define LIBAROMA_CTL_BAR_TOOL_ICON_SHARED      0x2
#define LIBAROMA_CTL_BAR_TOOL_SWITCH           0x4
#define LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED   0x8
#define LIBAROMA_CTL_BAR_TOOL_SWITCH_CHANGED   0x10

#define LIBAROMA_CTL_BAR_ICON_DRAWER            1
#define LIBAROMA_CTL_BAR_ICON_ARROW             2
#define LIBAROMA_CTL_BAR_ICON_DRAWER_TO_ARROW   3
#define LIBAROMA_CTL_BAR_ICON_ARROW_TO_DRAWER   4

/* bar tool item */
typedef struct {
  char * title;
  LIBAROMA_CANVASP icon;
  byte icon_flags;
  byte id;
} LIBAROMA_CTL_BAR_TOOL, * LIBAROMA_CTL_BAR_TOOLP;

/* bar tools */
typedef struct {
  int n;
  LIBAROMA_CTL_BAR_TOOL * tools;
} LIBAROMA_CTL_BAR_TOOLS, * LIBAROMA_CTL_BAR_TOOLSP;

/*
 * Function    : libaroma_ctl_bar_tools
 * Return Value: LIBAROMA_CTL_BAR_TOOLP
 * Descriptions: new bar tools
 */
LIBAROMA_CTL_BAR_TOOLSP libaroma_ctl_bar_tools(int count);

/*
 * Function    : libaroma_ctl_bar_tools_free
 * Return Value: byte
 * Descriptions: free tools
 */
byte libaroma_ctl_bar_tools_free(LIBAROMA_CTL_BAR_TOOLSP tools);

/*
 * Function    : libaroma_ctl_bar_tools_set
 * Return Value: byte
 * Descriptions: set tool content
 */
byte libaroma_ctl_bar_tools_set(
  LIBAROMA_CTL_BAR_TOOLSP tools,
  int index,
  byte id,
  char * title,
  LIBAROMA_CANVASP icon,
  byte flags
);

/******************** BAR CONTROL ********************/
/*
 * Function    : libaroma_ctl_bar
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_bar(
    LIBAROMA_WINDOWP win,
    word id,
    int x, int y, int w, int h,
    char * title,
    word bgcolor,
    word selcolor
);

/*
 * Function    : libaroma_ctl_bar_update
 * Return Value: byte
 * Descriptions: Update bar drawing
 */
byte libaroma_ctl_bar_update(LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_ctl_bar_set_title
 * Return Value: byte
 * Descriptions: set title
 */
byte libaroma_ctl_bar_set_title(LIBAROMA_CONTROLP ctl,
  char * title, byte update_now);

/*
 * Function    : libaroma_ctl_bar_set_subtitle
 * Return Value: byte
 * Descriptions: set subtitle
 */
byte libaroma_ctl_bar_set_subtitle(LIBAROMA_CONTROLP ctl,
  char * subtitle, byte update_now);
  
/*
 * Function    : libaroma_ctl_bar_set_icon_mask
 * Return Value: byte
 * Descriptions: set tools
 */
byte libaroma_ctl_bar_set_touchable_title(LIBAROMA_CONTROLP ctl,
  byte touchable);

/*
 * Function    : libaroma_ctl_bar_set_color
 * Return Value: byte
 * Descriptions: set color
 */
byte libaroma_ctl_bar_set_color(LIBAROMA_CONTROLP ctl,
  word bgcolor, word selcolor, byte update_now);

/*
 * Function    : libaroma_ctl_bar_set_tools
 * Return Value: byte
 * Descriptions: set tools
 */
byte libaroma_ctl_bar_set_tools(LIBAROMA_CONTROLP ctl,
  LIBAROMA_CTL_BAR_TOOLSP tools, byte update_now);

/*
 * Function    : libaroma_ctl_bar_set_menuid
 * Return Value: byte
 * Descriptions: set menu message id, set 0 to disable menu
 */
byte libaroma_ctl_bar_set_menuid(LIBAROMA_CONTROLP ctl,
  word menu_id, byte update_now);

/*
 * Function    : libaroma_ctl_bar_set_icon
 * Return Value: byte
 * Descriptions: set main icon
 */
byte libaroma_ctl_bar_set_icon(LIBAROMA_CONTROLP ctl,
  LIBAROMA_CANVASP icon, byte free, byte type, byte update_now);

/*
 * Function    : libaroma_ctl_bar_set_icon_mask
 * Return Value: byte
 * Descriptions: set tools
 */
byte libaroma_ctl_bar_set_icon_mask(LIBAROMA_CONTROLP ctl,
  byte ismask, byte update_now);

/*
 * Function    : libaroma_ctl_bar_set_textgap
 * Return Value: byte
 * Descriptions: set text gap
 */
byte libaroma_ctl_bar_set_textgap(LIBAROMA_CONTROLP ctl,
  byte wide, byte update_now);

#endif /* __libaroma_ctl_bar_h__ */
