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
 * Filename    : graph.h
 * Description : graph engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_graph_h__
#define __libaroma_graph_h__

/* Include AROMA Core Headers */
#include "graph/engine.h"       /* data engine */
#include "graph/canvas.h"       /* canvas */
#include "graph/fb.h"           /* framebuffer */
#include "graph/draw.h"         /* common drawing */
#include "graph/png.h"          /* png */
#include "graph/jpeg.h"         /* jpeg */
#include "graph/image.h"        /* image */
#include "graph/text.h"         /* font & text */

/*
 * Function    : libaroma_graph_init
 * Return Value: byte
 * Descriptions: init graph engine
 */
byte libaroma_graph_init();

/*
 * Function    : libaroma_graph_release
 * Return Value: byte
 * Descriptions: release graph engine
 */
byte libaroma_graph_release();

#endif /* __libaroma_graph_h__ */
