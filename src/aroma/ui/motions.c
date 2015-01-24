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
 * Filename    : motions.c
 * Description : motions and physics engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_motions_c__
#define __libaroma_motions_c__

/*
 * Function    : libaroma_cubic_bezier
 * Return Value: LIBAROMA_CUBIC_BEZIERP
 * Descriptions: create cubic bezier
 */
LIBAROMA_CUBIC_BEZIERP libaroma_cubic_bezier(
    float p1,
    float p2,
    float p3,
    float p4) {
  /* init cubic bezier */
  LIBAROMA_CUBIC_BEZIERP cbez =
    (LIBAROMA_CUBIC_BEZIERP) malloc(sizeof(LIBAROMA_CUBIC_BEZIER));
  cbez->cx = 3 * p1;
  cbez->bx = 3 * (p3 - p1) - cbez->cx;
  cbez->ax = 1 - cbez->cx - cbez->bx;
  cbez->cy = 3 * p2;
  cbez->by = 3 * (p4 - p2) - cbez->cy;
  cbez->ay = 1 - cbez->cy - cbez->by;
  return cbez;
} /* End of libaroma_cubic_bezier */

/*
 * Function    : libaroma_cubic_bezier_free
 * Return Value: byte
 * Descriptions: free cubic bezier
 */
byte libaroma_cubic_bezier_free(
    LIBAROMA_CUBIC_BEZIERP cbez) {
  if (cbez != NULL) {
    free(cbez);
    return 1;
  }
  return 0;
} /* End of libaroma_cubic_bezier_free */

/*
 * Function    : libaroma_cubic_bezier_get
 * Return Value: float
 * Descriptions: get cubic bezier value from t
 */
float libaroma_cubic_bezier_get(
    LIBAROMA_CUBIC_BEZIERP cbez,
    float t) {
  float x = t;
  int i = 0;
  int z;
  while (i < 5) {
    z = (t * (cbez->cx + t * (cbez->bx + t * cbez->ax))) - t;
    if (abs(z) < 1e-3) {
      break;
    }
    x = x - z / (cbez->cx + t * (2 * cbez->bx + 3 * cbez->ax * t));
    i++;
  }
  return (x * (cbez->cy + x * (cbez->by + x * cbez->ay)));
} /* End of libaroma_cubic_bezier_get */




#endif /* __libaroma_motions_c__ */
