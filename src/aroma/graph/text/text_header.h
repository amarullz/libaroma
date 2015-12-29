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
 * Filename    : text_header.h
 * Description : text functions & headers
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_text_header_h__
#define __libaroma_text_header_h__

#ifndef true
#define true 1
#endif
#ifndef false
#define false 0
#endif

#include <ft2build.h>         /* Freetype 2 */
#include FT_FREETYPE_H
#include FT_TRUETYPE_IDS_H
#include FT_LCD_FILTER_H
#include FT_BITMAP_H
#include FT_OUTLINE_H
#include FT_ADVANCES_H
#include FT_TRUETYPE_TABLES_H
#include FT_GLYPH_H

#ifndef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ
#include <hb.h>               /* Harfbuzz-ng */
#endif
#include <ucdn.h>     /* Harfbuzz-UCDN */

/* include definition & structures */
#include "text_defs.h"
#include "text_structures.h"

/* UCDN CALLBACK */
#ifndef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ
hb_unicode_funcs_t * hb_ucdn_get_unicode_funcs(void);
#endif

/*
 * Function    : _libaroma_text_concat_ex
 * Return Value: byte
 * Descriptions: concat string
 */
byte _libaroma_text_concat_ex(
    char ** dst,
    const char * src,
    byte is_pre);

/* aliases */
#define _libaroma_text_concat(dst,src) \
  _libaroma_text_concat_ex(dst,src,0)
#define _libaroma_text_concat_pre(dst,src) \
  _libaroma_text_concat_ex(dst,src,1)

/*
 * Function    : _libaroma_text_compare
 * Return Value: byte
 * Descriptions: compare begining string
 */
byte _libaroma_text_compare(
    const char * str,
    const char * find);

/*
 * Function    : _libaroma_text_change_current
 * Return Value: void
 * Descriptions: change current text
 */
void _libaroma_text_change_current(
    _LIBAROMA_TEXTCHUNKP chunk,
    const char * val);

/*
 * Function    : _libaroma_text_direction
 * Return Value: static byte
 * Descriptions: get text direction
 */
static byte _libaroma_text_direction(
    uchar c,
    byte prev_rtl);

/*
 * Function    : _libaroma_text_parse_strdup
 * Return Value: char *
 * Descriptions: duplicate string for parser
 */
char * _libaroma_text_parse_strdup(
    const char * src);

/*
 * Function    : _libaroma_text_parse_tag
 * Return Value: byte
 * Descriptions: process tag
 */
byte _libaroma_text_parse_tag(
    const char * tag,
    byte rules,
    byte pflags,
    word color,
    byte font,
    _LIBAROMA_TEXTCHUNKP chunk);

/*
 * Function    : _libaroma_text_parse
 * Return Value: _LIBAROMA_TEXTCHUNKP
 * Descriptions: prepare text parsing data
 */
_LIBAROMA_TEXTCHUNKP _libaroma_text_parse(
  const char * txt,
  byte rules,
  byte pflags,
  word color,
  byte font,
  int max_width,
  byte linespacing);

/*
 * Function    : _libaroma_text_parse_free
 * Return Value: void
 * Descriptions: cleanup text parse data
 */
void _libaroma_text_parse_free(
    _LIBAROMA_TEXTCHUNKP chunk);

/*
 * Function    : _libaroma_text_parse_next
 * Return Value: byte
 * Descriptions: parse next chunk
 */
byte _libaroma_text_parse_next(
    _LIBAROMA_TEXTCHUNKP chunk,
    char * buf);

#ifndef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ
/*
 * Function    : _libaroma_font_hb_init
 * Return Value: hb_font_t *
 * Descriptions: init harfbuzz-ng font
 */
hb_font_t * _libaroma_font_hb_init(
    byte fontid);

/*
 * Function    : _libaroma_font_hb_free_functions
 * Return Value: void
 * Descriptions: release harfbuzz-ng functions
 */
void _libaroma_font_hb_free_functions();

/*
 * Function    : _libaroma_font_hb_free
 * Return Value: void
 * Descriptions: free harfbuzz-ng from aroma font face
 */
void _libaroma_font_hb_free(
    byte fontid);

/*
 * Function    : _libaroma_font_hb_update_scale
 * Return Value: void
 * Descriptions: update harfbuzz-ng scaling - use when set font size
 */
void _libaroma_font_hb_update_scale(
    byte fontid);
#endif

/*
 * Function    : libaroma_font_set_size
 * Return Value: byte
 * Descriptions: set font size
 */
byte libaroma_font_set_size(
    byte fontid,
    short size,
    byte lock);

/*
 * Function    : libaroma_font_get_face
 * Return Value: _LIBAROMA_FONT_FACEP
 * Descriptions: get font face
 */
_LIBAROMA_FONT_FACEP libaroma_font_get_face(
    byte fontid);

/*
 * Function    : libaroma_font_set_ucs2
 * Return Value: int
 * Descriptions: set ucs2 charmap for fontface
 */
int libaroma_font_set_ucs2(
    FT_Face ftf);

/*
 * Function    : libaroma_font_get
 * Return Value: FT_Face
 * Descriptions: get font face
 */
FT_Face libaroma_font_get(
    byte fontid, byte nofallback);

/*
 * Function    : libaroma_font_size_px
 * Return Value: short
 * Descriptions: font size in px
 */
short libaroma_font_size_px(byte size);

/*
 * Function    : libaroma_font_glyph_get_id
 * Return Value: int
 * Descriptions: get glyph codepage
 */
int libaroma_font_glyph_get_id(
    int c,
    byte fontid,
    byte * fontid_avail);

/*
 * Function    : libaroma_font_init
 * Return Value: byte
 * Descriptions: init font instance
 */
byte libaroma_font_init();

/*
 * Function    : libaroma_font_release
 * Return Value: byte
 * Descriptions: release font instance
 */
byte libaroma_font_release();

/*
 * Function    : libaroma_text_shaper
 * Return Value: _LIBAROMA_TEXTSHAPEDP
 * Descriptions: text shaper with harfbuzz-ng
 */
_LIBAROMA_TEXTSHAPEDP libaroma_text_shaper(
    _LIBAROMA_TEXTPRESHAPEDP span,
    _LIBAROMA_TEXTCHUNKP chunk);

/*
 * Function    : libaroma_text_shaper_free
 * Return Value: byte
 * Descriptions: free text shaper
 */
byte libaroma_text_shaper_free(
    _LIBAROMA_TEXTSHAPEDP shaped);

/*
 * Function    : libaroma_text_get_preshaped
 * Return Value: byte
 * Descriptions: process raw uchar into preshaped
 */
byte libaroma_text_get_preshaped(
    _LIBAROMA_TEXTPRESHAPEDP span,
    _LIBAROMA_TEXTCHUNKP chunk,
    ucharp text,
    int len);

/*
 * Function    : libaroma_text_group_split
 * Return Value: _LIBAROMA_TEXTSHAPED_GROUPP
 * Descriptions: split long shaped text
 */
_LIBAROMA_TEXTSHAPED_GROUPP libaroma_text_group_split(
    _LIBAROMA_TEXTSHAPED_GROUPP * group_src,
    int limit_width);

/*
 * Function    : libaroma_text_group
 * Return Value: _LIBAROMA_TEXTSHAPED_GROUPP
 * Descriptions: process and grouping shaped text
 */
_LIBAROMA_TEXTSHAPED_GROUPP libaroma_text_group(
    _LIBAROMA_TEXTCHUNKP chunk);

/*
 * Function    : _libaroma_text_group_free
 * Return Value: byte
 * Descriptions: free shaped group
 */
byte _libaroma_text_group_free(
    _LIBAROMA_TEXTSHAPED_GROUPP span_group,
    byte freeshaped);

/*
 * Function    : libaroma_text_tabwidth
 * Return Value: int
 * Descriptions: calculate tab width
 */
int libaroma_text_tabwidth(
    int x,
    int space_w);

/*
 * Function    : libaroma_textline_get_floated_image_width
 * Return Value: short
 * Descriptions: calculate floated images width
 */
short libaroma_textline_get_floated_image_width(
    _LIBAROMA_TEXTCHUNKP chunk,
    _LIBAROMA_TEXTLINEP line,
    byte type);

/*
 * Function    : libaroma_textshaped_span
 * Return Value: _LIBAROMA_TEXTSHAPED_SPANP
 * Descriptions: convert & copy shaped into span data
 */
_LIBAROMA_TEXTSHAPED_SPANP libaroma_textshaped_span(
    _LIBAROMA_TEXTSHAPEDP shaped,
    _LIBAROMA_TEXTCHUNKP chunk);

/*
 * Function    : libaroma_textline_align
 * Return Value: _LIBAROMA_TEXTLINEP
 * Descriptions: adjust line alignment
 */
_LIBAROMA_TEXTLINEP libaroma_textline_align(
    _LIBAROMA_TEXTLINEP line,
    _LIBAROMA_TEXTCHUNKP chunk,
    byte align,
    int line_width,
    int indent_size,
    int limit_width);

/*
 * Function    : libaroma_textline_add_span
 * Return Value: void
 * Descriptions: add text span
 */
void libaroma_textline_add_span(
  _LIBAROMA_TEXTLINEP line,
  _LIBAROMA_TEXTSPANP * last,
  _LIBAROMA_TEXTSPANP * rtl_findex,
  _LIBAROMA_TEXTSPANP * rtl_bindex,
  byte rtl,
  byte type,
  short  x,
  short  span_w,
  voidp data
);

/*
 * Function    : libaroma_textline_add_span_img
 * Return Value: void
 * Descriptions: add image span
 */
void libaroma_textline_add_span_img(
  _LIBAROMA_TEXTCHUNKP chunk,
  _LIBAROMA_TEXTLINEP line,
  _LIBAROMA_TEXTSPANP * last,
  _LIBAROMA_TEXTSPANP * rtl_findex,
  _LIBAROMA_TEXTSPANP * rtl_bindex,
  byte rtl,
  short * x,
  _LIBAROMA_TEXTSPAN_IMGP imgspan,
  int * limit_width
);

/*
 * Function    : libaroma_textline
 * Return Value: _LIBAROMA_TEXTLINEP
 * Descriptions: get text line
 */
_LIBAROMA_TEXTLINEP libaroma_textline(
    _LIBAROMA_TEXTCHUNKP chunk);

/*
 * Function    : libaroma_textline_free
 * Return Value: byte
 * Descriptions: free textline
 */
byte libaroma_textline_free(
    _LIBAROMA_TEXTLINEP line);

/*
 * Function    : libaroma_text_draw_span
 * Return Value: dword
 * Descriptions: draw text span
 */
dword libaroma_text_draw_span(
    LIBAROMA_CANVASP canvas,
    _LIBAROMA_TEXTSHAPED_SPANP span_shaped,
    int x,
    int y,
    dword prev_res_span,
    byte fixed_color, word color_force);

/*
 * Function    : libaroma_text_draw_bullet
 * Return Value: void
 * Descriptions: draw bulleted span
 */
void libaroma_text_draw_bullet(
    LIBAROMA_CANVASP canvas,
    byte style,
    short x,
    short y,
    short sz,
    word color);

/*
 * Function    : libaroma_textline_draw
 * Return Value: void
 * Descriptions: draw text line
 */
void libaroma_textline_draw(
    LIBAROMA_CANVASP canvas,
    _LIBAROMA_TEXTLINEP line,
    int draw_x,
    int draw_y,
    byte fixed_color, word color_force);


#endif /* __libaroma_text_header_h__ */
