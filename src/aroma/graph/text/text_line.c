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
 * Filename    : text_line.c
 * Description : text line processor
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_text_line_c__
#define __libaroma_text_line_c__

/*
 * Function    : libaroma_text_tabwidth
 * Return Value: int
 * Descriptions: calculate tab width
 */
int libaroma_text_tabwidth(
    int x,
    int space_w) {
  int spacesz = space_w * 8;
  return (spacesz - (x % spacesz));
} /* End of libaroma_text_tabwidth */

/*
 * Function    : libaroma_textline_get_floated_image_width
 * Return Value: short
 * Descriptions: calculate floated images width
 */
short libaroma_textline_get_floated_image_width(
    _LIBAROMA_TEXTCHUNKP chunk,
    _LIBAROMA_TEXTLINEP line,
    byte type) {
  int i = 0;
  short x = 0;
  for (i = 0; i < chunk->imagesdatan; i++) {
    if (chunk->imagesdata[i].y > line->y) {
      if ((chunk->imagesdata[i].s == type) || (type == 0)) {
        if (chunk->imagesdata[i].w > x) {
          x = chunk->imagesdata[i].w;
        }
      }
    }
  }
  return x;
} /* End of libaroma_textline_get_floated_image_width */

/*
 * Function    : libaroma_textshaped_span
 * Return Value: _LIBAROMA_TEXTSHAPED_SPANP
 * Descriptions: convert & copy shaped into span data
 */
_LIBAROMA_TEXTSHAPED_SPANP libaroma_textshaped_span(
    _LIBAROMA_TEXTSHAPEDP shaped,
    _LIBAROMA_TEXTCHUNKP chunk){
  _LIBAROMA_TEXTSHAPED_SPANP shaped_span =
    (_LIBAROMA_TEXTSHAPED_SPANP) malloc(sizeof(_LIBAROMA_TEXTSHAPED_SPAN));
  shaped_span->cols = shaped->cols;
  shaped->cols = NULL;
  shaped_span->coln = shaped->coln;
  shaped->coln = 0;
  shaped_span->font = shaped->font;
  shaped_span->color = chunk->curr_state.color;
  shaped_span->flags = chunk->curr_state.flags;
  return shaped_span;
} /* End of libaroma_textshaped_span */

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
    int limit_width) {
  if (indent_size == -1) {
    indent_size = 0;
  }
  line->minx = 0;
  line->maxx = line_width;
  limit_width -= indent_size;
  int width_left = limit_width - line_width;
  byte allow_maxmin = 1;
  
  /* delete last whitespace */
  _LIBAROMA_TEXTSPANP span = line->span;
  _LIBAROMA_TEXTSPANP prev = NULL;
  while (span) {
    if (allow_maxmin) {
      if (span->type == _LIBAROMA_TEXTSPAN_BULL) {
        line->maxx = line->w;
        allow_maxmin = 0;
      }
      else if (
          (span->type == _LIBAROMA_TEXTSPAN_IMAGE) &&
          (span->data != NULL)) {
        _LIBAROMA_TEXTSPAN_IMGP imgspan =
          (_LIBAROMA_TEXTSPAN_IMGP) span->data;
        if ((imgspan->s&3) != 0) {
          line->maxx = line->w;
          allow_maxmin = 0;
        }
      }
    }
    _LIBAROMA_TEXTSPANP now = span;
    span = span->next;
    if (
        (now->type == _LIBAROMA_TEXTSPAN_SPACE) &&
        (now->next == NULL)) {
      if (prev == NULL) {
        line->span = span;
      }
      else {
        prev->next = span;
      }
      free(now);
      now = NULL;
    }
    else {
      prev = now;
    }
  }
  if (indent_size > 0) {
    /* add indent */
    span = line->span;
    while (span) {
      if (
          (span->type == _LIBAROMA_TEXTSPAN_IMAGE) &&
          (span->data != NULL)) {
        _LIBAROMA_TEXTSPAN_IMGP imgspan =
          (_LIBAROMA_TEXTSPAN_IMGP) span->data;
        if ((imgspan->s&3) == 0) {
          span->x += indent_size;
        }
      }
      else {
        span->x += indent_size;
      }
      span = span->next;
    }
  }
  if (align == _LIBAROMA_TEXTCHUNK_ALIGN_RIGHT) {
    if (allow_maxmin) {
      if (indent_size < 1) {
        line->minx = width_left;
      }
      line->maxx = line->w;
    }
    span = line->span;
    while (span) {
      if (
          (span->type == _LIBAROMA_TEXTSPAN_IMAGE) &&
          (span->data != NULL)) {
        _LIBAROMA_TEXTSPAN_IMGP imgspan =
          (_LIBAROMA_TEXTSPAN_IMGP) span->data;
        if ((imgspan->s&3) == 0) {
          span->x += width_left;
        }
      }
      else {
        span->x += width_left;
      }
      span = span->next;
    }
  }
  else if (align == _LIBAROMA_TEXTCHUNK_ALIGN_CENTER) {
    int x = width_left >> 1;
    if (allow_maxmin) {
      if (indent_size < 1) {
        line->minx += x;
      }
      line->maxx = line_width + x;
    }
    span = line->span;
    while (span) {
      if (
          (span->type == _LIBAROMA_TEXTSPAN_IMAGE) &&
          (span->data != NULL)) {
        _LIBAROMA_TEXTSPAN_IMGP imgspan =
          (_LIBAROMA_TEXTSPAN_IMGP) span->data;
        if ((imgspan->s&3) == 0) {
          span->x += x;
        }
      }
      else {
        span->x += x;
      }
      span = span->next;
    }
  }
  else if (align == _LIBAROMA_TEXTCHUNK_ALIGN_JUSTIFY) {
    if (allow_maxmin) {
      line->minx = 0;
      line->maxx = line->w;
    }
    /* left or justify */
    while (width_left > 0) {
      int add_sz = 0;
      int num_spaces = 0;
      span = line->span;
      byte isfirstspan = 1;
      
      while (span) {
        if (
            (span->type == _LIBAROMA_TEXTSPAN_IMAGE) &&
            (span->data != NULL)) {
          /* only non-floating images */
          _LIBAROMA_TEXTSPAN_IMGP imgspan =
            (_LIBAROMA_TEXTSPAN_IMGP) span->data;
          if ((imgspan->s&3) == 0) {
            span->x += add_sz;
            isfirstspan = 0;
          }
        }
        else {
          span->x += add_sz;
          if (span->type != _LIBAROMA_TEXTSPAN_SPACE) {
            isfirstspan = 0;
          }
        }
        if (
            (span->type == _LIBAROMA_TEXTSPAN_SPACE) &&
            (width_left > 0) && (!isfirstspan)) {
          num_spaces++;
          add_sz++;
          width_left--;
        }
        span = span->next;
      }
      if (num_spaces == 0) {
        /* it's not right */
        break;
      }
    }
  }
  /* set line-height (calculate with line-spacing) */
  if (line->lineheight < line->h) {
    line->lineheight =
      (line->h * chunk->curr_state.linespacing) / 100;
  }
  /* delete all whitespace span */
  span = line->span;
  prev = NULL;
  while (span) {
    _LIBAROMA_TEXTSPANP now = span;
    span = span->next;
    if (now->type == _LIBAROMA_TEXTSPAN_SPACE) {
      if (prev == NULL) {
        line->span = span;
      }
      else {
        prev->next = span;
      }
      free(now);
      now = NULL;
    }
    else {
      prev = now;
    }
  }
  /* update y position */
  chunk->last_line_y += line->lineheight;
  return line;
} /* End of libaroma_textline_align */

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
) {
  /* allocating span */
  _LIBAROMA_TEXTSPANP span =
    (_LIBAROMA_TEXTSPANP) malloc(sizeof(_LIBAROMA_TEXTSPAN));
  span->type = type;
  span->data = data;
  /* rtl check */
  if ((rtl) && ((*rtl_bindex) == NULL)) {
    *rtl_findex = *last;
    *rtl_bindex = span;
  }
  else if ((!rtl) && ((*rtl_bindex) != NULL)) {
    *rtl_findex = NULL;
    *rtl_bindex = NULL;
  }
  if (((*rtl_bindex) == NULL) || (*rtl_findex == *last)) {
    /* push */
    span->x = x;
    span->next = NULL;
    if (line->span == NULL) {
      line->span = span;
      *last = span;
    }
    else {
      (*last)->next = span;
      *last = span;
    }
  }
  else {
    /* reorder rtl - unshift */
    if (*rtl_findex) {
      (*rtl_findex)->next = span;
    }
    else {
      line->span = span;
    }
    span->x = (*rtl_bindex)->x;
    span->next = *rtl_bindex;
    *rtl_bindex = span;
    _LIBAROMA_TEXTSPANP next = span->next;
    while (next) {
      next->x += span_w;
      next = next->next;
    }
  }
} /* End of libaroma_textline_add_span */

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
) {
  if ((imgspan->s&3) != 0) {
    /* allocating span */
    _LIBAROMA_TEXTSPANP span =
      (_LIBAROMA_TEXTSPANP) malloc(sizeof(_LIBAROMA_TEXTSPAN));
    span->type = _LIBAROMA_TEXTSPAN_IMAGE;
    span->data = (voidp) imgspan;
    
    /* insert span */
    if (line->span == NULL) {
      line->span  = span;
      *last       = span;
      span->next  = NULL;
    }
    else {
      _LIBAROMA_TEXTSPANP first = line->span;
      line->span  = span;
      span->next  = first;
    }
    int pending_w = 0;
    
    /* float left/right */
    if ((imgspan->s&3) == 1) {
      span->x = libaroma_textline_get_floated_image_width(chunk, line, 1);
      *x += imgspan->w;
      _LIBAROMA_TEXTSPANP next = line->span;
      while (next) {
        if ((next->type == _LIBAROMA_TEXTSPAN_IMAGE) && (next->data != NULL)) {
          /* only non-floating images */
          _LIBAROMA_TEXTSPAN_IMGP local_imgspan =
            (_LIBAROMA_TEXTSPAN_IMGP) next->data;
          if ((local_imgspan->s&3) == 0) {
            next->x += local_imgspan->w;
          }
        }
        else {
          next->x += imgspan->w;
        }
        next = next->next;
      }
      pending_w = span->x + imgspan->w;
    }
    else {
      int pad_right =
        libaroma_textline_get_floated_image_width(chunk, line, 2);
      *limit_width -= imgspan->w;
      span->x = *limit_width;
      pending_w = pad_right + imgspan->w;
    }
    /* it's floating image */
    if (chunk->imagesdata == NULL) {
      chunk->imagesdata =
        (voidp) malloc(sizeof(_LIBAROMA_TEXTPENDING_IMG));
    }
    else {
      chunk->imagesdata =
        (voidp) realloc(chunk->imagesdata,
          sizeof(_LIBAROMA_TEXTPENDING_IMG) * (chunk->imagesdatan + 1));
    }
    int iid = chunk->imagesdatan++;
    chunk->imagesdata[iid].w = pending_w;
    chunk->imagesdata[iid].s = imgspan->s;
    chunk->imagesdata[iid].y = imgspan->h + line->y;
  }
  else {
    if (line->lineheight < imgspan->h) {
      line->lineheight = imgspan->h;
    }
    libaroma_textline_add_span(
      line,
      last,
      rtl_findex,
      rtl_bindex,
      rtl,
      _LIBAROMA_TEXTSPAN_IMAGE,
      *x,
      imgspan->w,
      (voidp) imgspan
    );
    *x += imgspan->w;
  }
} /* End of libaroma_textline_add_span_img */

/*
 * Function    : libaroma_textline
 * Return Value: _LIBAROMA_TEXTLINEP
 * Descriptions: get text line
 */
_LIBAROMA_TEXTLINEP libaroma_textline(
    _LIBAROMA_TEXTCHUNKP chunk) {
  /* init line container */
  _LIBAROMA_TEXTLINEP line =
    (_LIBAROMA_TEXTLINEP) malloc(sizeof(_LIBAROMA_TEXTLINE));
  line->span = NULL;
  line->y = chunk->last_line_y;
  line->h = 0;
  line->w = 0;
  line->minx = 0;
  line->maxx = 0;
  line->lineheight = 0;
  short x = (short) libaroma_textline_get_floated_image_width(chunk, line, 1);
  byte align = 0xff;
  byte rtl = 0;
  byte before_span = 0;
  short before_span_w = 0;
  line->w = chunk->max_width;
  line->maxx = chunk->max_width;
  int limit_width =
    chunk->max_width -
    libaroma_textline_get_floated_image_width(chunk, line, 2);
  int indent_size = -1;
  
  /* span temporaries */
  _LIBAROMA_TEXTSPANP last = NULL;
  _LIBAROMA_TEXTSPANP rtl_findex = NULL;
  _LIBAROMA_TEXTSPANP rtl_bindex = NULL;
  
  /* pending data */
  if (chunk->pending_data != NULL) {
    if (chunk->pending_data->type == _LIBAROMA_TEXTSPAN_HR) {
      /* return hr now */
      align = chunk->curr_state.flags &
        _LIBAROMA_TEXTCHUNK_ALIGN_BITWISE;
      indent_size = (int) chunk->pending_data->param;
      limit_width -= indent_size;
      /* set line height */
      line->h = libaroma_font_size_px(
        _LIBAROMA_TEXTCHUNK_GETFONTSIZE(chunk->curr_state.font));
      /* cleanup pending data */
      free(chunk->pending_data);
      chunk->pending_data = NULL;
      libaroma_textline_add_span(
        line,
        &last,
        &rtl_findex,
        &rtl_bindex,
        rtl,
        _LIBAROMA_TEXTSPAN_HR,
        x,
        limit_width,
        (voidp) MAKEDWORD(chunk->curr_state.color, (short) limit_width - x)
      );
      return libaroma_textline_align(
        line, chunk, align, x, indent_size, limit_width);
    }
    else if (chunk->pending_data->type == _LIBAROMA_TEXTSPAN_IMAGE) {
      _LIBAROMA_TEXTSPAN_IMGP imgspan =
        (_LIBAROMA_TEXTSPAN_IMGP) chunk->pending_data->param;
      line->h = libaroma_font_size_px(
        _LIBAROMA_TEXTCHUNK_GETFONTSIZE(chunk->curr_state.font));
      /* is end of line ? */
      if (imgspan->w + x > limit_width) {
        return libaroma_textline_align(
          line, chunk, align, x, indent_size, limit_width);
      }
      imgspan->y = line->y;
      libaroma_textline_add_span_img(
        chunk,
        line,
        &last,
        &rtl_findex,
        &rtl_bindex,
        rtl,
        &x,
        imgspan,
        &limit_width
      );
    }
    free(chunk->pending_data);
    chunk->pending_data = NULL;
  }
  while (chunk->state & _LIBAROMA_TEXTCHUNK_STATE_OK) {
    /* fetch group */
    _LIBAROMA_TEXTSHAPED_GROUPP group = libaroma_text_group(chunk);
    /* get alignment */
    if (align == 0xff) {
      align = chunk->curr_state.flags & _LIBAROMA_TEXTCHUNK_ALIGN_BITWISE;
    }
    /* check font size */
    byte font_size =
      _LIBAROMA_TEXTCHUNK_GETFONTSIZE(chunk->curr_state.font);
    short font_size_px = libaroma_font_size_px(font_size);
    short space_w = font_size_px / 3;
    /* set indentation */
    if (indent_size == -1) {
      int size_perindent = (font_size_px * 3) >> 2;
      byte indent_val =
        _LIBAROMA_TEXTCHUNK_LINE_GETINDENT(chunk->curr_state.lflags);
      indent_size = indent_val * size_perindent;
      if (indent_size > (limit_width >> 1)) {
        indent_size = (limit_width >> 1);
      }
      limit_width = limit_width - indent_size;
      if (indent_val > 0) {
        if (chunk->state & _LIBAROMA_TEXTCHUNK_STATE_BULLET) {
          chunk->state &= ~ _LIBAROMA_TEXTCHUNK_STATE_BULLET;
          /* init bullet */
          _LIBAROMA_TEXTSPAN_BULLETP bullet = (_LIBAROMA_TEXTSPAN_BULLETP)
            malloc(sizeof(_LIBAROMA_TEXTSPAN_BULLET));
          bullet->style = (indent_val - 1) % 5;
          bullet->x = (short) x + (indent_size - size_perindent);
          bullet->w = (short) size_perindent >> 1;
          bullet->color = chunk->curr_state.color;
          libaroma_textline_add_span(
            line,
            &last,
            &rtl_findex,
            &rtl_bindex,
            rtl,
            _LIBAROMA_TEXTSPAN_BULL,
            0,
            0,
            (voidp) bullet
          );
        }
      }
    }
    /* check highest height */
    if (line->h < font_size_px) {
      line->h = font_size_px;
    }
    /* shaped group is available */
    if (group) {
      int add_w = 0;
      int add_t = 0;
      if ((line->span == NULL) && (group->w + x > limit_width)) {
        /* split the group */
        chunk->next_group =
          libaroma_text_group_split(&group, limit_width - x);
        _LIBAROMA_TEXTSHAPEDP shaped = group->shaped;
        while (shaped) {
          rtl = shaped->rtl;
          libaroma_textline_add_span(
            line,
            &last,
            &rtl_findex,
            &rtl_bindex,
            rtl,
            _LIBAROMA_TEXTSPAN_SHAPE,
            x,
            shaped->w,
            (voidp) libaroma_textshaped_span(shaped, chunk)
          );
          shaped = shaped->next;
        }
        _libaroma_text_group_free(group, 1);
        x = line->w;
        return libaroma_textline_align(
          line, chunk, align, x, indent_size, limit_width);
      }
      if (before_span != 0) {
        add_t = before_span;
        add_w = before_span_w;
        before_span = 0;
        before_span_w = 0;
      }
      /* is end of line ? */
      if (group->w + x + add_w > limit_width) {
        /* is should be first group for next line */
        chunk->next_group = group;
        return libaroma_textline_align(
          line, chunk, align, x, indent_size, limit_width);
      }
      /* append previous space */
      if (add_t) {
        libaroma_textline_add_span(
          line,
          &last,
          &rtl_findex,
          &rtl_bindex,
          rtl,
          ((add_t == 1)?_LIBAROMA_TEXTSPAN_SPACE:_LIBAROMA_TEXTSPAN_TAB),
          x,
          add_w,
          NULL
        );
        x += add_w;
      }
      /* insert into shaped items into span */
      _LIBAROMA_TEXTSHAPEDP shaped = group->shaped;
      while (shaped) {
        rtl = shaped->rtl;
        libaroma_textline_add_span(
          line,
          &last,
          &rtl_findex,
          &rtl_bindex,
          rtl,
          _LIBAROMA_TEXTSPAN_SHAPE,
          x,
          shaped->w,
          (voidp) libaroma_textshaped_span(shaped, chunk)
        );
        shaped = shaped->next;
      }
      x += group->w;
      /* set sizes */
      if (line->h < group->h) {
        line->h = group->h;
      }
      /* no unused group */
      chunk->next_group = NULL;
      _libaroma_text_group_free(group, 1);
    }
    /* update rtl from chunk state */
    rtl = chunk->rtl;
    if (chunk->last_res & _LIBAROMA_TEXTCHUNK_RETURN_SPACE) {
      /* next is space */
      if (space_w + x > limit_width) {
        return libaroma_textline_align(
          line, chunk, align, x, indent_size, limit_width);
      }
      before_span_w = space_w;
      before_span   = 1;
    }
    if (chunk->last_res & _LIBAROMA_TEXTCHUNK_RETURN_TAB) {
      int tab_w = space_w;
      if (align == 0) {
        tab_w = libaroma_text_tabwidth(x + indent_size, space_w);
      }
      /* next is tab */
      if (tab_w + x > limit_width) {
        return libaroma_textline_align(
          line, chunk, align, x, indent_size, limit_width);
      }
      before_span_w = tab_w;
      if (align == 0) {
        before_span   = 2;
      }
      else {
        before_span   = 1;
      }
    }
    /* check line end */
    if (chunk->last_res & _LIBAROMA_TEXTCHUNK_RETURN_NEWLINE) {
      /* direct return the line */
      if (align == _LIBAROMA_TEXTCHUNK_ALIGN_JUSTIFY) {
        align = _LIBAROMA_TEXTCHUNK_ALIGN_LEFT;
      }
      return libaroma_textline_align(
        line, chunk, align, x, indent_size, limit_width);
    }
    /* check chunk result */
    if (chunk->last_res & _LIBAROMA_TEXTCHUNK_RETURN_TAG) {
      /* next is tag (img/hr) - check it first */
      byte curr_lflags =
        _LIBAROMA_TEXTCHUNK_LINE_GETFLAGS(chunk->curr_state.lflags);
      if (curr_lflags & _LIBAROMA_TEXTCHUNK_LINE_IMAGE) {
        /* it was image tag */
        int  param_n    = 0;
        /* parse image data */
        char * param[4] = {chunk->curr_state.img_data, NULL, NULL, NULL};
        char * prev     = param[0];
        char * next;
        do {
          next  = strpbrk(prev, ";");
          if (next) {
            *next = 0;
          }
          param[param_n++] = prev;
          prev = next + 1;
        }
        while ((next) && (param_n < 4));
        int i;
        char * imguri = param[0];
        int  size[2] = { 0, 0 };
        byte style  = 0;
        int  sizen  = 0;
        for (i = 1; i < param_n; i++) {
          if (strcmp(param[i], "left") == 0) {
            style = (style&0xf8)|1;
          }
          else if (strcmp(param[i], "right") == 0) {
            style = (style&0xf8)|2;
          }
          else if (strcmp(param[i], "center") == 0) {
            style |= 4;
          }
          else if (strcmp(param[i], "auto") == 0) {
            if (sizen < 2) {
              size[sizen++] = 0;
            }
          }
          else if (sizen < 2) {
            /* check size */
            int p = strlen (param[i]);
            int w = strtoul(param[i], NULL, 0);
            if (p > 3) {
              /* is dp */
              if ((param[i][p - 2] == 'd') && (param[i][p - 1] == 'p')) {
                w = libaroma_dp(w);
              }
            }
            size[sizen++] = w;
          }
        }
        /* if the image is valid */
        if (strcmp(imguri, "") != 0) {
          LIBAROMA_CANVASP imgCanvas = libaroma_image_uri_ex(imguri, 1);
          if (imgCanvas) {
            if ((size[0] == 0) && (size[1] == 0)) {
              size[0] = imgCanvas->w;
              size[1] = imgCanvas->h;
            }
            else if (size[0] == 0) {
              float scale = ((float) size[1]) / ((float) imgCanvas->h);
              size[0] = (int) (imgCanvas->w * scale);
            }
            else if (size[1] == 0) {
              float scale = ((float) size[0]) / ((float) imgCanvas->w);
              size[1] = (int) (imgCanvas->h * scale);
            }
            _LIBAROMA_TEXTSPAN_IMGP imgspan =
              (_LIBAROMA_TEXTSPAN_IMGP) malloc(sizeof(_LIBAROMA_TEXTSPAN_IMG));
            imgspan->w      = size[0];
            imgspan->h      = size[1];
            imgspan->canvas = imgCanvas;
            imgspan->s      = style;
            imgspan->y      = line->y;
            /* width is no more than limit-width */
            if (imgspan->w > limit_width) {
              float scale = ((float) limit_width) / ((float) imgspan->w);
              imgspan->h  = (int) (imgCanvas->h * scale);
              imgspan->w  = limit_width;
            }
            imgspan->w += libaroma_dp(2);
            /* is end of line ? */
            int add_w = 0;
            int add_t = 0;
            if (before_span != 0) {
              add_t = before_span;
              add_w = before_span_w;
              before_span = 0;
              before_span_w = 0;
            }
            /* is end of line ? */
            if (imgspan->w + x + add_w > limit_width) {
              /* set pending data */
              chunk->pending_data =
                (_LIBAROMA_TEXTPENDINGP) malloc(sizeof(_LIBAROMA_TEXTPENDING));
              chunk->pending_data->type = _LIBAROMA_TEXTSPAN_IMAGE;
              chunk->pending_data->param = (voidp) imgspan;
              return libaroma_textline_align(
                line, chunk, align, x, indent_size, limit_width);
            }
            /* append previous space */
            if (add_t) {
              libaroma_textline_add_span(
                line,
                &last,
                &rtl_findex,
                &rtl_bindex,
                rtl,
                ((add_t==1)?_LIBAROMA_TEXTSPAN_SPACE:_LIBAROMA_TEXTSPAN_TAB),
                x,
                add_w,
                NULL
              );
              x += add_w;
            }
            libaroma_textline_add_span_img(
              chunk,
              line,
              &last,
              &rtl_findex,
              &rtl_bindex,
              rtl,
              &x,
              imgspan,
              &limit_width
            );
          }
        }
      }
      else if (curr_lflags & _LIBAROMA_TEXTCHUNK_LINE_HORIZLINE) {
        if (align == _LIBAROMA_TEXTCHUNK_ALIGN_JUSTIFY) {
          align = _LIBAROMA_TEXTCHUNK_ALIGN_LEFT;
        }
        chunk->pending_data =
          (_LIBAROMA_TEXTPENDINGP) malloc(sizeof(_LIBAROMA_TEXTPENDING));
        chunk->pending_data->type = _LIBAROMA_TEXTSPAN_HR;
        chunk->pending_data->param = (voidp) indent_size;
        /* new line first */
        return libaroma_textline_align(
          line, chunk, align, x, indent_size, limit_width);
      }
      /* free image data - if any */
      if (chunk->curr_state.img_data != NULL) {
        free(chunk->curr_state.img_data);
        chunk->curr_state.img_data = NULL;
      }
    }
  }
  return libaroma_textline_align(
    line, chunk, align, x, indent_size, limit_width);
} /* End of libaroma_textline */

/*
 * Function    : libaroma_textline_free
 * Return Value: byte
 * Descriptions: free textline
 */
byte libaroma_textline_free(
    _LIBAROMA_TEXTLINEP line) {
  if (line == NULL) {
    return 0;
  }
  _LIBAROMA_TEXTSPANP span = line->span;
  while (span) {
    if (span->data != NULL) {
      /* free shape span */
      if (span->type == _LIBAROMA_TEXTSPAN_SHAPE) {
        _LIBAROMA_TEXTSHAPED_SPANP shaped_span = span->data;
        if (shaped_span->cols != NULL) {
          free(shaped_span->cols);
        }
        /* free span data */
        free(span->data);
      }
      else if (span->type == _LIBAROMA_TEXTSPAN_BULL) {
        free(span->data);
      }
      else if (span->type == _LIBAROMA_TEXTSPAN_IMAGE) {
        /* free image data */
        _LIBAROMA_TEXTSPAN_IMGP imgspan =
          (_LIBAROMA_TEXTSPAN_IMGP) span->data;
        libaroma_canvas_free(imgspan->canvas);
        free(span->data);
      }
    }
    _LIBAROMA_TEXTSPANP prev = span;
    span = span->next;
    free(prev);
  }
  free(line);
  return 1;
} /* End of libaroma_textline_free */

#endif /* __libaroma_text_line_c__ */
