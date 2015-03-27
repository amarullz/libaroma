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
 * Filename    : artworker.h
 * Description : artworker
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 25/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_artworker_h__
#define __libaroma_artworker_h__

/*
 * Function    : libaroma_art_arrowdrawer
 * Return Value: byte
 * Descriptions: draw arrow drawer
 */
byte libaroma_art_arrowdrawer(
  LIBAROMA_CANVASP dest,
  float t,
  byte from_arrow,
  int dx,
  int dy,
  int size,
  word color,
  byte alpha,
  byte is_mask,
  float aliasing);


#endif /* __libaroma_artworker_h__ */
