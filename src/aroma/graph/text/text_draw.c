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
 * Filename    : text_draw.c
 * Description : text drawing
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_text_draw_c__
#define __libaroma_text_draw_c__

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
    byte fixed_color, word color_force) {
  if (!canvas){
    canvas=libaroma_fb()->canvas;
  }
  int j;
  int span_x2 = 0;
  int span_x1 = -1;
  byte is_underline = (
    (span_shaped->flags & _LIBAROMA_TEXTCHUNK_UNDERLINE) ||
    (span_shaped->flags & _LIBAROMA_TEXTCHUNK_STRIKEOUT)
  )?1:0;
  
  for (j = 0; j < span_shaped->coln; j++) {
    LIBAROMA_GLYPH glyph = libaroma_font_glyph(
      span_shaped->cols[j].id,
      _LIBAROMA_TEXTCHUNK_GETFONTID(span_shaped->font),
      _LIBAROMA_TEXTCHUNK_GETFONTSIZE(span_shaped->font)
    );
    int draw_x = (x + span_shaped->cols[j].x);
    int draw_y = y + span_shaped->cols[j].y;
    libaroma_font_glyph_draw(
      canvas,
      glyph,
      draw_x,
      draw_y,
      fixed_color?color_force:span_shaped->color,
      span_shaped->flags,
      0xff
    );
    /* span underline calculation */
    if (is_underline) {
      if (span_x1 == -1) {
        span_x1 = draw_x;
      }
      span_x2 = draw_x + span_shaped->cols[j].w;
    }
  }
  /* draw span underline */
  if (is_underline) {
    /* check previous span */
    byte last_flags   = (prev_res_span >> 24);
    int span_x1_underline = span_x1;
    int span_x1_strikeout = span_x1;
    /* connect with previous span */
    if (last_flags & _LIBAROMA_TEXTCHUNK_UNDERLINE) {
      span_x1_underline = (prev_res_span & 0xffffff);
    }
    if (last_flags & _LIBAROMA_TEXTCHUNK_STRIKEOUT) {
      span_x1_strikeout = (prev_res_span & 0xffffff);
    }
    /* calculating size */
    int half_size = libaroma_font_size_px(
      _LIBAROMA_TEXTCHUNK_GETFONTSIZE(span_shaped->font)) >> 1;
    int uline_height  = ceil(half_size / 12.0);
    if ((span_shaped->flags & _LIBAROMA_TEXTCHUNK_STRIKEOUT) &&
        (span_x1_strikeout > -1)) {
      /* draw strikeout */
      libaroma_draw_rect(
        canvas,
        span_x1_strikeout,
        (y + (uline_height * 2)) - half_size,
        span_x2 - span_x1_strikeout,
        uline_height,
        fixed_color?color_force:span_shaped->color,
        0xff);
    }
    if ((span_shaped->flags & _LIBAROMA_TEXTCHUNK_UNDERLINE) &&
        (span_x1_underline > -1)) {
      /* draw underline */
      libaroma_draw_rect(
        canvas,
        span_x1_underline,
        y + uline_height,
        span_x2 - span_x1_underline,
        uline_height,
        fixed_color?color_force:span_shaped->color,
        0xff);
    }
  }
  /* return flag and last x position */
  return (span_shaped->flags << 24) | (span_x2 & 0xffffff);
} /* End of libaroma_text_draw_span */

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
    word color) {
  if (!canvas){
    canvas=libaroma_fb()->canvas;
  }
  short mid = ((sz << 2) / 3) >> 1;
  short midx = mid >> 1;
  switch (style) {
    case 1: {
        /* rectangle */
        libaroma_draw_rect(
          canvas, x + midx, y, sz, sz, color, 0xff
        );
      }
      break;
      
    case 2: {
        /* diamond <> */
        short i = 0;
        short midy = midx >> 1;
        for (i = 0; i < mid; i++) {
          libaroma_draw_rect(
            canvas,
            x + mid - i + midy,
            y + i - midy,
            (i * 2) + 1,
            1,
            color,
            0xff
          );
          
          if (i < mid - 1) {
            libaroma_draw_rect(
              canvas,
              x + mid - i + midy,
              y + (mid * 2) - i - midy - 2,
              (i * 2) + 1,
              1,
              color,
              0xff
            );
          }
        }
      }
      break;
      
    case 3: {
        /* arrow > */
        short i = 0;
        short midy = midx >> 1;
        for (i = 0; i < mid - 1; i++) {
          libaroma_draw_rect(
            canvas,
            x + midx + i,
            y + i - midy,
            mid,
            1,
            color,
            0xff
          );
        }
        for (i = 0; i < mid; i++) {
          libaroma_draw_rect(
            canvas,
            x + midx + (mid - i) - 1,
            y + mid + i - 1 - midy,
            mid,
            1,
            color,
            0xff
          );
        }
      }
      break;
      
    case 4: {
        /* arrow #> */
        mid = (mid << 2) / 3;
        midx = mid >> 1;
        short i = 0;
        short midy = midx >> 1;
        for (i = 0; i < mid - 1; i++) {
          libaroma_draw_rect(
            canvas,
            x + midx,
            y + i - midy,
            i + 1,
            1,
            color,
            0xff
          );
        }
        for (i = 0; i < mid; i++) {
          libaroma_draw_rect(
            canvas,
            x + midx,
            y + mid + i - 1 - midy,
            mid - i,
            1,
            color,
            0xff
          );
        }
      }
      break;
      
    default: {
        /* Disc */
        libaroma_gradient(
          canvas,
          x + midx,
          y,
          sz,
          sz,
          color,
          color,
          sz,
          0x1111
        );
      }
      break;
  }
} /* End of libaroma_text_draw_bullet */

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
    byte fixed_color, word color_force) {
  if (!canvas){
    canvas=libaroma_fb()->canvas;
  }
  _LIBAROMA_TEXTSPANP span = line->span;
  dword prev_res_span = 0;
  int ypos = ((line->lineheight - line->h) >> 1) + line->h;
  
  while (span) {
    switch (span->type) {
      case _LIBAROMA_TEXTSPAN_SHAPE: {
          /* shaped text */
          prev_res_span = libaroma_text_draw_span(
              canvas,
              (_LIBAROMA_TEXTSHAPED_SPANP) span->data,
              span->x + draw_x,
              line->y + ypos + draw_y,
              prev_res_span,
              fixed_color,color_force
            );
        }
        break;
      case _LIBAROMA_TEXTSPAN_BULL: {
          /* bulleted */
          _LIBAROMA_TEXTSPAN_BULLETP bullet =
            (_LIBAROMA_TEXTSPAN_BULLETP) span->data;
          libaroma_text_draw_bullet(
            canvas,
            bullet->style,
            bullet->x + draw_x,
            line->y + ((line->lineheight >> 1) - (bullet->w >> 2)) + draw_y,
            bullet->w,
            fixed_color?color_force:bullet->color
          );
        }
        break;
      case _LIBAROMA_TEXTSPAN_HR: {
          /* horizontal line */
          short hrwidth = (short) HIWORD((dword) span->data);
          word  hrcolor = LOWORD((dword) span->data);
          int linesize  = ceil(line->h / 10.0);
          libaroma_draw_rect(
            canvas,
            span->x + draw_x,
            (line->y + (line->lineheight >> 1) + draw_y),
            hrwidth,
            linesize,
            fixed_color?color_force:hrcolor,
            0xff
          );
        }
        break;
      case _LIBAROMA_TEXTSPAN_IMAGE: {
          /* Image */
          _LIBAROMA_TEXTSPAN_IMGP imgspan = (_LIBAROMA_TEXTSPAN_IMGP) span->data;
          int img_y = imgspan->y + draw_y;
          /* x-position for center, left, right */
          int left_add = 1;
          byte iscenter = imgspan->s&4;
          if ((imgspan->s&3) == 1) {
            left_add = 0;
          }
          else if ((imgspan->s&3) == 2) {
            left_add = 2;
          }
          else {
            /*
            img_y = 
              (draw_y + line->y + (line->lineheight>>1)) - (imgspan->h>>1);
            */
            img_y = imgspan->y + draw_y + line->lineheight - imgspan->h;
          }
          if (iscenter){
          	img_y = (line->y + ypos + draw_y) -
          		((line->h>>1)+(imgspan->h>>1)-((line->lineheight-line->h)>>2));
          }
          libaroma_draw_scale_smooth(
            canvas, imgspan->canvas,
            span->x + draw_x + libaroma_dp(left_add),
            img_y,
            imgspan->w - libaroma_dp(2), imgspan->h,
            0, 0, imgspan->canvas->w, imgspan->canvas->h
          );
          prev_res_span = 0;
        }
        break;
    }
    span = span->next;
  }
} /* End of libaroma_textline_draw */



#endif /* __libaroma_text_draw_c__ */
