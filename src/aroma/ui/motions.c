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

float _libaroma_cubic_bezier_curve(float v1,float v2,float t){
	float v = 1 - t;
	return (3*v*v*t*v1+3*v*t*t*v2+t*t*t);
}
/*
 * Function    : libaroma_cubic_bezier
 * Return Value: float
 * Descriptions: calculate cubic bezier value from t
 */
float libaroma_cubic_bezier(float x1,float y1,float x2,float y2,float t) {
	return _libaroma_cubic_bezier_curve(x1,x2,
	  _libaroma_cubic_bezier_curve(y1,y2,t)
	);
} /* End of libaroma_cubic_bezier */

#endif /* __libaroma_motions_c__ */
