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
 * Filename    : text_structures.h
 * Description : text structures
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_text_structures_h__
#define __libaroma_text_structures_h__

/*
 * Structure   : __LIBAROMA_FONT_SLOT_CACHE
 * Typedef     : _LIBAROMA_FONT_SLOT_CACHE, * _LIBAROMA_FONT_SLOT_CACHEP
 * Descriptions: slot cache
 */
typedef struct __LIBAROMA_FONT_SLOT_CACHE _LIBAROMA_FONT_SLOT_CACHE;
typedef struct __LIBAROMA_FONT_SLOT_CACHE * _LIBAROMA_FONT_SLOT_CACHEP;
struct __LIBAROMA_FONT_SLOT_CACHE{
  FT_Glyph glyph;
  FT_Glyph_Metrics metrics;
  int codepoint;
  short size;
};

/*
 * Structure   : __LIBAROMA_FONT_FACE
 * Typedef     : _LIBAROMA_FONT_FACE, * _LIBAROMA_FONT_FACEP
 * Descriptions: font face structure
 */
typedef struct __LIBAROMA_FONT_FACE _LIBAROMA_FONT_FACE;
typedef struct __LIBAROMA_FONT_FACE * _LIBAROMA_FONT_FACEP;
struct __LIBAROMA_FONT_FACE{
  FT_Face face;
#ifndef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ
  hb_font_t * hb_font;
#endif
  byte id;
  short size;
  LIBAROMA_IARRAYP cache;
  LIBAROMA_STREAMP stream;
  
  /* int last_slotid; */
  /*_LIBAROMA_FONT_SLOT_CACHEP last_cache;*/
};

/*
 * Structure   : __LIBAROMA_TEXTCHUNK_STATE
 * Typedef     : _LIBAROMA_TEXTCHUNK_STATE, * _LIBAROMA_TEXTCHUNK_STATEP
 * Descriptions: text chunk state
 */
typedef struct __LIBAROMA_TEXTCHUNK_STATE _LIBAROMA_TEXTCHUNK_STATE;
typedef struct __LIBAROMA_TEXTCHUNK_STATE * _LIBAROMA_TEXTCHUNK_STATEP;
struct __LIBAROMA_TEXTCHUNK_STATE{
  byte flags;
  byte lflags;
  byte font;
  word color;
  char * img_data;
  byte linespacing;
};

/*
 * Structure   : __LIBAROMA_TEXTPENDING
 * Typedef     : _LIBAROMA_TEXTPENDING, * _LIBAROMA_TEXTPENDINGP
 * Descriptions: text pending data
 */
typedef struct __LIBAROMA_TEXTPENDING _LIBAROMA_TEXTPENDING;
typedef struct __LIBAROMA_TEXTPENDING * _LIBAROMA_TEXTPENDINGP;
struct __LIBAROMA_TEXTPENDING{
  byte type;
  voidp param;
};

/*
 * Structure   : __LIBAROMA_TEXTPENDING_IMG
 * Typedef     : _LIBAROMA_TEXTPENDING_IMG, * _LIBAROMA_TEXTPENDING_IMGP
 * Descriptions: text pending image data
 */
typedef struct __LIBAROMA_TEXTPENDING_IMG _LIBAROMA_TEXTPENDING_IMG;
typedef struct __LIBAROMA_TEXTPENDING_IMG * _LIBAROMA_TEXTPENDING_IMGP;
struct __LIBAROMA_TEXTPENDING_IMG{
  short w;
  int y;
  byte s;
};

/*
 * Structure   : __LIBAROMA_TEXTSHAPED_GROUP
 * Typedef     : _LIBAROMA_TEXTSHAPED_GROUP, * _LIBAROMA_TEXTSHAPED_GROUPP
 * Descriptions: shaped text collection
 */
typedef struct __LIBAROMA_TEXTSHAPED_GROUP _LIBAROMA_TEXTSHAPED_GROUP;
typedef struct __LIBAROMA_TEXTSHAPED_GROUP * _LIBAROMA_TEXTSHAPED_GROUPP;

/*
 * Structure   : __LIBAROMA_TEXTCHUNK
 * Typedef     : _LIBAROMA_TEXTCHUNK, * _LIBAROMA_TEXTCHUNKP
 * Descriptions: chunk parse data
 */
typedef struct __LIBAROMA_TEXTCHUNK _LIBAROMA_TEXTCHUNK;
typedef struct __LIBAROMA_TEXTCHUNK * _LIBAROMA_TEXTCHUNKP;
struct __LIBAROMA_TEXTCHUNK{
  _LIBAROMA_TEXTCHUNK_STATE  curr_state;
  _LIBAROMA_TEXTCHUNK_STATE  next_state;
  byte rtl;      	        /* rtl state */
  int script;   	        /* script */
  char * text;            /* source text */
  byte rules;             /* rules */
  byte def_flags;         /* default style */
  word def_color;         /* default color */
  byte def_font;          /* default font */
  byte def_linespacing;   /* default line spacing */
  int max_width;          /* max width */
  byte state;             /* chunk state */
  byte last_res;          /* last result */
  int  last_line_y;       /* last y position */
  _LIBAROMA_TEXTSHAPED_GROUPP next_group; /* pending group */
  _LIBAROMA_TEXTPENDINGP pending_data;    /* line pending data */
  _LIBAROMA_TEXTPENDING_IMGP imagesdata;  /* floating images */
  int imagesdatan;        /* number of floating images */
};

/*
 * Structure   : __LIBAROMA_TEXTPRESHAPED
 * Typedef     : _LIBAROMA_TEXTPRESHAPED, * _LIBAROMA_TEXTPRESHAPEDP
 * Descriptions: preshaped text
 */
typedef struct __LIBAROMA_TEXTPRESHAPED _LIBAROMA_TEXTPRESHAPED;
typedef struct __LIBAROMA_TEXTPRESHAPED * _LIBAROMA_TEXTPRESHAPEDP;
struct __LIBAROMA_TEXTPRESHAPED{
  byte fontid;
  ucharp text;
  int len;
};

/*
 * Structure   : __LIBAROMA_TEXTCOLUMN
 * Typedef     : _LIBAROMA_TEXTCOLUMN, * _LIBAROMA_TEXTCOLUMNP
 * Descriptions: text column
 */
typedef struct __LIBAROMA_TEXTCOLUMN _LIBAROMA_TEXTCOLUMN;
typedef struct __LIBAROMA_TEXTCOLUMN * _LIBAROMA_TEXTCOLUMNP;
struct __LIBAROMA_TEXTCOLUMN{
  int id;
  short x;
  short y;
  short w;
};

/*
 * Structure   : __LIBAROMA_TEXTSHAPED
 * Typedef     : _LIBAROMA_TEXTSHAPED, * _LIBAROMA_TEXTSHAPEDP
 * Descriptions: shaped text
 */
typedef struct __LIBAROMA_TEXTSHAPED _LIBAROMA_TEXTSHAPED;
typedef struct __LIBAROMA_TEXTSHAPED * _LIBAROMA_TEXTSHAPEDP;
struct __LIBAROMA_TEXTSHAPED{
  _LIBAROMA_TEXTCOLUMNP	cols;
  int coln;
  short w;
  short h;
  byte font;
  byte rtl;
  _LIBAROMA_TEXTSHAPEDP next;
};

/*
 * Structure   : __LIBAROMA_TEXTSHAPED_GROUP
 * Typedef     : _LIBAROMA_TEXTSHAPED_GROUP, * _LIBAROMA_TEXTSHAPED_GROUPP
 * Descriptions: shaped text collection
 */
struct __LIBAROMA_TEXTSHAPED_GROUP {
  _LIBAROMA_TEXTSHAPEDP shaped;
  short w;
  short h;
};

/*
 * Structure   : __LIBAROMA_TEXTSHAPED_SPAN
 * Typedef     : _LIBAROMA_TEXTSHAPED_SPAN, * _LIBAROMA_TEXTSHAPED_SPANP
 * Descriptions: shaped span
 */
typedef struct __LIBAROMA_TEXTSHAPED_SPAN _LIBAROMA_TEXTSHAPED_SPAN;
typedef struct __LIBAROMA_TEXTSHAPED_SPAN * _LIBAROMA_TEXTSHAPED_SPANP;
struct __LIBAROMA_TEXTSHAPED_SPAN{
  _LIBAROMA_TEXTCOLUMNP	cols;
  int coln;
  byte font;
  word color;
  byte flags;
};

/*
 * Structure   : __LIBAROMA_TEXTSPAN_BULLET
 * Typedef     : _LIBAROMA_TEXTSPAN_BULLET, * _LIBAROMA_TEXTSPAN_BULLETP
 * Descriptions: bulleted span
 */
typedef struct __LIBAROMA_TEXTSPAN_BULLET _LIBAROMA_TEXTSPAN_BULLET;
typedef struct __LIBAROMA_TEXTSPAN_BULLET * _LIBAROMA_TEXTSPAN_BULLETP;
struct __LIBAROMA_TEXTSPAN_BULLET{
  byte  style;
  short x;
  short w;
  word  color;
};

/*
 * Structure   : __LIBAROMA_TEXTSPAN_IMG
 * Typedef     : _LIBAROMA_TEXTSPAN_IMG, * _LIBAROMA_TEXTSPAN_IMGP
 * Descriptions: image span
 */
typedef struct __LIBAROMA_TEXTSPAN_IMG _LIBAROMA_TEXTSPAN_IMG;
typedef struct __LIBAROMA_TEXTSPAN_IMG * _LIBAROMA_TEXTSPAN_IMGP;
struct __LIBAROMA_TEXTSPAN_IMG{
  LIBAROMA_CANVASP canvas;
  short w;
  short h;
  byte s;
  int y;
};

/*
 * Structure   : __LIBAROMA_TEXTSPAN
 * Typedef     : _LIBAROMA_TEXTSPAN, * _LIBAROMA_TEXTSPANP
 * Descriptions: text span
 */
typedef struct __LIBAROMA_TEXTSPAN _LIBAROMA_TEXTSPAN;
typedef struct __LIBAROMA_TEXTSPAN * _LIBAROMA_TEXTSPANP;
struct __LIBAROMA_TEXTSPAN{
  byte type;
  short x;
  voidp data;
  _LIBAROMA_TEXTSPANP next;
};

/*
 * Structure   : __LIBAROMA_TEXTLINE
 * Typedef     : _LIBAROMA_TEXTLINE, * _LIBAROMA_TEXTLINEP
 * Descriptions: text line
 */
typedef struct __LIBAROMA_TEXTLINE _LIBAROMA_TEXTLINE;
typedef struct __LIBAROMA_TEXTLINE * _LIBAROMA_TEXTLINEP;
struct __LIBAROMA_TEXTLINE{
  _LIBAROMA_TEXTSPANP span;
  int y;
  short h;
  int w;
  short lineheight;
  int minx;
  int maxx;
};

/*
 * Structure   : __LIBAROMA_TEXT
 * Typedef     : _LIBAROMA_TEXT, * _LIBAROMA_TEXTP
 * Descriptions: internal text structure
 *
typedef struct __LIBAROMA_TEXT _LIBAROMA_TEXT;
typedef struct __LIBAROMA_TEXT * _LIBAROMA_TEXTP;
struct __LIBAROMA_TEXT{
  voidp lines;
  int linen;
  int w;
  int h;
};
*/

/*
 * Structure   : __LIBAROMA_TEXTLINES
 * Typedef     : _LIBAROMA_TEXTLINES, * _LIBAROMA_TEXTLINESP
 * Descriptions: temporary line structure
 */
typedef struct __LIBAROMA_TEXTLINES _LIBAROMA_TEXTLINES;
typedef struct __LIBAROMA_TEXTLINES * _LIBAROMA_TEXTLINESP;
struct __LIBAROMA_TEXTLINES{
  _LIBAROMA_TEXTLINEP line;
  _LIBAROMA_TEXTLINESP next;
};

/*
 * Structure   : __LIBAROMA_TEXT
 * Typedef     : _LIBAROMA_TEXT, * _LIBAROMA_TEXTP
 * Descriptions: processed text structure
 */
typedef struct __LIBAROMA_TEXT _LIBAROMA_TEXT;
typedef struct __LIBAROMA_TEXT * _LIBAROMA_TEXTP;
struct __LIBAROMA_TEXT{
  _LIBAROMA_TEXTLINEP * lines;
  int n;
  int h;
};


#endif /* __libaroma_text_structures_h__ */
