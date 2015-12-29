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
 * Filename    : font_freetype.c
 * Description : libaroma freetype engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_font_freetype_c__
#define __libaroma_font_freetype_c__

/*
 * Function    : libaroma_font_set_size
 * Return Value: byte
 * Descriptions: set font size
 */
byte libaroma_font_set_size(
    byte fontid,
    short size,
    byte lock) {
  if (fontid >= _LIBAROMA_FONT_MAX_FACE) {
    ALOGW("libaroma_font_set_size fontid(%i)>=%i",
      fontid, _LIBAROMA_FONT_MAX_FACE);
    return 0;
  }
  if (_libaroma_font_faces[fontid].size == size) {
    return 1;
  }
  if (lock) {
    _libaroma_font_lock(1);
  }
  if (FT_Set_Pixel_Sizes(_libaroma_font_faces[fontid].face, 0, size) == 0) {
    _libaroma_font_faces[fontid].size = size;
#ifndef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ
    _libaroma_font_hb_update_scale(fontid);
#endif
    if (lock) {
      _libaroma_font_lock(0);
    }
    return 1;
  }
  if (lock) {
    _libaroma_font_lock(0);
  }
  return 0;
} /* End of libaroma_font_set_size */

/*
 * Function    : libaroma_font_get_face
 * Return Value: _LIBAROMA_FONT_FACEP
 * Descriptions: get font face
 */
_LIBAROMA_FONT_FACEP libaroma_font_get_face(
    byte fontid) {
  if (fontid>=_LIBAROMA_FONT_MAX_FACE) {
    ALOGW("libaroma_font_get_face fontid(%i)>=%i",
      fontid,
      _LIBAROMA_FONT_MAX_FACE);
    return NULL;
  }
  return &_libaroma_font_faces[fontid];
} /* End of libaroma_font_get_face */

/*
 * Function    : libaroma_font_set_ucs2
 * Return Value: int
 * Descriptions: set ucs2 charmap for fontface
 */
int libaroma_font_set_ucs2(
    FT_Face ftf) {
  int i;
  for (i = 0; i < ftf->num_charmaps; i++) {
    if ((  (ftf->charmaps[i]->platform_id == 0)
           && (ftf->charmaps[i]->encoding_id == 3))
        || ((ftf->charmaps[i]->platform_id == 3)
            && (ftf->charmaps[i]->encoding_id == 1))) {
      return FT_Set_Charmap(ftf, ftf->charmaps[i]);
    }
  }
  return -1;
} /* End of libaroma_font_set_ucs2 */

/*
 * Function    : libaroma_font_get
 * Return Value: FT_Face
 * Descriptions: get font face
 */
FT_Face libaroma_font_get(
    byte fontid, byte nofallback) {
  if (fontid >= _LIBAROMA_FONT_MAX_FACE) {
    ALOGW("libaroma_font_get fontid(%i)>=%i",
      fontid, _LIBAROMA_FONT_MAX_FACE);
    return 0;
  }
  if (_libaroma_font_faces[fontid].face != NULL) {
    return _libaroma_font_faces[fontid].face;
  }
  else if ((!nofallback) && (_libaroma_font_faces[0].face != NULL)) {
    return _libaroma_font_faces[0].face;
  }
  else {
    ALOGW("libaroma_font_get fontid(%i) is not found", fontid);
  }
  return NULL;
} /* End of libaroma_font_get */

/*
 * Function    : libaroma_font_size_px
 * Return Value: short
 * Descriptions: font size in px
 */
short libaroma_font_size_px(byte size) {
  if (size > 15) {
    size = 15;
  }
  else if (size < 1) {
    size = 1;
  }
  /* more than size 8 */
  if (size>8){
  	size-=8;
  	return libaroma_dp(8 + 16 + (size * 4));
  }
  return libaroma_dp(8 + size * 2);
} /* End of libaroma_font_size_px */

/*
 * Function    : libaroma_font_glyph_get_id
 * Return Value: int
 * Descriptions: get glyph codepage
 */
int libaroma_font_glyph_get_id(
    int c,
    byte fontid,
    byte * fontid_avail) {
  *fontid_avail = 0;
  /* utf 8 flag */
  if (c == 0xfeff) {
    return 0;
  }
  if (fontid >= _LIBAROMA_FONT_MAX_FACE) {
    fontid = 0;
  }
  int searchid = fontid;
  int codepage = 0;
  FT_Face face = _libaroma_font_faces[searchid].face;
  if (face != NULL) {
    _libaroma_font_lock(1);
    codepage = FT_Get_Char_Index(face, c);
    _libaroma_font_lock(0);
    if (codepage != 0) {
      *fontid_avail = searchid;
      return codepage;
    }
  }
  searchid = 0;
  while ((codepage == 0) && (searchid < _LIBAROMA_FONT_MAX_FACE)) {
    face = _libaroma_font_faces[searchid].face;
    if ((face != NULL) && (searchid != fontid)) {
      _libaroma_font_lock(1);
      codepage = FT_Get_Char_Index(face, c);
      _libaroma_font_lock(0);
      if (codepage != 0) {
        *fontid_avail = searchid;
        return codepage;
      }
    }
    searchid++;
  }
  return 0;
} /* End of libaroma_font_glyph_get_id */

/*
 * Function    : libaroma_font_glyph
 * Return Value: LIBAROMA_GLYPH
 * Descriptions: get font glyph
 */
LIBAROMA_GLYPH libaroma_font_glyph(
  int           c,
  byte          fontid,
  byte          size
) {
  /* UTF 8 Flag */
  if (c == 0xfeff) {
    return NULL;
  }
  /* 0 - 9 */
  if (fontid >= _LIBAROMA_FONT_MAX_FACE) {
    ALOGW("libaroma_font_glyph fontid(%i)>=%i",
      fontid, _LIBAROMA_FONT_MAX_FACE);
    return NULL;
  }
  /* cleanup last variables */
  // _libaroma_font_faces[fontid].last_cache   = NULL;
  // _libaroma_font_faces[fontid].last_slotid  = 0;
  if (size == 0) {
    size = _libaroma_font_faces[fontid].size;
  }
  /* find in cache */
  int cache_id = ((c & 0xfffff) | (size << 20));
  
  _libaroma_font_lock(1);
  _LIBAROMA_FONT_SLOT_CACHEP tmp_glyph = (_LIBAROMA_FONT_SLOT_CACHEP) 
    libaroma_iarray_get(_libaroma_font_faces[fontid].cache, cache_id);
  
  
  if (tmp_glyph != NULL) {
    /* cache is available */
    // _libaroma_font_faces[fontid].last_cache = tmp_glyph;
    // _libaroma_font_faces[fontid].last_slotid = cache_id;
    _libaroma_font_lock(0);
    return (LIBAROMA_GLYPH) tmp_glyph;
  }
  
  /* get freetype face */
  FT_Face face = _libaroma_font_faces[fontid].face;
  
  if (face == NULL) {
    ALOGW("libaroma_font_glyph fontid(%i) uninitialized", fontid);
    _libaroma_font_lock(0);
    return NULL;
  }
  
  /* set requested font size */
  libaroma_font_set_size(fontid, libaroma_font_size_px(size), 0);
  
  /* load glyph from freetype face */
  if (FT_Load_Glyph(face, c, _LIBAROMA_FONT_LOAD_GLYPH_FLAG) == 0) {
    _LIBAROMA_FONT_SLOT_CACHE slot={0};
    FT_Get_Glyph(face->glyph, &slot.glyph);
    memcpy(&slot.metrics, &face->glyph->metrics, sizeof(FT_Glyph_Metrics));
    slot.codepoint = c;
    slot.size = _libaroma_font_faces[fontid].size;
    
    /* ready to return */
    libaroma_iarray_set(
      _libaroma_font_faces[fontid].cache,
      cache_id,
      (voidp) &slot,
      sizeof(_LIBAROMA_FONT_SLOT_CACHE),
      1
    );
    // _libaroma_font_faces[fontid].last_cache 
    tmp_glyph =
      libaroma_iarray_get(
        _libaroma_font_faces[fontid].cache,
        cache_id
      );
    _libaroma_font_lock(0);
    
    // _libaroma_font_faces[fontid].last_slotid = cache_id;
    return (LIBAROMA_GLYPH) tmp_glyph;
      // _libaroma_font_faces[fontid].last_cache;
  }
  
  _libaroma_font_lock(0);
  return NULL;
} /* End of libaroma_font_glyph */

/*
 * Function    : libaroma_font_freecache_cb
 * Return Value: void
 * Descriptions: free callback for libaroma_iarray cache
 */
void libaroma_font_freecache_cb(
    void * val) {
  _LIBAROMA_FONT_SLOT_CACHEP slot = (_LIBAROMA_FONT_SLOT_CACHEP) val;
  if (slot->glyph != NULL) {
    FT_Done_Glyph(slot->glyph);
  }
} /* End of libaroma_font_freecache_cb */

/*
 * Function    : libaroma_font
 * Return Value: byte
 * Descriptions: load new font
 */
byte libaroma_font(
    byte fontid,
    LIBAROMA_STREAMP stream) {
  if (!stream) {
    ALOGW("libaroma_font stream not found");
    return 0;
  }
  
  if (fontid >= _LIBAROMA_FONT_MAX_FACE) {
    ALOGW("libaroma_font fontid(%i)>=%i",
      fontid, _LIBAROMA_FONT_MAX_FACE);
    return 0;
  }
  
  /* thread safe */
  _libaroma_font_lock(1);
  
  /* load face */
  FT_Face tmp_face;
  if (FT_New_Memory_Face(_libaroma_font_instance, 
      stream->data,
      stream->size,
      0,
      &tmp_face) == 0) {
    /* set default face size */
    int def_size = libaroma_font_size_px(2);
    
    if (FT_Set_Pixel_Sizes(tmp_face, 0, def_size) == 0) {
      /* save it */
      libaroma_font_free(fontid);
      _libaroma_font_faces[fontid].size   = def_size;
      _libaroma_font_faces[fontid].id     = fontid;
      _libaroma_font_faces[fontid].face   = tmp_face;
      _libaroma_font_faces[fontid].stream = stream;
      _libaroma_font_faces[fontid].cache  =
        libaroma_iarray(libaroma_font_freecache_cb);
      
      /* force ucs2 */
      libaroma_font_set_ucs2(_libaroma_font_faces[fontid].face);
      
      /* init harfbuzz */
#ifndef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ
      _libaroma_font_hb_init(fontid);
#endif
      
      /* unlock */
      _libaroma_font_lock(0);
      ALOGV("font loaded %ibytes (%s)", stream->size, stream->uri);
      return 1;
    }
    else {
      ALOGW("libaroma_font libaroma_font_set_size error");
      FT_Done_Face(tmp_face);
    }
  }
  else {
    ALOGW("libaroma_font FT_New_Memory_Face Error");
    libaroma_stream_close(stream);
  }
  _libaroma_font_lock(0);
  return 0;
} /* End of libaroma_font */

/*
 * Function    : libaroma_font_free
 * Return Value: byte
 * Descriptions: free loaded font
 */
byte libaroma_font_free(
    byte fontid) {
  if (fontid >= _LIBAROMA_FONT_MAX_FACE) {
    ALOGW("libaroma_font_free fontid(%i)>=%i",
      fontid, _LIBAROMA_FONT_MAX_FACE);
    return 0;
  }
  _libaroma_font_lock(1);
#ifndef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ
  /* Free Harfbuzz Font */
  if (_libaroma_font_faces[fontid].hb_font != NULL) {
    _libaroma_font_hb_free(fontid);
    _libaroma_font_faces[fontid].hb_font = NULL;
  }
#endif

  /* Free Freetype Font Face */
  if (_libaroma_font_faces[fontid].face != NULL) {
    FT_Done_Face(_libaroma_font_faces[fontid].face);
    _libaroma_font_faces[fontid].face = NULL;
  }
  /* Free Cache */
  if (_libaroma_font_faces[fontid].cache != NULL) {
    libaroma_iarray_free(_libaroma_font_faces[fontid].cache);
    _libaroma_font_faces[fontid].cache = NULL;
  }
  /* Free Stream */
  if (_libaroma_font_faces[fontid].stream  != NULL) {
    libaroma_stream_close(_libaroma_font_faces[fontid].stream);
    _libaroma_font_faces[fontid].stream = NULL;
  }
  _libaroma_font_lock(0);
  return 1;
} /* End of libaroma_font_free */

/*
 * Function    : libaroma_font_glyph_width
 * Return Value: short
 * Descriptions: get glyph width
 */
short libaroma_font_glyph_width(
    LIBAROMA_GLYPH aglyph_param) {
  _LIBAROMA_FONT_SLOT_CACHEP aglyph =
    (_LIBAROMA_FONT_SLOT_CACHEP) aglyph_param;
  return (aglyph->glyph->advance.x >> 16);
} /* End of libaroma_font_glyph_width */

/*
 * Function    : libaroma_font_glyph_height
 * Return Value: short
 * Descriptions: get glyph height
 */
short libaroma_font_glyph_height(
    LIBAROMA_GLYPH aglyph_param) {
  _LIBAROMA_FONT_SLOT_CACHEP aglyph =
    (_LIBAROMA_FONT_SLOT_CACHEP) aglyph_param;
  return (aglyph->size);
} /* End of libaroma_font_glyph_height */

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
) {
  _LIBAROMA_FONT_SLOT_CACHEP aglyph =
    (_LIBAROMA_FONT_SLOT_CACHEP) aglyph_param;
  if (!aglyph) {
    return 0;
  }
  if (aglyph->glyph==NULL) {
    return 0;
  }
  if (dest == NULL) {
    dest = libaroma_fb()->canvas;
  }
  /* thread safe lock */
  _libaroma_font_lock(1);
  
  /* copy & render */
  FT_Glyph fglyph=NULL;
  fglyph=NULL;
  int cnt=0;
  if (FT_Glyph_Copy(aglyph->glyph, &fglyph)!=0){
    _libaroma_font_lock(0);
    return 0;
  }
  if (cnt>0){
    printf("[FT] FC: %i %i\n",cnt,aglyph->codepoint);
  }
  /* italic transform */
  if (flags & _LIBAROMA_TEXTCHUNK_ITALIC) {
    FT_Matrix matrix;
    matrix.xx = 0x10000L;
    matrix.xy = 0x5000L;
    matrix.yx = 0;
    matrix.yy = 0x10000L;
    FT_Glyph_Transform(fglyph, &matrix, NULL);
  }
  
  /* embolden */
  if (flags & _LIBAROMA_TEXTCHUNK_BOLD) {
    FT_Outline_Embolden(
      &((FT_OutlineGlyph) fglyph)->outline,
      aglyph->size * 2
    );
  }
  
  /* convert glyph to bitmap glyph */
  if (FT_Glyph_To_Bitmap(&fglyph, _LIBAROMA_FONT_RENDER_FLAG, 0, 1)!=0){
    /* release glyph */
    printf("[FT] FR:%i\n",aglyph->codepoint);
    FT_Done_Glyph(fglyph);
    _libaroma_font_lock(0);
    return 0;
  }
    
  /* as bitmap glyph */
  FT_BitmapGlyph bit = (FT_BitmapGlyph) fglyph;
  
  /* prepare locations */
  /*int yy;*/
  typeof(bit->bitmap.rows) yy;
  int xpos = x + bit->left;
  int xstart = 0;
  
  if (xpos < 0) {
    xstart = 0 - xpos;
    xpos = 0;
  }
  
  /* loop */
#ifndef LIBAROMA_CONFIG_NOFONT_SUBPIXEL
  int draw_w  = (bit->bitmap.width / 3) - xstart;
  if (draw_w + xpos > dest->w) {
    draw_w = dest->w - xpos;
  }
  if (draw_w > 0) {
    wordp tmp_dst = NULL;
    if (opacity != 0xff) {
      tmp_dst = (wordp) malloc(draw_w * 2);
    }
    for (yy = 0; yy < bit->bitmap.rows; yy++) {
      /* drawing positions */
      int yglp = (yy - bit->top);
      int ypos = (y + yglp) * dest->l;
      
      /* check position */
      if ((ypos+draw_w>(dest->l*dest->h)) || (ypos<0)) {
        continue;
      }
      
      /* source * destination pointers */
      int ysrc = yy * bit->bitmap.pitch;
      bytep src_line  = bit->bitmap.buffer + ysrc + (xstart * 3);
      wordp dest_line = dest->data + ypos + xpos;
      
      /* draw line */
      if (opacity == 0xff) {
        libaroma_alpha_multi_line(
          draw_w, dest_line, dest_line, color, src_line);
      }
      else {
        libaroma_alpha_multi_line(
          draw_w, tmp_dst, dest_line, color, src_line);
        libaroma_alpha_const(
          draw_w, dest_line, dest_line, tmp_dst, opacity);
      }
    }
    if (tmp_dst) {
      free(tmp_dst);
    }
  }
#else
  int draw_w  = bit->bitmap.width - xstart;
  if (draw_w + xpos > dest->w) {
    draw_w = dest->w - xpos;
  }
  if (draw_w > 0) {
    wordp tmp_dst = NULL;
    if (opacity != 0xff) {
      tmp_dst = (wordp) malloc(draw_w * 2);
    }
    /* line */
    for (yy = 0; yy < bit->bitmap.rows; yy++) {
      /* drawing positions */
      int yglp = (yy - bit->top);
      int ypos = (y + yglp) * dest->l;
      /* check position */
      if ((ypos+draw_w>(dest->l*dest->h)) || (ypos<0)) {
        continue;
      }
      /* source & destination pointers */
      int ysrc = yy * bit->bitmap.pitch;
      bytep src_line  = bit->bitmap.buffer + ysrc + xstart;
      wordp dest_line = dest->data + ypos + xpos;
      /* draw line */
      if (opacity == 0xff) {
        libaroma_alpha_mono(
          draw_w, dest_line, dest_line, color, src_line);
      }
      else {
        libaroma_alpha_mono(
          draw_w, tmp_dst, dest_line, color, src_line);
        libaroma_alpha_const(
          draw_w, dest_line, dest_line, tmp_dst, opacity);
      }
    }
    if (tmp_dst) {
      free(tmp_dst);
    }
  }
  
#endif
  /* release glyph */
  FT_Done_Glyph(fglyph);
  _libaroma_font_lock(0);
  return 1;
} /* End of libaroma_font_glyph_draw */

/*
 * Function    : libaroma_font_init
 * Return Value: byte
 * Descriptions: init font instance
 */
byte libaroma_font_init() {
  if (_libaroma_font_instance != NULL) {
    return 0;
  }
  __libaroma_text_locker_init(0);
  _libaroma_font_lock(1);
  if (FT_Init_FreeType(&_libaroma_font_instance) == 0) {
#ifndef LIBAROMA_CONFIG_NOFONT_SUBPIXEL
    FT_Library_SetLcdFilter(_libaroma_font_instance, FT_LCD_FILTER_DEFAULT);
#endif
    /* cleanup font face */
    memset(_libaroma_font_faces, 0,
      sizeof(_LIBAROMA_FONT_FACE) * _LIBAROMA_FONT_MAX_FACE);
    _libaroma_font_lock(0);
    return 1;
  }
  ALOGE("libaroma_font_init Error FT_Init_FreeType");
  _libaroma_font_lock(0);
  return 0;
} /* End of libaroma_font_init */

/*
 * Function    : libaroma_font_release
 * Return Value: byte
 * Descriptions: release font instance
 */
byte libaroma_font_release() {
  _libaroma_font_lock(1);
  if (_libaroma_font_instance == NULL) {
    ALOGE("libaroma_font_release _libaroma_font_instance=NULL");
    _libaroma_font_lock(0);
    __libaroma_text_locker_init(1);
    return 0;
  }
  
  /* release harfbuzz callback functions */
#ifndef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ
  _libaroma_font_hb_free_functions();
#endif
  
  /* release font face */
  int i;
  for (i = 0; i < _LIBAROMA_FONT_MAX_FACE; i++) {
    libaroma_font_free(i);
  }
  if (FT_Done_FreeType(_libaroma_font_instance) == 0) {
    _libaroma_font_instance = NULL;
    _libaroma_font_lock(0);
    __libaroma_text_locker_init(1);
    ALOGV("Fonts Resource Released");
    return 1;
  }
  ALOGE("libaroma_font_release FT_Done_FreeType Error");
  _libaroma_font_lock(0);
  __libaroma_text_locker_init(1);
  return 0;
} /* End of libaroma_font_release */




#endif /* __libaroma_font_freetype_c__ */
