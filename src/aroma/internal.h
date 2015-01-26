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
 * Filename    : internal.h
 * Description : libaroma Internal Header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_internal_h__
#define __libaroma_internal_h__

/* check config - halt if undefined */
#ifndef LIBAROMA_FB_INIT_FUNCTION
  #error "framebuffer driver undefined. check config.h"
#endif
#ifndef LIBAROMA_HID_INIT_FUNCTION
  #error "hid driver undefined. check config.h"
#endif
#ifndef LIBAROMA_CONFIG_OS
  #error "config os undefined. check config.h"
#endif

/* libraries */
#include <zlib.h>             /* ZLIB */
#include <png.h>              /* PNG */
#include <Zip.h>              /* Minzip */
#include <ft2build.h>         /* Freetype 2 */
#include FT_FREETYPE_H
#include FT_TRUETYPE_IDS_H
#include FT_LCD_FILTER_H
#include FT_BITMAP_H
#include FT_OUTLINE_H
#include FT_ADVANCES_H
#include FT_TRUETYPE_TABLES_H
#include FT_GLYPH_H
#include <hb.h>               /* Harfbuzz-ng */
#include <hb-ucdn/ucdn.h>     /* Harfbuzz-UCDN */
#ifndef LIBAROMA_CONFIG_NOJPEG
#include <jinclude.h>         /* JPEG */
#include <jpeglib.h>
#include <jerror.h>
#include <setjmp.h>
#endif

/* declare driver init functions */
byte LIBAROMA_FB_INIT_FUNCTION(
    LIBAROMA_FBP);
byte LIBAROMA_HID_INIT_FUNCTION(
    LIBAROMA_HIDP);

#endif /* __libaroma_internal_h__ */
