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
 * Filename    : types.h
 * Description : libaroma standard types
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_types_h__
#define __libaroma_types_h__

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

/* primitive unsigneds */
typedef uint8_t byte;
typedef uint16_t word;
typedef uint32_t dword;

/* primitive pointers */
typedef byte * bytep;
typedef word * wordp;
typedef dword * dwordp;
#ifndef ZLIB_H
typedef void * voidp;
#endif

/* unicode char */
typedef uint32_t uchar;
typedef uchar * ucharp;

#endif /* __libaroma_types_h__ */
