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
 * Filename    : window.h
 * Description : window api
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_window_h__
#define __libaroma_window_h__

/*
 * Structure   : _LIBAROMA_WINDOW
 * Typedef     : LIBAROMA_WINDOW, * LIBAROMA_WINDOWP
 * Descriptions: window structure
 */
typedef struct _LIBAROMA_WINDOW LIBAROMA_WINDOW;
typedef struct _LIBAROMA_WINDOW * LIBAROMA_WINDOWP;
struct _LIBAROMA_WINDOW{
  LIBAROMA_CANVASP draw_canvas;
  LIBAROMA_CANVASP bg_canvas;
  int x;
  int y;
  int childn;
  
};


#endif /* __libaroma_window_h__ */
