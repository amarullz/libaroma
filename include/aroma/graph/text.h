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
 * Filename    : text.h
 * Description : text & font engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_text_h__
#define __libaroma_text_h__

/*
 * Text Flags
 */
#define LIBAROMA_TEXT_INITIAL_SHIFT 8
#define LIBAROMA_TEXT_BOLD          (0x04 << LIBAROMA_TEXT_INITIAL_SHIFT)
#define LIBAROMA_TEXT_ITALIC        (0x08 << LIBAROMA_TEXT_INITIAL_SHIFT)
#define LIBAROMA_TEXT_UNDERLINE     (0x10 << LIBAROMA_TEXT_INITIAL_SHIFT)
#define LIBAROMA_TEXT_STRIKEOUT     (0x20 << LIBAROMA_TEXT_INITIAL_SHIFT)
#define LIBAROMA_TEXT_RULE_SHIFT    16
#define LIBAROMA_TEXT_FIXED_COLOR   (0x01 << LIBAROMA_TEXT_RULE_SHIFT)
#define LIBAROMA_TEXT_FIXED_FONT    (0x02 << LIBAROMA_TEXT_RULE_SHIFT)
#define LIBAROMA_TEXT_FIXED_SIZE    (0x04 << LIBAROMA_TEXT_RULE_SHIFT)
#define LIBAROMA_TEXT_FIXED_ALIGN   (0x05 << LIBAROMA_TEXT_RULE_SHIFT)
#define LIBAROMA_TEXT_FIXED_INDENT  (0x10 << LIBAROMA_TEXT_RULE_SHIFT)
#define LIBAROMA_TEXT_SINGLELINE    (0x20 << LIBAROMA_TEXT_RULE_SHIFT)
#define LIBAROMA_TEXT_NOIMG         (0x40 << LIBAROMA_TEXT_RULE_SHIFT)
#define LIBAROMA_TEXT_NOHR          (0x80 << LIBAROMA_TEXT_RULE_SHIFT)
#define LIBAROMA_TEXT_ALIGN_SHIFT 24
#define LIBAROMA_TEXT_LEFT          (0x00 << LIBAROMA_TEXT_ALIGN_SHIFT)
#define LIBAROMA_TEXT_CENTER        (0x01 << LIBAROMA_TEXT_ALIGN_SHIFT)
#define LIBAROMA_TEXT_RIGHT         (0x02 << LIBAROMA_TEXT_ALIGN_SHIFT)
#define LIBAROMA_TEXT_JUSTIFY       (0x03 << LIBAROMA_TEXT_ALIGN_SHIFT)

/*
 * Font macro
 */
#define LIBAROMA_FONT(id,size)      (((id)&15)|(((size)&15)<<4))
#define LIBAROMA_TEXT_FONT(id,size) LIBAROMA_FONT(id,size)

/*
 * Line Info
 */
#define LIBAROMA_TEXTLINE_INFO_CONTENT_WIDTH  0x1
#define LIBAROMA_TEXTLINE_INFO_RIGHT          0x2
#define LIBAROMA_TEXTLINE_INFO_LEFT           0x3
#define LIBAROMA_TEXTLINE_INFO_HEIGHT         0x4
#define LIBAROMA_TEXTLINE_INFO_WIDTH          0x6
#define LIBAROMA_TEXTLINE_INFO_BASELINE       0x7

typedef void * LIBAROMA_TEXT;
typedef void * LIBAROMA_GLYPH;
typedef void * LIBAROMA_LINE;

/*
 * Function    : libaroma_font_glyph
 * Return Value: LIBAROMA_GLYPH
 * Descriptions: get font glyph
 */
LIBAROMA_GLYPH libaroma_font_glyph(
  int           c,
  byte          fontid,
  byte          size
);

/*
 * Function    : libaroma_font_size_px
 * Return Value: short
 * Descriptions: font size in px
 */
short libaroma_font_size_px(byte size);

/*
 * Function    : libaroma_font
 * Return Value: byte
 * Descriptions: load new font
 */
byte libaroma_font(
    byte fontid,
    LIBAROMA_STREAMP stream);

/*
 * Function    : libaroma_font_free
 * Return Value: byte
 * Descriptions: free loaded font
 */
byte libaroma_font_free(
    byte fontid);

/*
 * Function    : libaroma_font_glyph_width
 * Return Value: short
 * Descriptions: get glyph width
 */
short libaroma_font_glyph_width(
    LIBAROMA_GLYPH aglyph_param);

/*
 * Function    : libaroma_font_glyph_height
 * Return Value: short
 * Descriptions: get glyph height
 */
short libaroma_font_glyph_height(
    LIBAROMA_GLYPH aglyph_param);

/*
 * Function    : libaroma_font_glyph_draw
 * Return Value: byte
 * Descriptions: draw glyph into canvas
 */
byte libaroma_font_glyph_draw(
  LIBAROMA_CANVASP dest,
  LIBAROMA_GLYPH aglyph_param,
  int x,
  int y,
  word color,
  byte flags,
  byte opacity
);

/*
 * Function    : libaroma_text_line_count
 * Return Value: int
 * Descriptions: get number of line
 */
int libaroma_text_line_count(
    LIBAROMA_TEXT text);

/*
 * Function    : libaroma_text_height
 * Return Value: int
 * Descriptions: get text width
 */
int libaroma_text_width(
    LIBAROMA_TEXT text);

/*
 * Function    : libaroma_text_height
 * Return Value: int
 * Descriptions: get text height
 */
int libaroma_text_height(
    LIBAROMA_TEXT text);

/*
 * Function    : libaroma_text
 * Return Value: LIBAROMA_TEXT
 * Descriptions: create text
 */
LIBAROMA_TEXT libaroma_text(
  const char  * text,
  word          color,
  int           maxwidth,
  dword         txtflags,
  byte          linespacing
);

/*
 * Function    : libaroma_text_free
 * Return Value: byte
 * Descriptions: free text
 */
byte libaroma_text_free(LIBAROMA_TEXT text);

/*
 * Function    : libaroma_text_line_info
 * Return Value: int
 * Descriptions: get line info
 */
int libaroma_text_line_info(
    LIBAROMA_TEXT text,
    int line,
    byte info);

/*
 * Function    : libaroma_text_draw_line_ex
 * Return Value: int
 * Descriptions: draw text line
 */
int libaroma_text_draw_line_ex(
  LIBAROMA_CANVASP dest,
  LIBAROMA_TEXT text,
  int dx,
  int dy,
  int line,
  byte isshadow,
  int radius,
  word shadow_color,
  byte shadow_opacity
);

/*
 * Function    : libaroma_text_draw_layer
 * Return Value: byte
 * Descriptions: draw text layer
 */
byte libaroma_text_draw_layer(
  LIBAROMA_CANVASP dest,
  LIBAROMA_TEXT text,
  int dx,
  int dy,
  int sx,
  int sy,
  int maxh,
  byte isshadow,
  int radius,
  word shadow_color,
  byte shadow_opacity
);

/*
 * Function    : libaroma_text_draw_ex
 * Return Value: byte
 * Descriptions: draw text - extended
 */
byte libaroma_text_draw_ex(
  LIBAROMA_CANVASP dest,
  LIBAROMA_TEXT text,
  int dx,
  int dy,
  int sx,
  int sy,
  int maxh,
  byte isshadow,
  int radius,
  word shadow_color,
  byte shadow_opacity,
  int shadow_x,
  int shadow_y
);
/* aliases */
#define libaroma_text_draw(d,t,x,y) \
  libaroma_text_draw_ex(d,t,x,y,0,0,0,0,0,0,0,0,0)
#define libaroma_text_draw_color(d,t,x,y,c) \
  libaroma_text_draw_ex(d,t,x,y,0,0,0,10,0,c,0,0,0)
#define libaroma_text_draw_shadow(d,t,x,y,shadow,radius,color,opacity,shx,shy) \
  libaroma_text_draw_ex(d,t,x,y,0,0,0,shadow,radius,color,opacity,shx,shy)

/*
 * Function    : libaroma_draw_text_ex
 * Return Value: int
 * Descriptions: direct text directly from string - extended
 */
int libaroma_draw_text_ex(
  LIBAROMA_CANVASP dest,
  const char * text,
  int x, int y,
  word color,
  int width,
  dword txtflags,
  byte lh,
  byte isshadow,
  int radius,
  word shadow_color,
  byte shadow_opacity,
  int shadow_x,
  int shadow_y
);

/* aliases */
#define libaroma_draw_text(d,t,x,y,color,width,flags,lh) \
  libaroma_draw_text_ex(d,t,x,y,color,width,flags,lh,0,0,0,0,0,0)

#endif /* __libaroma_text_h__ */
