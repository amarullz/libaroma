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
 * Filename    : ctl_pager.h
 * Description : pager control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_ctl_pager_h__
#define __libaroma_ctl_pager_h__

/* controller handler */
typedef struct _LIBAROMA_CTL_PAGER_CONTROLLER_HANDLER{
  void (*onscroll)(
    LIBAROMA_CONTROLP controller,
    LIBAROMA_CONTROLP pager,
    int cx,
    int fw,
    int pw,
    int target_page
  );
  
  void (*onscroll_finish)(
    LIBAROMA_CONTROLP controller,
    LIBAROMA_CONTROLP pager,
    int page_number
  );
} LIBAROMA_CTL_PAGER_CONTROLLER_HANDLER,
  *LIBAROMA_CTL_PAGER_CONTROLLER_HANDLERP;


/* controller */
typedef struct _LIBAROMA_CTL_PAGER_CONTROLLER{
  LIBAROMA_CONTROLP controller;
  LIBAROMA_CONTROLP pager;
  LIBAROMA_CTL_PAGER_CONTROLLER_HANDLERP handler;
} LIBAROMA_CTL_PAGER_CONTROLLER,
  * LIBAROMA_CTL_PAGER_CONTROLLERP;

/*
 * Function    : libaroma_ctl_pager
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_pager(
    LIBAROMA_WINDOWP win,
    word id, int pager_number,
    int x, int y, int w, int h
);

/*
 * Function    : libaroma_ctl_pager_get_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: get window
 */
LIBAROMA_WINDOWP libaroma_ctl_pager_get_window(LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_ctl_pager_set_active_page
 * Return Value: byte
 * Descriptions: set active page
 */
byte libaroma_ctl_pager_set_active_page(
  LIBAROMA_CONTROLP ctl, int page_id,double velocity);

/*
 * Function    : libaroma_ctl_pager_get_active_page
 * Return Value: int
 * Descriptions: get active page index
 */
int libaroma_ctl_pager_get_active_page(LIBAROMA_CONTROLP ctl);

/*
 * Function    : libaroma_ctl_pager_set_controller
 * Return Value: byte
 * Descriptions: set tab controller
 */
byte libaroma_ctl_pager_set_controller(
  LIBAROMA_CONTROLP ctl, 
  LIBAROMA_CTL_PAGER_CONTROLLERP controller);

/*
 * Function    : libaroma_ctl_pager_get_pages
 * Return Value: int
 * Descriptions: get number of pages
 */
int libaroma_ctl_pager_get_pages(LIBAROMA_CONTROLP ctl);

#endif /* __libaroma_ctl_pager_h__ */
