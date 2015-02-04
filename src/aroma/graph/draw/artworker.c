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
 * Filename    : artworker.c
 * Description : art drawing
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_artworker_c__
#define __libaroma_artworker_c__

/*
 * Function    : libaroma_art_busy_progress
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: create busy progress sprite canvas
 */
LIBAROMA_CANVASP libaroma_art_busy_progress(
    word basecolor) {
  int i, j, k;
  
  /* calculate size */
  int dp1   = libaroma_dp(1);
  int dp36  = libaroma_dp(36);
  int dp72  = libaroma_dp(72);
  int dp144 = dp72 * 2;
  int dp288 = dp144 * 2;
  int dp28  = libaroma_dp(28);
  int dp56  = dp28 * 2;
  int dp116 = dp144 - dp28;
  
  /* main + temp canvas */
  LIBAROMA_CANVASP load  = libaroma_canvas_ex(dp72 * 13, dp72, 1);
  if (!load){
    return NULL;
  }
  LIBAROMA_CANVASP load1 = libaroma_canvas_ex(dp288, dp288, 1);
  if (!load1){
    libaroma_canvas_free(load);
    return NULL;
  }
  LIBAROMA_CANVASP load2 = libaroma_canvas_ex(dp56, dp56, 1);
  if (!load2){
    libaroma_canvas_free(load1);
    libaroma_canvas_free(load);
    return NULL;
  }
  
  /* cleanup */
  libaroma_canvas_setcolor(load, 0x0000, 0);
  
  /* frame loop */
  for (j = 0; j < 13; j++) {
    /* angle per frame */
    double added = ((27.69230769230769 * j) / 360);
    
    /* cleanup load1 */
    libaroma_canvas_setcolor(load1, 0x0000, 0);
    
    /* circle draw */
    for (i = 0; i < 12; i++) {
      /* position */
      double angle = 2 * __PI * ((((double) i) / 12.0) + added);
      int xpos     = round(dp116 * cos(angle));
      int ypos     = round(dp116 * sin(angle));
      
      /* cleanup load2 */
      libaroma_canvas_setcolor(load2, 0x0000, 0);
      int b = 2;
      
      /* draw */
      libaroma_gradient_ex(
        load2,
        b * dp1,
        b * dp1,
        dp56 - (b * dp1 * 2),
        dp56 - (b * dp1 * 2),
        basecolor,
        basecolor,
        dp28,
        0x1111,
        MIN(0xff, ((i + 1) * 18) + 39),
        MIN(0xff, ((i + 1) * 18))
      );
      
      /* Stretch Copy to load1 */
      libaroma_draw_scale_smooth(
        load1,
        load2,
        dp144 + xpos - dp28,
        dp144 + ypos - dp28,
        dp56,
        dp56,
        0,
        0,
        dp56,
        dp56
      );
    }
    
    /* Stretch Copy to load canvas */
    libaroma_draw_scale_smooth(
      load,
      load1,
      j * dp72,
      0,
      dp72,
      dp72,
      0,
      0,
      dp288,
      dp288
    );
  }
  
  /* free temp canvases */
  libaroma_canvas_free(load1);
  libaroma_canvas_free(load2);
  
  /* return canvas */
  LIBAROMA_CANVASP load_out =
    libaroma_canvas_ex(dp36 * 13, dp36, 1);
  if (!load_out){
    libaroma_canvas_free(load);
    return NULL;
  }
  libaroma_canvas_setcolor(load_out, 0x0000, 0);
  
  /* draw */
  libaroma_draw_scale_smooth(
    load_out, load,
    0, 0, dp36 * 13, dp36,
    0, 0, dp72 * 13, dp72
  );
  libaroma_canvas_free(load);
  return load_out;
} /* End of libaroma_art_busy_progress */

#endif /* __libaroma_artworker_c__ */
