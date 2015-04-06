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
 * Filename    : ctl_tabs.h
 * Description : Tabs control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 30/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_ctl_tabs_h__
#define __libaroma_ctl_tabs_h__

/*
 * Function    : libaroma_ctl_tabs
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_tabs(
    LIBAROMA_WINDOWP win,
    word id,
    int x, int y, int w, int h,
    word bgcolor,
    word selcolor,
    int hpad,
    int left_pad
);

/*
 * Function    : libaroma_ctl_tabs_set_pager
 * Return Value: byte
 * Descriptions: set pager
 */
byte libaroma_ctl_tabs_set_pager(
  LIBAROMA_CONTROLP ctl, LIBAROMA_CONTROLP pager);

/*
 * Function    : libaroma_ctl_tabs_set_texts
 * Return Value: byte
 * Descriptions: set tab texts
 */
byte libaroma_ctl_tabs_set_texts(LIBAROMA_CONTROLP ctl,
  char ** texts, int textn, byte update_now);

/*
 * Function    : libaroma_ctl_bar_set_color
 * Return Value: byte
 * Descriptions: set color
 */
byte libaroma_ctl_tabs_set_color(LIBAROMA_CONTROLP ctl,
  word bgcolor, word selcolor, byte update_now);
  
#endif /* __libaroma_ctl_tabs_h__ */
