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
 * Filename    : font_hb.c
 * Description : harfbuzz-ng handler
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_font_hb_c__
#define __libaroma_font_hb_c__
#ifndef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ

/*
 * Function    : _libaroma_font_hb_load_glyph
 * Return Value: static void
 * Descriptions: load glyph for harfbuzz-ng callbacks
 */
static _LIBAROMA_FONT_SLOT_CACHEP _libaroma_font_hb_load_glyph(
    _LIBAROMA_FONT_FACEP aface,
    hb_codepoint_t glyph) {
  return (_LIBAROMA_FONT_SLOT_CACHEP) libaroma_font_glyph(glyph,aface->id,0);
} /* End of _libaroma_font_hb_load_glyph */

/* simplicity macros */
#define _LIBAROMA_FONT_HB_AFACE() \
  _LIBAROMA_FONT_FACEP aface = (_LIBAROMA_FONT_FACEP) font_data
#define _LIBAROMA_FONT_HB_FTFACE() \
  _LIBAROMA_FONT_HB_AFACE(); \
  FT_Face ft_face = aface->face
#define _LIBAROMA_FONT_HB_LOADFACE() \
  _LIBAROMA_FONT_HB_AFACE(); \
  _LIBAROMA_FONT_SLOT_CACHEP loaded_glyph = \
    _libaroma_font_hb_load_glyph(aface,glyph)

/* Harfbuzz Callbacks:
 * glyph
 * glyph_h_advance
 * glyph_v_advance
 * glyph_h_origin
 * glyph_v_origin
 * glyph_h_kerning
 * glyph_v_kerning
 * glyph_extents
 * glyph_contour_point
 * glyph_name
 * glyph_from_name
 */
/* glyph */
static hb_bool_t _libaroma_font_hb_glyph_func(
  hb_font_t * font,
  void * font_data,
  hb_codepoint_t unicode,
  hb_codepoint_t variation_selector,
  hb_codepoint_t * glyph,
  void * user_data
) {
  _LIBAROMA_FONT_HB_FTFACE();
  _libaroma_font_lock(1);
  *glyph = FT_Get_Char_Index(ft_face, unicode);
  _libaroma_font_lock(0);
  return *glyph != 0;
}
/* glyph_h_advance */
static hb_position_t _libaroma_font_hb_glyph_h_advance_func(
  hb_font_t * font,
  void * font_data,
  hb_codepoint_t glyph,
  void * user_data
) {
  _LIBAROMA_FONT_HB_FTFACE();
  FT_Fixed v;
  _libaroma_font_lock(1);
  if (FT_Get_Advance(ft_face,glyph,_LIBAROMA_FONT_LOAD_GLYPH_FLAG,&v)){
    _libaroma_font_lock(0);
    return 0;
  }
  _libaroma_font_lock(0);
  return (v + (1 << 9)) >> 10;
}
/* glyph_v_advance */
static hb_position_t _libaroma_font_hb_glyph_v_advance_func(
  hb_font_t * font,
  void * font_data,
  hb_codepoint_t glyph,
  void * user_data
) {
  _LIBAROMA_FONT_HB_FTFACE();
  FT_Fixed v;
  _libaroma_font_lock(1);
  if (FT_Get_Advance(
      ft_face, glyph,
      _LIBAROMA_FONT_LOAD_GLYPH_FLAG|FT_LOAD_VERTICAL_LAYOUT,
      &v)) {
    _libaroma_font_lock(0);
    return 0;
  }
  _libaroma_font_lock(0);
  return (-v + (1 << 9)) >> 10;
}
/* glyph_h_origin */
static hb_bool_t _libaroma_font_hb_glyph_h_origin_func(
  hb_font_t * font,
  void * font_data,
  hb_codepoint_t glyph,
  hb_position_t * x,
  hb_position_t * y,
  void * user_data
) {
  return true;
}
/* glyph_v_origin */
static hb_bool_t _libaroma_font_hb_glyph_v_origin_func(
  hb_font_t * font,
  void * font_data,
  hb_codepoint_t glyph,
  hb_position_t * x,
  hb_position_t * y,
  void * user_data
) {
  _LIBAROMA_FONT_HB_LOADFACE();
  if (!loaded_glyph) {
    return false;
  }
  *x = loaded_glyph->metrics.horiBearingX-
    loaded_glyph->metrics.vertBearingX;
  *y = loaded_glyph->metrics.horiBearingY-
    (-loaded_glyph->metrics.vertBearingY);
  return true;
}
/* glyph_h_kerning */
static hb_position_t _libaroma_font_hb_glyph_h_kerning_func(
  hb_font_t * font,
  void * font_data,
  hb_codepoint_t left_glyph,
  hb_codepoint_t right_glyph,
  void * user_data
) {
  _LIBAROMA_FONT_HB_FTFACE();
  FT_Vector kerningv;
  unsigned int x_ppem;
  unsigned int y_ppem;
  hb_font_get_ppem (font,&x_ppem,&y_ppem);
  FT_Kerning_Mode mode  = (x_ppem?FT_KERNING_DEFAULT:FT_KERNING_UNFITTED);
  _libaroma_font_lock(1);
  if (FT_Get_Kerning (ft_face, left_glyph, right_glyph, mode, &kerningv)) {
    _libaroma_font_lock(0);
    return 0;
  }
  _libaroma_font_lock(0);
  return kerningv.x;
}
/* glyph_v_kerning */
static hb_position_t _libaroma_font_hb_glyph_v_kerning_func(
  hb_font_t * font,
  void * font_data,
  hb_codepoint_t top_glyph,
  hb_codepoint_t bottom_glyph,
  void * user_data
) {
  return 0;
}
/* glyph_extents */
static hb_bool_t _libaroma_font_hb_glyph_extents_func(
  hb_font_t * font,
  void * font_data,
  hb_codepoint_t glyph,
  hb_glyph_extents_t * extents,
  void * user_data
) {
  _LIBAROMA_FONT_HB_LOADFACE();
  if (!loaded_glyph) {
    return false;
  }
  extents->x_bearing = loaded_glyph->metrics.horiBearingX;
  extents->y_bearing = loaded_glyph->metrics.horiBearingY;
  extents->width = loaded_glyph->metrics.width;
  extents->height = -loaded_glyph->metrics.height;
  return true;
}
/* glyph_contour_point */
static hb_bool_t _libaroma_font_hb_glyph_contour_point_func(
  hb_font_t * font,
  void * font_data,
  hb_codepoint_t glyph,
  unsigned int point_index,
  hb_position_t * x,
  hb_position_t * y,
  void * user_data
) {
  _LIBAROMA_FONT_HB_LOADFACE();
  if (!loaded_glyph) {
    return false;
  }
  if (loaded_glyph->glyph->format != FT_GLYPH_FORMAT_OUTLINE) {
    return false;
  }
  FT_OutlineGlyph glp = (FT_OutlineGlyph) loaded_glyph->glyph;
  if (point_index >= (unsigned int) glp->outline.n_points) {
    return false;
  }
  *x = glp->outline.points[point_index].x;
  *y = glp->outline.points[point_index].y;
  return true;
}
/* glyph_name */
static hb_bool_t _libaroma_font_hb_glyph_name_func(
  hb_font_t * font,
  void * font_data,
  hb_codepoint_t glyph,
  char * name, unsigned int size,
  void * user_data
) {
  _LIBAROMA_FONT_HB_FTFACE();
  _libaroma_font_lock(1);
  hb_bool_t ret = !FT_Get_Glyph_Name(ft_face, glyph, name, size);
  _libaroma_font_lock(0);
  if (ret && (size && !*name)) {
    ret = false;
  }
  return ret;
}
/* glyph_from_name */
static hb_bool_t _libaroma_font_hb_glyph_from_name_func(
  hb_font_t * font,
  void * font_data,
  const char * name,
  int len,
  hb_codepoint_t * glyph,
  void * user_data
) {
  _LIBAROMA_FONT_HB_FTFACE();
  if (len < 0) {
    _libaroma_font_lock(1);
    *glyph = FT_Get_Name_Index(ft_face, (FT_String *) name);
    _libaroma_font_lock(0);
  }
  else {
    char buf[128];
    len = MIN(len, (int) sizeof (buf) - 1);
    strncpy (buf, name, len);
    buf[len] = '\0';
    _libaroma_font_lock(1);
    *glyph = FT_Get_Name_Index (ft_face, buf);
    _libaroma_font_lock(0);
  }
  if (*glyph == 0) {
    _libaroma_font_lock(1);
    char buf[128];
    if (
      (!FT_Get_Glyph_Name(ft_face, 0, buf, sizeof (buf))) &&
      (len < 0 ? !strcmp (buf, name) : !strncmp (buf, name, len))
    ) {
      _libaroma_font_lock(0);
      return true;
    }
    _libaroma_font_lock(0);
  }
  return *glyph != 0;
}

/*
 * Function    : _libaroma_font_hb_init_callbacks
 * Return Value: hb_font_funcs_t *
 * Descriptions: init harfbuzz-ng callbacks
 */
static hb_font_funcs_t * _LIBAROMA_FONT_HB_FUNCTIONS_CB = NULL;
static hb_font_funcs_t * _libaroma_font_hb_init_callbacks() {
  if (_LIBAROMA_FONT_HB_FUNCTIONS_CB == NULL) {
    _LIBAROMA_FONT_HB_FUNCTIONS_CB = hb_font_funcs_create();
#define _LIBAROMA_FONT_HB_REG_FUNC(name) \
  hb_font_funcs_set_##name##_func(\
    _LIBAROMA_FONT_HB_FUNCTIONS_CB, \
    (hb_font_get_##name##_func_t) _libaroma_font_hb_##name##_func , \
    NULL, \
    NULL \
  )
  _LIBAROMA_FONT_HB_REG_FUNC(glyph);
  _LIBAROMA_FONT_HB_REG_FUNC(glyph_h_advance);
  _LIBAROMA_FONT_HB_REG_FUNC(glyph_v_advance);
  _LIBAROMA_FONT_HB_REG_FUNC(glyph_h_origin);
  _LIBAROMA_FONT_HB_REG_FUNC(glyph_v_origin);
  _LIBAROMA_FONT_HB_REG_FUNC(glyph_h_kerning);
  _LIBAROMA_FONT_HB_REG_FUNC(glyph_v_kerning);
  _LIBAROMA_FONT_HB_REG_FUNC(glyph_extents);
  _LIBAROMA_FONT_HB_REG_FUNC(glyph_contour_point);
  _LIBAROMA_FONT_HB_REG_FUNC(glyph_name);
  _LIBAROMA_FONT_HB_REG_FUNC(glyph_from_name);
#undef _LIBAROMA_FONT_HB_REG_FUNC
  }
  return _LIBAROMA_FONT_HB_FUNCTIONS_CB;
} /* End of _libaroma_font_hb_init_callbacks */

/*
 * Function    : _libaroma_font_hb_free_functions
 * Return Value: void
 * Descriptions: release harfbuzz-ng functions
 */
void _libaroma_font_hb_free_functions() {
  /* Free Function Callback */
  if (_LIBAROMA_FONT_HB_FUNCTIONS_CB != NULL) {
    hb_font_funcs_destroy(_LIBAROMA_FONT_HB_FUNCTIONS_CB);
    _LIBAROMA_FONT_HB_FUNCTIONS_CB = NULL;
  }
} /* End of _libaroma_font_hb_free_functions */



/*
 * Function    : _libaroma_font_hb_ref_table
 * Return Value: hb_blob_t *
 * Descriptions: harfbuzz-ng reference table
 */
static hb_blob_t * _libaroma_font_hb_ref_table(
    hb_face_t * face,
    hb_tag_t tag,
    void * font_data) {
  _LIBAROMA_FONT_HB_FTFACE();
  FT_ULong  length    = 0;
  FT_Byte  * buffer;
  FT_Error  error;
  _libaroma_font_lock(1);
  error = FT_Load_Sfnt_Table (ft_face, tag, 0, NULL, &length);
  _libaroma_font_lock(0);
  if (error) {
    return NULL;
  }
  buffer = (FT_Byte *) malloc (length);
  if (buffer == NULL) {
    return NULL;
  }
  _libaroma_font_lock(1);
  error = FT_Load_Sfnt_Table(ft_face, tag, 0, buffer, &length);
  _libaroma_font_lock(0);
  if (error) {
    return NULL;
  }
  return hb_blob_create ((const char *) buffer, length,
                         HB_MEMORY_MODE_WRITABLE,
                         buffer, free);
} /* End of _libaroma_font_hb_ref_table */

/*
 * Function    : _libaroma_font_hb_destroy_function
 * Return Value: static void
 * Descriptions: dummy destroy function
 */
static void _libaroma_font_hb_destroy_function(void) {
} /* End of _libaroma_font_hb_destroy_function */

/*
 * Function    : _libaroma_font_hb_update_scale
 * Return Value: void
 * Descriptions: update harfbuzz-ng scaling - use when set font size
 */
void _libaroma_font_hb_update_scale(
    byte fontid) {
  _LIBAROMA_FONT_FACEP aface =
    (_LIBAROMA_FONT_FACEP) (&_libaroma_font_faces[fontid]);
  if (aface->hb_font) {
    /* set scale */
    int v1 = (int) (((uint64_t) aface->face->size->metrics.x_scale *
      (uint64_t) aface->face->units_per_EM + (1 << 15)) >> 16);
    int v2 = (int) (((uint64_t) aface->face->size->metrics.y_scale *
      (uint64_t) aface->face->units_per_EM + (1 << 15)) >> 16);
    hb_font_set_scale (aface->hb_font, v1, v2);
    /* set ppem */
    hb_font_set_ppem (aface->hb_font,
                      aface->face->size->metrics.x_ppem,
                      aface->face->size->metrics.y_ppem);
  }
} /* End of _libaroma_font_hb_update_scale */

/*
 * Function    : _libaroma_font_hb_free
 * Return Value: void
 * Descriptions: free harfbuzz-ng from aroma font face
 */
void _libaroma_font_hb_free(
    byte fontid) {
  /* Free Harfbuzz Font */
  if (_libaroma_font_faces[fontid].hb_font != NULL) {
    hb_font_destroy(_libaroma_font_faces[fontid].hb_font);
    _libaroma_font_faces[fontid].hb_font = NULL;
  }
} /* End of _libaroma_font_hb_free */

/*
 * Function    : _libaroma_font_hb_init
 * Return Value: hb_font_t *
 * Descriptions: init harfbuzz-ng font
 */
hb_font_t * _libaroma_font_hb_init(
    byte fontid) {
  _LIBAROMA_FONT_FACEP aface =
    (_LIBAROMA_FONT_FACEP) (&_libaroma_font_faces[fontid]);
  FT_Face ft_face = aface->face;
  /* init harfbuzz face */
  hb_face_t * hb_face;
  if (ft_face->stream->read == NULL) {
    hb_blob_t * blob;
    blob = hb_blob_create (
       (const char *) ft_face->stream->base,
       (unsigned int) ft_face->stream->size,
       HB_MEMORY_MODE_READONLY_MAY_MAKE_WRITABLE,
       (void *) aface,
       NULL
     );
    hb_face = hb_face_create(blob, ft_face->face_index);
    hb_blob_destroy(blob);
  }
  else {
    hb_face = hb_face_create_for_tables(
      _libaroma_font_hb_ref_table, (void *) aface, NULL);
  }
  /* set index */
  hb_face_set_index(hb_face, ft_face->face_index);
  hb_face_set_upem(hb_face, ft_face->units_per_EM);
  /* init harfbuzz font */
  hb_font_t * hb_font = hb_font_create (hb_face);
  hb_face_destroy(hb_face);
  /* set callback functions */
  hb_font_set_funcs(
    hb_font,
    _libaroma_font_hb_init_callbacks(),
    (void *) aface,
    (hb_destroy_func_t) _libaroma_font_hb_destroy_function
  );
  /* save */
  aface->hb_font = hb_font;
  /* update scale */
  _libaroma_font_hb_update_scale(fontid);
  return aface->hb_font;
} /* End of _libaroma_font_hb_init */


#endif /* LIBAROMA_CONFIG_TEXT_NOHARFBUZZ */
#endif /* __libaroma_font_hb_c__ */
