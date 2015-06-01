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
 * Filename    : sse_neon.h
 * Description : ARM Neon to SSE optimizer header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_sse_neon_h__
#define __libaroma_sse_neon_h__

#include "neon2sse.h" /* neon to sse header */

#include "sse_neon_dither.h"
#include "sse_neon_blt.h"
#include "sse_neon_color.h"
#include "sse_neon_alpha.h"

#define __engine_have_libaroma_btl16 1
#define __engine_have_libaroma_btl32 1
#define __engine_have_libaroma_dither_line 1
#define __engine_have_libaroma_dither_line_const 1
#define __engine_have_libaroma_color_set 1
#define __engine_have_libaroma_color_copy32 1
#define __engine_have_libaroma_color_copy16 1
#define __engine_have_libaroma_color_copy_rgb24 1
#define __engine_have_libaroma_color_copy_bgr24 1

#define __engine_have_libaroma_alpha_black 1
#define __engine_have_libaroma_alpha_const 1
#define __engine_have_libaroma_alpha_const_line 1
#define __engine_have_libaroma_alpha_px 1
#define __engine_have_libaroma_alpha_px_line 1
#define __engine_have_libaroma_alpha_rgba_fill 1
#define __engine_have_libaroma_alpha_rgba_fill_line 1
#define __engine_have_libaroma_alpha_mono 1
#define __engine_have_libaroma_alpha_multi_line 1



#endif /* __libaroma_sse_neon_h__ */

