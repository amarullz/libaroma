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
 * Filename    : filters.c
 * Description : drawing filter
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_filters_c__
#define __libaroma_filters_c__

/*
 * Function    : libaroma_draw_filter_saturation
 * Return Value: word
 * Descriptions: saturation filter
 */
word libaroma_draw_filter_saturation(
    word color, dword param) {
  byte r = libaroma_color_r(color);
  byte g = libaroma_color_g(color);
  byte b = libaroma_color_b(color);
  double P = sqrt(
               r * r * 0.299 +
               g * g * 0.587 +
               b * b * 0.114
             );
  double ch = ((double) param) / 255.0;
  r = MAX(0, MIN(0xff, P + (r - P) * ch));
  g = MAX(0, MIN(0xff, P + (g - P) * ch));
  b = MAX(0, MIN(0xff, P + (b - P) * ch));
  return libaroma_rgb(r, g, b);
} /* End of libaroma_draw_filter_saturation */



#endif /* __libaroma_filters_c__ */
