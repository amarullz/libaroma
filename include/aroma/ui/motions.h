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
 * Filename    : motions.h
 * Description : motions and physics engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_motions_h__
#define __libaroma_motions_h__

/*
 * Structure   : _LIBAROMA_CUBIC_BEZIER
 * Typedef     : LIBAROMA_CUBIC_BEZIER, * LIBAROMA_CUBIC_BEZIERP
 * Descriptions: cubic bezier
 */
typedef struct _LIBAROMA_CUBIC_BEZIER LIBAROMA_CUBIC_BEZIER;
typedef struct _LIBAROMA_CUBIC_BEZIER * LIBAROMA_CUBIC_BEZIERP;
struct _LIBAROMA_CUBIC_BEZIER{
  float cx;
  float bx;
  float ax;
  float cy;
  float by;
  float ay;
};

/*
 * Function    : libaroma_cubic_bezier
 * Return Value: LIBAROMA_CUBIC_BEZIERP
 * Descriptions: create cubic bezier
 */
LIBAROMA_CUBIC_BEZIERP libaroma_cubic_bezier(
    float p1,
    float p2,
    float p3,
    float p4);

/*
 * Function    : libaroma_cubic_bezier_free
 * Return Value: byte
 * Descriptions: free cubic bezier
 */
byte libaroma_cubic_bezier_free(
    LIBAROMA_CUBIC_BEZIERP cbez);

/*
 * Function    : libaroma_cubic_bezier_get
 * Return Value: float
 * Descriptions: get cubic bezier value from t
 */
float libaroma_cubic_bezier_get(
    LIBAROMA_CUBIC_BEZIERP cbez,
    float t);

#endif /* __libaroma_motions_h__ */
