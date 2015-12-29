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
 * Filename    : text_shaper.c
 * Description : text shaper with harfbuzz-ng and words split
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_text_shaper_c__
#define __libaroma_text_shaper_c__

/*
 * Function    : libaroma_text_shaper
 * Return Value: _LIBAROMA_TEXTSHAPEDP
 * Descriptions: text shaper with harfbuzz-ng
 */
_LIBAROMA_TEXTSHAPEDP libaroma_text_shaper(
    _LIBAROMA_TEXTPRESHAPEDP span,
    _LIBAROMA_TEXTCHUNKP chunk) {

  /* get freetype font face */
  FT_Face font = libaroma_font_get(span->fontid, 1);  
  if (font == NULL) {
    return NULL;
  }
  _libaroma_text_lock(1);
  
  /* set size */
  byte fontsize = _LIBAROMA_TEXTCHUNK_GETFONTSIZE(chunk->curr_state.font);
  libaroma_font_set_size(span->fontid, libaroma_font_size_px(fontsize), 0);
  
  /* init harfbuzz font */
  _LIBAROMA_FONT_FACEP afont = libaroma_font_get_face(span->fontid);

	/* calculating */
  dword i = 0;
  int   sizer_x = 0;
  int   sizer_y = 0;
  int   max_x   = INT_MIN;
  int   min_x   = INT_MAX;
  int   max_y   = INT_MIN;
  int   min_y   = INT_MAX;
  int   x       = 0;
  int   y       = 0;
  int   u 			= 0;
  
#ifdef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ
	_LIBAROMA_TEXTSHAPEDP shaped =
  (_LIBAROMA_TEXTSHAPEDP) malloc(sizeof(_LIBAROMA_TEXTSHAPED));
	shaped->coln = span->len;
	shaped->cols = (_LIBAROMA_TEXTCOLUMNP)
	  malloc(sizeof(_LIBAROMA_TEXTCOLUMN) * shaped->coln);
	shaped->rtl = chunk->rtl;
	shaped->font = _LIBAROMA_TEXT_FONT(span->fontid, fontsize);
	shaped->next = NULL;
	FT_Bool use_kerning = FT_HAS_KERNING(afont->face);
	int previous=0;
	dword ii;
	dword coln=(dword) shaped->coln;
	for (ii=0;ii<coln;ii++) {
		if (shaped->rtl){
			i=(shaped->coln-1)-ii;
		}
		else{
			i=ii;
		}
		u=FT_Get_Char_Index(afont->face, span->text[i]);
		_LIBAROMA_FONT_SLOT_CACHEP glp=(_LIBAROMA_FONT_SLOT_CACHEP)
			libaroma_font_glyph(u,span->fontid,fontsize);
	  int xa = glp->metrics.horiAdvance>>6;
	  int xo = 0;
	  if (use_kerning&&previous&&u){
	    FT_Vector  delta;
	    if (shaped->rtl){
	    	FT_Get_Kerning(afont->face, u, previous,FT_KERNING_DEFAULT, &delta );
	    }
	    else{
	    	FT_Get_Kerning(afont->face, previous, u,FT_KERNING_DEFAULT, &delta );
	    }
	    xo = delta.x>>6;
	  }
	  int gx = sizer_x + xo;
	  if (min_x > gx) {
	    min_x = gx;
	  }
	  if (max_x < gx) {
	    max_x = gx;
	  }
	  if (min_y > sizer_y) {
	    min_y = sizer_y;
	  }
	  if (max_y < sizer_y) {
	    max_y = sizer_y;
	  }
	  shaped->cols[i].id  = u;
	  shaped->cols[i].x   = x + xo;
	  shaped->cols[i].y   = y;
	  shaped->cols[i].w   = xa;
	  xa+=xo;
	  sizer_x += xa;
	  x += xa;
	  previous = u;
	}
#else
  hb_font_t * hb_font       = afont->hb_font;
  
  /* create harfbuzz buffer */
  hb_buffer_t * buf = hb_buffer_create();
  hb_buffer_set_unicode_funcs(buf, hb_ucdn_get_unicode_funcs());
  hb_buffer_set_direction(buf, chunk->rtl?HB_DIRECTION_RTL:HB_DIRECTION_LTR);
  
  /* set harfbuzz text buffer */
  hb_buffer_add_utf32(
    buf,
    (const uint32_t *) span->text,
    (unsigned int) span->len,
    0,
    (unsigned int) span->len);

  // hb_buffer_guess_segment_properties(buf);
  
  /* run harfbuzz shaper */
  hb_shape(hb_font, buf, NULL, 0);
  
  /* get harfbuzz result values */
  dword glyph_count = hb_buffer_get_length(buf);
  if (glyph_count < 1) {
    hb_buffer_destroy(buf);
    _libaroma_text_lock(0);
    return NULL;
  }
  
  hb_glyph_info_t   *  glyph_info =
    hb_buffer_get_glyph_infos(buf, &glyph_count);
  hb_glyph_position_t * glyph_pos =
    hb_buffer_get_glyph_positions(buf, &glyph_count);

  /* prepare return memory */
  _LIBAROMA_TEXTSHAPEDP shaped =
    (_LIBAROMA_TEXTSHAPEDP) malloc(sizeof(_LIBAROMA_TEXTSHAPED));
  shaped->coln = glyph_count;
  shaped->cols = (_LIBAROMA_TEXTCOLUMNP)
    malloc(sizeof(_LIBAROMA_TEXTCOLUMN) * shaped->coln);
  shaped->rtl = chunk->rtl;
  shaped->font = _LIBAROMA_TEXT_FONT(span->fontid, fontsize);
  shaped->next = NULL;
  
  for (i = 0; i < glyph_count; i++) {
    /* offsets and advances */
    int xo = glyph_pos[i].x_offset  >> 6;
    int yo = glyph_pos[i].y_offset  >> 6;
    int xa = glyph_pos[i].x_advance >> 6;
    int ya = glyph_pos[i].y_advance >> 6;
    /* position */
    int gx = sizer_x + xo;
    int gy = sizer_y + yo;
    /* retrive min & max */
    if (min_x > gx) {
      min_x = gx;
    }
    if (max_x < gx) {
      max_x = gx;
    }
    if (min_y > gy) {
      min_y = gy;
    }
    if (max_y < gy) {
      max_y = gy;
    }
    /* save data into column */
    u = glyph_info[i].codepoint;
    shaped->cols[i].id  = u;
    shaped->cols[i].x   = x + xo;
    shaped->cols[i].y   = y - yo;
    shaped->cols[i].w   = xa;
    /* advance position */
    sizer_x += xa;
    sizer_y += ya;
    /* glyph position */
    x += xa;
    y -= ya;
  }
  hb_buffer_destroy(buf);

#endif
  
  /* still have to take into account last glyph's advance. or not? */
  if (min_x > sizer_x) {
    min_x = sizer_x;
  }
  if (max_x < sizer_x) {
    max_x = sizer_x;
  }
  if (min_y > sizer_y) {
    min_y = sizer_y;
  }
  if (max_y < sizer_y) {
    max_y = sizer_y;
  }
  
  /* get bounding box */
  shaped->w = max_x - min_x;
  shaped->h = max_y - min_y;
  _libaroma_text_lock(0);
  return shaped;
} /* End of libaroma_text_shaper */

/*
 * Function    : libaroma_text_shaper_free
 * Return Value: byte
 * Descriptions: free text shaper
 */
byte libaroma_text_shaper_free(
    _LIBAROMA_TEXTSHAPEDP shaped) {
  if (shaped == NULL) {
    return 0;
  }
  if (shaped->cols) {
    free(shaped->cols);
  }
  free(shaped);
  return 1;
} /* End of libaroma_text_shaper_free */

/*
 * Function    : libaroma_text_get_preshaped
 * Return Value: byte
 * Descriptions: process raw uchar into preshaped
 */
byte libaroma_text_get_preshaped(
    _LIBAROMA_TEXTPRESHAPEDP span,
    _LIBAROMA_TEXTCHUNKP chunk,
    ucharp text,
    int len){
  int i = 0;
  byte span_rtl = chunk->rtl;
  int span_script = -1;
  span->fontid = _LIBAROMA_TEXTCHUNK_GETFONTID(chunk->curr_state.font);
  span->text = NULL;
  span->len = 0;
  
  /* characters loop */
  while (i < len) {
    uchar c = text[i];
    /* check available glyph in font-set */
    byte glyphfid;
    libaroma_font_glyph_get_id(text[i], span->fontid, &glyphfid);
    /* check rtl and script value */
    byte  glyphrtl = _libaroma_text_direction(c, span_rtl);
    int   glyphscript = ucdn_get_script(c);
    /* check span script */
    if ((span_script == -1) && (glyphscript != UCDN_SCRIPT_INHERITED)) {
      span_script = glyphscript;
    }
    /* set span font id & direction */
    if (i == 0) {
      span->fontid = glyphfid;
      span_rtl     = glyphrtl;
    }
    /* stop if font id is changed */
    if (span->fontid != glyphfid) {
      break;
    }
    /* stop if direction is change */
    if (span_rtl != glyphrtl) {
      break;
    }
    i++;
  }
  /* if script undefined, use previous script */
  if (span_script == -1) {
    span_script = chunk->script;
  }
  /* set chunk script & rtl */
  chunk->script = span_script;
  chunk->rtl    = span_rtl;
  if (i == 0) {
    return 0;
  }
  /* copy span text */
  span->len   = i;
  span->text  = (ucharp) malloc(sizeof(uchar) * (span->len + 1));
  memcpy(span->text, text, sizeof(uchar) * span->len);
  span->text[span->len] = 0;
  return 1;
} /* End of libaroma_text_get_preshaped */

/*
 * Function    : libaroma_text_group_split
 * Return Value: _LIBAROMA_TEXTSHAPED_GROUPP
 * Descriptions: split long shaped text
 */
_LIBAROMA_TEXTSHAPED_GROUPP libaroma_text_group_split(
    _LIBAROMA_TEXTSHAPED_GROUPP * group_src,
    int limit_width) {
  _LIBAROMA_TEXTSHAPED_GROUPP group = *group_src;
  /* calculate count */
  int shaped_n = 0;
  _LIBAROMA_TEXTSHAPEDP shaped = group->shaped;
  while (shaped) {
    shaped_n++;
    shaped = shaped->next;
  }
  /* calculate x position */
  int * shaped_x = (int *) calloc(sizeof(int),shaped_n);
  shaped = group->shaped;
  byte rtl = 0;
  int rtl_id = -1;
  shaped_n = 0;
  int curr_x = 0;
  while (shaped) {
    /* rtl check */
    if (rtl && (rtl_id == -1)) {
      rtl_id = shaped_n;
    }
    else if ((!rtl) && (rtl_id != -1)) {
      rtl_id = -1;
    }
    if ((rtl_id == -1) || (rtl_id == shaped_n)) {
      shaped_x[shaped_n] = curr_x;
      curr_x += shaped->w;
    }
    else {
      shaped_x[shaped_n] = shaped_x[rtl_id];
      int i;
      for (i = rtl_id; i < shaped_n; i++) {
        shaped_x[i] += shaped->w;
      }
      curr_x += shaped->w;
    }
    shaped_n++;
    shaped = shaped->next;
  }
  shaped    = group->shaped;
  shaped_n  = 0;
  
  /* get unpending data */
  _LIBAROMA_TEXTSHAPEDP used_shaped = NULL;
  _LIBAROMA_TEXTSHAPEDP used_shaped_last = NULL;
  int group_w = 0;
  int group_h = 0;
  
  while (shaped) {
    int sx = shaped_x[shaped_n];
    _LIBAROMA_TEXTSHAPEDP new_shaped = NULL;
    if (shaped->w + sx < limit_width) {
      /* direct move */
      new_shaped = (_LIBAROMA_TEXTSHAPEDP)
        malloc(sizeof(_LIBAROMA_TEXTSHAPED));
      memcpy(new_shaped,
        shaped, sizeof(_LIBAROMA_TEXTSHAPED));
      shaped->cols = NULL;
      shaped->coln = 0;
    }
    else {
      int i;
      int used_n = 0;
      for (i = 0; i < shaped->coln; i++) {
        if (shaped->cols[i].x + sx + shaped->cols[i].w < limit_width) {
          used_n++;
        }
      }
      if (used_n > 0) {
        new_shaped = (_LIBAROMA_TEXTSHAPEDP)
          malloc(sizeof(_LIBAROMA_TEXTSHAPED));
        memcpy(new_shaped,
          shaped, sizeof(_LIBAROMA_TEXTSHAPED));
        new_shaped->cols =
          malloc(sizeof(_LIBAROMA_TEXTCOLUMN) * used_n);
        new_shaped->coln = used_n;
        new_shaped->w = limit_width - sx;
        used_n = 0;
        for (i = 0; i < shaped->coln; i++) {
          if (shaped->cols[i].x + sx + shaped->cols[i].w < limit_width) {
            memcpy(new_shaped->cols + used_n,
              shaped->cols + i, sizeof(_LIBAROMA_TEXTCOLUMN));
            used_n++;
          }
        }
      }
    }
    if (new_shaped != NULL) {
      if (used_shaped == NULL) {
        used_shaped = new_shaped;
        used_shaped_last = new_shaped;
      }
      else {
        used_shaped_last->next = new_shaped;
        used_shaped_last = new_shaped;
      }
      /* calculate group size */
      group_w += new_shaped->w;
      if (group_h < new_shaped->h) {
        group_h = new_shaped->h;
      }
    }
    shaped_n++;
    shaped = shaped->next;
  }
  
  shaped    = group->shaped;
  shaped_n  = 0;
  /* get pending data */
  _LIBAROMA_TEXTSHAPEDP pending_shaped      = NULL;
  _LIBAROMA_TEXTSHAPEDP pending_shaped_last = NULL;
  int pgroup_w = 0;
  int pgroup_h = 0;
  while (shaped) {
    int sx    = shaped_x[shaped_n];
    _LIBAROMA_TEXTSHAPEDP new_shaped = NULL;
    int limit_width_min = limit_width;
    if (sx >= limit_width) {
      /* direct move */
      new_shaped = (_LIBAROMA_TEXTSHAPEDP)
        malloc(sizeof(_LIBAROMA_TEXTSHAPED));
      memcpy(new_shaped, 
        shaped, sizeof(_LIBAROMA_TEXTSHAPED));
      shaped->cols = NULL;
      shaped->coln = 0;
    }
    else if (shaped->w + sx >= limit_width) {
      int i;
      int used_n = 0;
      int this_limit_n = limit_width;
      for (i = 0; i < shaped->coln; i++) {
        if (shaped->cols[i].x + sx + shaped->cols[i].w >= limit_width) {
          if (this_limit_n > shaped->cols[i].x) {
            this_limit_n = shaped->cols[i].x;
          }
          used_n++;
        }
      }
      if (this_limit_n < limit_width_min) {
        limit_width_min = this_limit_n;
      }
      if (used_n > 0) {
        new_shaped = (_LIBAROMA_TEXTSHAPEDP)
          malloc(sizeof(_LIBAROMA_TEXTSHAPED));
        memcpy(new_shaped,
          shaped, sizeof(_LIBAROMA_TEXTSHAPED));
        new_shaped->cols = malloc(sizeof(_LIBAROMA_TEXTCOLUMN) * used_n);
        new_shaped->coln = used_n;
        new_shaped->w = (sx + shaped->w) - this_limit_n;
        used_n = 0;
        for (i = 0; i < shaped->coln; i++) {
          if (shaped->cols[i].x + sx + shaped->cols[i].w >= limit_width) {
            memcpy(new_shaped->cols + used_n,
              shaped->cols + i, sizeof(_LIBAROMA_TEXTCOLUMN));
            used_n++;
          }
        }
      }
    }
    if (new_shaped != NULL) {
      int j;
      for (j = 0; j < new_shaped->coln; j++) {
        new_shaped->cols[j].x -= limit_width_min;
      }
      if (pending_shaped == NULL) {
        pending_shaped             = new_shaped;
        pending_shaped_last        = new_shaped;
      }
      else {
        pending_shaped_last->next  = new_shaped;
        pending_shaped_last        = new_shaped;
      }
      /* calculate group size */
      pgroup_w += new_shaped->w;
      if (pgroup_h < new_shaped->h) {
        pgroup_h = new_shaped->h;
      }
    }
    shaped_n++;
    shaped = shaped->next;
  }
  free(shaped_x);
  /* now free group */
  _libaroma_text_group_free(*group_src, 1);
  /* create new group */
  *group_src    = (_LIBAROMA_TEXTSHAPED_GROUPP)
    malloc(sizeof(_LIBAROMA_TEXTSHAPED_GROUP));
  group         = *group_src;
  group->shaped = used_shaped;
  group->w      = group_w;
  group->h      = group_h;
  /* create new pending group */
  group         = (_LIBAROMA_TEXTSHAPED_GROUPP)
    malloc(sizeof(_LIBAROMA_TEXTSHAPED_GROUP));
  group->shaped = pending_shaped;
  group->w      = pgroup_w;
  group->h      = pgroup_h;
  return group;
} /* End of libaroma_text_group_split */

/*
 * Function    : libaroma_text_group
 * Return Value: _LIBAROMA_TEXTSHAPED_GROUPP
 * Descriptions: process and grouping shaped text
 */
_LIBAROMA_TEXTSHAPED_GROUPP libaroma_text_group(
    _LIBAROMA_TEXTCHUNKP chunk) {
  /* there is unused group from previous line */
  if (chunk->next_group != NULL) {
    return chunk->next_group;
  }
  /* string result */
  char buf[_LIBAROMA_TEXTCHUNK_MAX_BUF];
  byte res;
  do {
    /* get next usable chunk */
    res = _libaroma_text_parse_next(chunk, buf);
  }
  while (
    ((_LIBAROMA_TEXTCHUNK_RETURN_EOF & res) == 0) &&
    ((_LIBAROMA_TEXTCHUNK_RETURN_HAVEBUF & res) == 0) &&
    ((_LIBAROMA_TEXTCHUNK_RETURN_TAG & res) == 0) &&
    ((_LIBAROMA_TEXTCHUNK_RETURN_NEWLINE & res) == 0) &&
    ((_LIBAROMA_TEXTCHUNK_RETURN_SPACE & res) == 0) &&
    ((_LIBAROMA_TEXTCHUNK_RETURN_TAB & res) == 0)
  );
  /* save last chunk result */
  chunk->last_res = res;
  
  /* if it was tag (img/hr) return it directly */
  if (_LIBAROMA_TEXTCHUNK_RETURN_TAG & res) {
    return NULL;
  }
  
  /* group container */
  _LIBAROMA_TEXTSHAPED_GROUPP shaped_group = NULL;
  
  /* we have a buffer */
  if (res & _LIBAROMA_TEXTCHUNK_RETURN_HAVEBUF) {
    /* Get utf32 length */
    int   len   = libaroma_utf8_len(buf);
    if (len > 0) {
      /* convert utf8 to utf32 */
      ucharp text = libaroma_utf8_dec(buf);
      int clen = len;
      ucharp ctext = text;
      
      /* shaping data */
      _LIBAROMA_TEXTSHAPEDP first_shaped = NULL;
      _LIBAROMA_TEXTSHAPEDP last_shaped = NULL;
      int group_w = 0;
      int group_h = 0;
      while (clen > 0) {
        _LIBAROMA_TEXTPRESHAPED preshaped;
        if (libaroma_text_get_preshaped(&preshaped, chunk, ctext, clen)) {
          /* do shaping */
          _LIBAROMA_TEXTSHAPEDP shaped =
            libaroma_text_shaper(&preshaped, chunk);
          if (shaped != NULL) {
            if (first_shaped == NULL) {
              first_shaped      = shaped;
              last_shaped       = shaped;
            }
            else {
              last_shaped->next = shaped;
              last_shaped       = shaped;
            }
            /* calculate group size */
            group_w += shaped->w;
            if (group_h < shaped->h) {
              group_h = shaped->h;
            }
          }
          /* incrementing */
          ctext += preshaped.len;
          clen -= preshaped.len;
          /* cleanup preshaped */
          free(preshaped.text);
        }
        else {
          break;
        }
      }
      if (first_shaped != NULL) {
        /* return values */
        shaped_group = (_LIBAROMA_TEXTSHAPED_GROUPP)
          malloc(sizeof(_LIBAROMA_TEXTSHAPED_GROUP));
        shaped_group->shaped = first_shaped;
        shaped_group->w      = group_w;
        shaped_group->h      = group_h;
      }
      /* release */
      free(text);
    }
  }
  if (_LIBAROMA_TEXTCHUNK_RETURN_EOF & res) {
    /* no more data */
    chunk->state &= ~ _LIBAROMA_TEXTCHUNK_STATE_OK;
  }
  return shaped_group;
} /* End of libaroma_text_group */

/*
 * Function    : _libaroma_text_group_free
 * Return Value: byte
 * Descriptions: free shaped group
 */
byte _libaroma_text_group_free(
    _LIBAROMA_TEXTSHAPED_GROUPP span_group,
    byte freeshaped) {
  if (span_group == NULL) {
    return 0;
  }
  if (freeshaped) {
    _LIBAROMA_TEXTSHAPEDP shaped =
      span_group->shaped;
    while (shaped) {
      _LIBAROMA_TEXTSHAPEDP prev = shaped;
      shaped = shaped->next;
      libaroma_text_shaper_free(prev);
    }
  }
  free(span_group);
  return 1;
} /* End of _libaroma_text_group_free */



#endif /* __libaroma_text_shaper_c__ */
