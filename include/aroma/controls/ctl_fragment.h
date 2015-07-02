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
 * Filename    : ctl_fragment.h
 * Description : Fragment Control Header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_ctl_fragment_h__
#define __libaroma_ctl_fragment_h__

/*
 * Function    : libaroma_ctl_fragment
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_fragment(
    LIBAROMA_WINDOWP win,
    word id,
    int x, int y, int w, int h
);

/*
 * Function    : libaroma_ctl_fragment_new_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: new window
 */
LIBAROMA_WINDOWP libaroma_ctl_fragment_new_window(
  LIBAROMA_CONTROLP ctl, int id);

/*
 * Function    : libaroma_ctl_fragment_del_window
 * Return Value: byte
 * Descriptions: delete window
 */
byte libaroma_ctl_fragment_del_window(
  LIBAROMA_CONTROLP ctl, int id);
  
/*
 * Function    : libaroma_ctl_fragment_get_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: get window
 */
LIBAROMA_WINDOWP libaroma_ctl_fragment_get_window(
  LIBAROMA_CONTROLP ctl, int id);

/*
 * Function    : libaroma_ctl_fragment_set_active_window
 * Return Value: byte
 * Descriptions: set active page
 */
byte libaroma_ctl_fragment_set_active_window(
  LIBAROMA_CONTROLP ctl, int id,
  byte anitype, long duration, byte remove_prev,
  LIBAROMA_TRANSITION_CB transcb,
  LIBAROMA_RECTP rect_start,
  LIBAROMA_RECTP rect_end
  );

/*
 * Function    : libaroma_ctl_fragment_get_active_window
 * Return Value: int
 * Descriptions: get active window id
 */
 /*
int libaroma_ctl_fragment_get_active_window(LIBAROMA_CONTROLP ctl);
*/
#endif /* __libaroma_ctl_fragment_h__ */
