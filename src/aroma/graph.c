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
 * Filename    : graph.c
 * Description : graph engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_graph_c__
#define __libaroma_graph_c__

/* Include AROMA Core Headers */
#include "graph/engine.c"       /* data engine */
#include "graph/canvas.c"       /* canvas */
#include "graph/fb.c"           /* framebuffer */
#include "graph/draw.c"         /* common drawing */
#include "graph/png.c"          /* png */
#include "graph/jpeg.c"         /* jpeg */
#include "graph/image.c"        /* image */
#include "graph/text.c"         /* font & text */

/*
 * Function    : libaroma_graph_init
 * Return Value: byte
 * Descriptions: init graph engine
 */
byte libaroma_graph_init() {
  if (libaroma_fb_init() == NULL) {
    return 0;
  }
  if (!libaroma_font_init()) {
    return 0;
  }
  return 1;
} /* End of libaroma_graph_init */

/*
 * Function    : libaroma_graph_release
 * Return Value: byte
 * Descriptions: release graph engine
 */
byte libaroma_graph_release() {
  libaroma_font_release();
  libaroma_fb_release();
  return 1;
} /* End of libaroma_graph_release */



#endif /* __libaroma_graph_c__ */
