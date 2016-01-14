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
 * Filename    : color_manager.h
 * Description : color manager
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 17/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_color_manager_h__
#define __libaroma_color_manager_h__

typedef struct {
  word primary;
  word primary_text;
  word primary_icon;
  word primary_light;
  word accent;
  word window_bg;
  word window_text;
  word control_bg;
  word control_primary_text;
  word control_secondary_text;
  word divider;
  word dialog_bg;
  word dialog_primary_text;
  word dialog_secondary_text;
} LIBAROMA_COLORSET, * LIBAROMA_COLORSETP;
byte libaroma_colorset(LIBAROMA_COLORSETP colorset, byte type);
LIBAROMA_COLORSETP libaroma_colorget(
  LIBAROMA_CONTROLP ctl, LIBAROMA_WINDOWP win);

#endif /* __libaroma_color_manager_h__ */
