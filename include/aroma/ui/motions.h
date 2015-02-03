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
 * Function    : libaroma_cubic_bezier
 * Return Value: float
 * Descriptions: calculate cubic bezier value from t
 */
float libaroma_cubic_bezier(float x1,float y1,float x2,float y2,float t);
#define libaroma_cubic_bezier_ease(t) \
  libaroma_cubic_bezier(0.25,0.1,0.25,0.1,t)
#define libaroma_cubic_bezier_easein(t) \
  libaroma_cubic_bezier(0.42,0,1,1,t)
#define libaroma_cubic_bezier_easeout(t) \
  libaroma_cubic_bezier(0,0,0.58,1,t)
#define libaroma_cubic_bezier_easeinout(t) \
  libaroma_cubic_bezier(0.42,0,0.58,1,t) 
#define libaroma_cubic_bezier_linear(t) (t)

#endif /* __libaroma_motions_h__ */
