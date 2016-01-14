/********************************************************************[libaroma]*
 * Copyright (C) 2011-2016 Ahmad Amarullah (http://amarullz.com/)
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
 * Filename    : window.h
 * Description : window api
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 13/01/16 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_dialog_h__
#define __libaroma_dialog_h__

#define LIBAROMA_DIALOG_DIM_PARENT    0x01
#define LIBAROMA_DIALOG_WITH_SHADOW   0x02
#define LIBAROMA_DIALOG_ACCENT_BUTTON 0x04
#define LIBAROMA_DIALOG_CANCELABLE    0x08

typedef struct{
  /* window position */
  int x;
  int y;
  int w;
  int h;
  byte flags;
  LIBAROMA_CANVASP bg;
} LIBAROMA_DIALOG_DATA,
  * LIBAROMA_DIALOG_DATAP;


LIBAROMA_WINDOWP libaroma_dialog_window(
  int w, int h, byte flags, LIBAROMA_COLORSETP colorset
);

byte libaroma_dialog_free(
  LIBAROMA_WINDOWP win
);

int libaroma_dialog_confirm(
  const char * title,
  const char * message,
  const char * button1,
  const char * button2,
  LIBAROMA_COLORSETP colorset,
  byte flags
);
  
#endif /* __libaroma_dialog_h__ */
