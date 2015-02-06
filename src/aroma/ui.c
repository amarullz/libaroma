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
 * Filename    : ui.c
 * Description : user interface & hid handler
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_ui_c__
#define __libaroma_ui_c__

/* ui internal header */
#include "ui/ui_internal.h"

/* ui modules */
#include "ui/hid.c"
#include "ui/messages.c"
#include "ui/motions.c"
#include "ui/window_manager.c"
#include "ui/window.c"
#include "ui/control.c"

/* control set - libaroma_ctl_* */
#include "ui/controls/ctl_label.c"
#include "ui/controls/ctl_progress.c"
#include "ui/controls/ctl_button.c"

#endif /* __libaroma_ui_c__ */
