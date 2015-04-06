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
 * Filename    : text_defs.h
 * Description : text defines & macros
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_text_defs_h__
#define __libaroma_text_defs_h__

/* font */
#define _LIBAROMA_TEXT_FONT(id, size)   LIBAROMA_FONT(id,size)

/* text rules */
#define _LIBAROMA_TEXT_FIXED_COLOR	    0x01
#define _LIBAROMA_TEXT_FIXED_FONT		    0x02
#define _LIBAROMA_TEXT_FIXED_SIZE		    0x04
#define _LIBAROMA_TEXT_FIXED_ALIGN	    0x08
#define _LIBAROMA_TEXT_FIXED_INDENT	    0x10
#define _LIBAROMA_TEXT_SINGLELINE		    0x20
#define _LIBAROMA_TEXT_NOIMAGE  		    0x40
#define _LIBAROMA_TEXT_NOHR  		        0x80

/* inline style */
#define _LIBAROMA_TEXT_BOLD              0x04
#define _LIBAROMA_TEXT_ITALIC            0x08
#define _LIBAROMA_TEXT_UNDERLINE         0x10
#define _LIBAROMA_TEXT_STRIKEOUT         0x20

/* align */
#define _LIBAROMA_TEXT_ALIGN_LEFT        0x00
#define _LIBAROMA_TEXT_ALIGN_CENTER      0x01
#define _LIBAROMA_TEXT_ALIGN_RIGHT       0x02
#define _LIBAROMA_TEXT_ALIGN_JUSTIFY     0x03

/* parse flags */
#define _LIBAROMA_TEXT_GET_FLAG(X)      ((X>>8)&0xff)
#define _LIBAROMA_TEXT_GET_RULE(X)      ((X>>16)&0xff)
#define _LIBAROMA_TEXT_GET_ALIGN(X)     ((X>>24)&0xff)
#define _LIBAROMA_TEXT_GET_FONT(X)      (X&0xff)

/* load & rendering flags */
#ifndef LIBAROMA_CONFIG_NOFONT_SUBPIXEL
  #define _LIBAROMA_FONT_LOAD_GLYPH_FLAG \
    (FT_LOAD_DEFAULT|FT_LOAD_TARGET_LCD)
  #define _LIBAROMA_FONT_RENDER_FLAG \
    (FT_RENDER_MODE_LCD)
#else
  #define _LIBAROMA_FONT_LOAD_GLYPH_FLAG \
    (FT_LOAD_DEFAULT)
  #define _LIBAROMA_FONT_RENDER_FLAG \
    (FT_RENDER_MODE_NORMAL)
#endif

/* max font count & max font size */
#define _LIBAROMA_FONT_MAX_FACE     10
#define _LIBAROMA_FONT_MAX_FONTSIZE 15

/* text chunk */
#define _LIBAROMA_TEXTCHUNK_MAX_BUF           0x400
#define _LIBAROMA_TEXTCHUNK_CHECK(x, y)       (((x) & (y)) == (y))
#define _LIBAROMA_TEXTCHUNK_ALIGN_LEFT        0x00
#define _LIBAROMA_TEXTCHUNK_ALIGN_CENTER      0x01
#define _LIBAROMA_TEXTCHUNK_ALIGN_RIGHT       0x02
#define _LIBAROMA_TEXTCHUNK_ALIGN_JUSTIFY     0x03
#define _LIBAROMA_TEXTCHUNK_ALIGN_BITWISE     0x03
#define _LIBAROMA_TEXTCHUNK_ALIGN_SET(x,y)\
  x=((((x)|_LIBAROMA_TEXTCHUNK_ALIGN_BITWISE)^ \
  _LIBAROMA_TEXTCHUNK_ALIGN_BITWISE)|(y))
#define _LIBAROMA_TEXTCHUNK_BULLET            0x40
#define _LIBAROMA_TEXTCHUNK_IS_IMAGE          0x80
#define _LIBAROMA_TEXTCHUNK_GETFONTID(x)      ((x)&15)
#define _LIBAROMA_TEXTCHUNK_GETFONTSIZE(x)    ((x)>>4)
#define _LIBAROMA_TEXTCHUNK_SETFONTID(x,y)    x = (((x)&240)|((y)&15))
#define _LIBAROMA_TEXTCHUNK_SETFONTSIZE(x,y)  x = (((x)&15)|(((y)&15)<<4))
#define _LIBAROMA_TEXTCHUNK_BOLD              0x04
#define _LIBAROMA_TEXTCHUNK_ITALIC            0x08
#define _LIBAROMA_TEXTCHUNK_UNDERLINE         0x10
#define _LIBAROMA_TEXTCHUNK_STRIKEOUT         0x20

/* text chunk line flags */
#define _LIBAROMA_TEXTCHUNK_LINE_GETINDENT(x)     ((x)&15)
#define _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(x)      ((x)>>4)
#define _LIBAROMA_TEXTCHUNK_LINE_SETINDENT(x,y)   x = (((x)&240)|((y)&15))
#define _LIBAROMA_TEXTCHUNK_LINE_SETFLAGS(x,y)    x = (((x)&15)|(((y)&15)<<4))
#define _LIBAROMA_TEXTCHUNK_LINE_NEWLINE          0x01
#define _LIBAROMA_TEXTCHUNK_LINE_IMAGE            0x02
#define _LIBAROMA_TEXTCHUNK_LINE_HORIZLINE        0x04
#define _LIBAROMA_TEXTCHUNK_LINE_RESERVED         0x08

/* text chunk return flags */
#define _LIBAROMA_TEXTCHUNK_RETURN_OK           0x01
#define _LIBAROMA_TEXTCHUNK_RETURN_NEWLINE      0x02
#define _LIBAROMA_TEXTCHUNK_RETURN_HAVEBUF      0x04
#define _LIBAROMA_TEXTCHUNK_RETURN_SPACE        0x08
#define _LIBAROMA_TEXTCHUNK_RETURN_TAB          0x10
#define _LIBAROMA_TEXTCHUNK_RETURN_TAG          0x20
#define _LIBAROMA_TEXTCHUNK_RETURN_MAXBUF       0x40
#define _LIBAROMA_TEXTCHUNK_RETURN_EOF          0x80

/* span type */
#define _LIBAROMA_TEXTSPAN_SHAPE  0x01  /* text */
#define _LIBAROMA_TEXTSPAN_SPACE  0x02  /* space */
#define _LIBAROMA_TEXTSPAN_TAB    0x03  /* tab */
#define _LIBAROMA_TEXTSPAN_IMAGE  0x04  /* img */
#define _LIBAROMA_TEXTSPAN_HR     0x05  /* hr */
#define _LIBAROMA_TEXTSPAN_BULL   0x06  /* bulleted */

/* text chunk state */
#define _LIBAROMA_TEXTCHUNK_STATE_OK      0x01
#define _LIBAROMA_TEXTCHUNK_STATE_BULLET  0x02

#endif /* __libaroma_text_defs_h__ */
