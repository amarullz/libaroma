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
 * Filename    : text_public.c
 * Description : public text engine functions
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_text_public_c__
#define __libaroma_text_public_c__

/*
 * Function    : libaroma_text_line_count
 * Return Value: int
 * Descriptions: get number of line
 */
int libaroma_text_line_count(
    LIBAROMA_TEXT text) {
  if (text) {
    _LIBAROMA_TEXTP txt = (_LIBAROMA_TEXTP) text;
    return txt->n;
  }
  return 0;
} /* End of libaroma_text_line_count */

/*
 * Function    : libaroma_text_height
 * Return Value: int
 * Descriptions: get text height
 */
int libaroma_text_height(
    LIBAROMA_TEXT text) {
  if (text) {
    _LIBAROMA_TEXTP txt = (_LIBAROMA_TEXTP) text;
    return txt->h;
  }
  return 0;
} /* End of libaroma_text_height */

/*
 * Function    : libaroma_text_height
 * Return Value: int
 * Descriptions: get text width
 */
int libaroma_text_width(
    LIBAROMA_TEXT text) {
  int i;
  int maxx = 0, minx = 0;
  int first = 1;

  if (text) {
    _LIBAROMA_TEXTP txt = (_LIBAROMA_TEXTP) text;
    for(i=0; i<txt->n; i++) {
      _LIBAROMA_TEXTLINEP linep = txt->lines[i];

      if(first || linep->maxx>maxx)
        maxx = linep->maxx;
      if(first || linep->minx<minx)
        minx = linep->minx;
      if(first)
        first = 0;
    }
  }
  return maxx-minx;
} /* End of libaroma_text_width */

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
) {
  byte font  = _LIBAROMA_TEXT_GET_FONT(txtflags);
  byte rules = _LIBAROMA_TEXT_GET_RULE(txtflags);
  byte flags = _LIBAROMA_TEXT_GET_FLAG(txtflags);
  byte align = _LIBAROMA_TEXT_GET_ALIGN(txtflags);
  if (!font){
    font=LIBAROMA_FONT(0,2);
  }
  if (!linespacing) {
    linespacing = 120;
  }
  _libaroma_pubtext_lock(1);
  _LIBAROMA_TEXTCHUNK_ALIGN_SET(flags, align);
  _LIBAROMA_TEXTCHUNKP chunk =
    _libaroma_text_parse(
      text,
      rules,
      flags,
      color,
      font,
      maxwidth,
      linespacing
  );
  _LIBAROMA_TEXTP txt =
    (_LIBAROMA_TEXTP) calloc(sizeof(_LIBAROMA_TEXT),1);
  _LIBAROMA_TEXTLINESP lines =
    (_LIBAROMA_TEXTLINESP) malloc(sizeof(_LIBAROMA_TEXTLINES));
  _LIBAROMA_TEXTLINESP last_lines = lines;
  last_lines->line = NULL;
  while (chunk->state & _LIBAROMA_TEXTCHUNK_STATE_OK) {
    _LIBAROMA_TEXTLINEP line = libaroma_textline(chunk);
    if (line != NULL) {
      if (last_lines->line != NULL) {
        last_lines->next =
          (_LIBAROMA_TEXTLINESP) malloc(sizeof(_LIBAROMA_TEXTLINES));
        last_lines = last_lines->next;
      }
      last_lines->line = line;
      last_lines->next = NULL;
      txt->n++;
      txt->h += line->lineheight;
      if (rules & _LIBAROMA_TEXT_SINGLELINE) {
        break;
      }
    }
  }
  _libaroma_text_parse_free(chunk);
  if (lines->line != NULL) {
    txt->lines = (_LIBAROMA_TEXTLINEP *)
      malloc(sizeof(_LIBAROMA_TEXTLINEP) * txt->n);
    last_lines = lines;
    int i = 0;
    while (last_lines) {
      txt->lines[i] = last_lines->line;
      _LIBAROMA_TEXTLINESP prevline = last_lines;
      last_lines = last_lines->next;
      free(prevline);
      i++;
    }
    _libaroma_pubtext_lock(0);
    return (LIBAROMA_TEXT) txt;
  }
  free(txt);
  free(lines);
  _libaroma_pubtext_lock(0);
  return NULL;
} /* End of libaroma_text */

/*
 * Function    : libaroma_text_free
 * Return Value: byte
 * Descriptions: free text
 */
byte libaroma_text_free(LIBAROMA_TEXT text) {
  if (text) {
  	_libaroma_pubtext_lock(1);
    _LIBAROMA_TEXTP txt = (_LIBAROMA_TEXTP) text;
    int i;
    for (i = 0; i < txt->n; i++) {
      libaroma_textline_free(txt->lines[i]);
    }
    free(txt->lines);
    free(txt);
    _libaroma_pubtext_lock(0);
    return 1;
  }
  return 0;
} /* End of libaroma_text_free */

/*
 * Function    : libaroma_text_line_info
 * Return Value: int
 * Descriptions: get line info
 */
int libaroma_text_line_info(
    LIBAROMA_TEXT text,
    int line,
    byte info) {
  if (text) {
    _LIBAROMA_TEXTP txt = (_LIBAROMA_TEXTP) text;
    
    if (line > txt->n - 1) {
      return 0;
    }
    else if (line < 0) {
      return 0;
    }
    _LIBAROMA_TEXTLINEP linep = txt->lines[line];
    if (info == LIBAROMA_TEXTLINE_INFO_CONTENT_WIDTH) {
      return linep->maxx - linep->minx;
    }
    else if (info == LIBAROMA_TEXTLINE_INFO_RIGHT) {
      return linep->maxx;
    }
    else if (info == LIBAROMA_TEXTLINE_INFO_LEFT) {
      return linep->minx;
    }
    else if (info == LIBAROMA_TEXTLINE_INFO_HEIGHT) {
      return linep->lineheight;
    }
    else if (info == LIBAROMA_TEXTLINE_INFO_WIDTH) {
      return linep->w;
    }
    else if (info == LIBAROMA_TEXTLINE_INFO_BASELINE) {
      return linep->h;
    }
  }
  return 0;
} /* End of libaroma_text_line_info */

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
) {
  if (!dest) {
    dest = libaroma_fb()->canvas;
  }
  if ((dy > dest->h) || (dx > dest->w)) {
    return 0;
  }
  if (text) {
    _LIBAROMA_TEXTP txt = (_LIBAROMA_TEXTP) text;
    if (line > txt->n - 1) {
      return 0;
    }
    else if (line < 0) {
      return 0;
    }
    _LIBAROMA_TEXTLINEP line_txt = txt->lines[line];
    _libaroma_pubtext_lock(1);
    if (line_txt->span) {
      if (!isshadow) {
        libaroma_textline_draw(
          dest,
          line_txt,
          dx,
          dy - line_txt->y, 0, 0);
      }
      else if (isshadow>=10) {
        libaroma_textline_draw(
          dest,
          line_txt,
          dx,
          dy - line_txt->y, 1, shadow_color);
      }
      else if (radius > 0) {
        byte light = (isshadow == 2) ? 1 : 0;
        int w = line_txt->maxx - line_txt->minx;
        int h = line_txt->lineheight * 1.5;
        int xx, yy;
        LIBAROMA_CANVASP cv = libaroma_canvas_ex(w, h, 0);
        word trans_color = (light) ? 0xffff : 0x0000;
        word fore_color = (light) ? 0x0000 : 0xffff;
        libaroma_canvas_setcolor(cv, trans_color, 0);
        libaroma_textline_draw(
          cv,
          line_txt,
          0 - line_txt->minx,
          0 - line_txt->y, 1, fore_color);
        cv->alpha = (bytep) calloc(cv->s,1);
        for (yy = 0; yy < cv->h; yy++) {
          int row = cv->l * yy;
          for (xx = 0; xx < cv->w; xx++) {
            int pos = row + xx;
            word c = cv->data[pos];
            if (trans_color == c) {
              cv->alpha[pos] = 0;
            }
            else {
              cv->alpha[pos] = shadow_opacity;
            }
          }
        }
        LIBAROMA_CANVASP gb = libaroma_blur_ex(cv, radius, 1, shadow_color);
        if (gb) {
          libaroma_draw(
            dest,
            gb,
            (dx - radius) + line_txt->minx,
            (dy) - radius,
            1);
          libaroma_canvas_free(gb);
        }
        libaroma_canvas_free(cv);
      }
    }
    _libaroma_pubtext_lock(0);
    return line_txt->lineheight;
  }
  return 0;
} /* End of libaroma_text_draw_line_ex */

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
) {
  if (!dest) {
    dest = libaroma_fb()->canvas;
  }
  if (maxh == 0) {
    maxh = dest->h;
  }
  if (text) {
    _LIBAROMA_TEXTP txt = (_LIBAROMA_TEXTP) text;
    int i;
    int curr_y = 0;
    for (i = 0; i < txt->n; i++) {
      _LIBAROMA_TEXTLINEP line = txt->lines[i];
      if ((curr_y - sy > dest->h) || (curr_y - sy > maxh)) {
        break;
      }
      if (line->span) {
        if (curr_y + line->lineheight >= sy) {
          /* ready draw */
          libaroma_text_draw_line_ex(
            dest, text, dx - sx, dy - sy + curr_y, i,
            isshadow, radius, shadow_color,
            shadow_opacity
          );
        }
      }
      curr_y += line->lineheight;
    }
    return 1;
  }
  return 0;
} /* End of libaroma_text_draw_layer */

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
) {
  if (isshadow>=10) {
    return libaroma_text_draw_layer(
      dest,
      text,
      dx,
      dy,
      sx,
      sy,
      maxh,
      isshadow,0,shadow_color,0);
  }
  else if (isshadow) {
    libaroma_text_draw_layer(
      dest,
      text,
      dx + shadow_x,
      dy + shadow_y,
      sx,
      sy,
      maxh,
      isshadow,
      radius,
      shadow_color,
      shadow_opacity);
    return libaroma_text_draw_layer(
      dest,
      text,
      dx,
      dy,
      sx,
      sy,
      maxh,
      0,0,0,0);
  }
  return libaroma_text_draw_layer(
      dest,
      text,
      dx,
      dy,
      sx,
      sy,
      maxh,
      0,0,0,0);
} /* End of libaroma_text_draw_ex */

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
) {
  LIBAROMA_TEXT txt = libaroma_text(
    text,
    color,
    width,
    txtflags,
    lh
  );
  if (!txt){
    return 0;
  }
  if (!libaroma_text_draw_ex(
    dest,
    txt,
    x,
    y,
    0,
    0,
    0,
    isshadow,
    radius,
    shadow_color,
    shadow_opacity,
    shadow_x,
    shadow_y
  )){
    libaroma_text_free(txt);
    return 0;
  }
  int txth=libaroma_text_height(txt);
  libaroma_text_free(txt);
  return txth;
} /* End of libaroma_draw_text_ex */



#endif /* __libaroma_text_public_c__ */
