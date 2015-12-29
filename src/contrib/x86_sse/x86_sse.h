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
 * Filename    : x86_sse.h
 * Description : x86 SSE optimizer header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_x86_sse_h__
#define __libaroma_x86_sse_h__

#ifdef __SSE3__
#ifdef __SSSE3__

#include <xmmintrin.h>     /* SSE   */
#include <emmintrin.h>     /* SSE2  */
#include <pmmintrin.h>     /* SSE3  */
#include <tmmintrin.h>     /* SSSE3 */

#include "x86_sse_dither.h"
// #include "x86_sse_blt.h"
#include "x86_sse_color.h"
#include "x86_sse_alpha.h"

#endif
#endif

#endif /* __libaroma_x86_sse_h__ */

