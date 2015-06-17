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
 * Filename    : ui.h
 * Description : user interface & hid handler
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_ui_h__
#define __libaroma_ui_h__

/*
 * typedef : Window & Control Structure
 */
typedef struct _LIBAROMA_WINDOW LIBAROMA_WINDOW;
typedef struct _LIBAROMA_WINDOW * LIBAROMA_WINDOWP;
typedef struct _LIBAROMA_CONTROL LIBAROMA_CONTROL;
typedef struct _LIBAROMA_CONTROL * LIBAROMA_CONTROLP;

/* include module headers */
#include "ui/window.h"
#include "ui/window_manager.h"
#include "ui/control.h"

/* libaroma control set */
#include "controls/ctl_bar.h"
#include "controls/ctl_label.h"
#include "controls/ctl_progress.h"
#include "controls/ctl_button.h"
#include "controls/ctl_pager.h"
#include "controls/ctl_tabs.h"
#include "controls/ctl_scroll.h"
#include "controls/ctl_list.h"

/* list items */
#include "controls/listitem/listitem_check.h"
#include "controls/listitem/listitem_option.h"
#include "controls/listitem/listitem_image.h"

#endif /* __libaroma_ui_h__ */
