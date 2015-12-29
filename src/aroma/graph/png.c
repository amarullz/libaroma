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
 * Filename    : png.c
 * Description : png
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_png_c__
#define __libaroma_png_c__
#include <aroma_internal.h>
#include <png.h>

/*
 * Structure   : __LIBAROMA_PNG_ADAPTER
 * Typedef     : _LIBAROMA_PNG_ADAPTER, * _LIBAROMA_PNG_ADAPTERP
 * Descriptions: png reader adapter
 */
typedef struct __LIBAROMA_PNG_ADAPTER _LIBAROMA_PNG_ADAPTER;
typedef struct __LIBAROMA_PNG_ADAPTER * _LIBAROMA_PNG_ADAPTERP;
struct __LIBAROMA_PNG_ADAPTER{
  bytep data;
  int n;
  int p;
};

/*
 * Function    : _libaroma_png_reader
 * Return Value: void
 * Descriptions: internal png reader callback
 */
void _libaroma_png_reader(
    png_structp pngPtr,
    png_bytep data,
    png_size_t length) {
  png_voidp a   = png_get_io_ptr(pngPtr);
  _LIBAROMA_PNG_ADAPTERP p = (_LIBAROMA_PNG_ADAPTERP) a;
  if ( (p->p + ((int)length)) >= p->n) {
    length = p->n - p->p;
  }
  if (length) {
    memcpy(data, p->data + p->p, length);
    p->p += length;
  }
} /* End of _libaroma_png_reader */

/*
 * Function    : libaroma_png_ex
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: read png - extended
 */
LIBAROMA_CANVASP libaroma_png_ex(
    LIBAROMA_STREAMP stream, 
    byte freeStream, 
    byte hicolor) {
  if (!stream) {
    return NULL;
  }
  /* init adapter */
  _LIBAROMA_PNG_ADAPTERP adapter = (_LIBAROMA_PNG_ADAPTERP)
    malloc(sizeof(_LIBAROMA_PNG_ADAPTER));
  if (!adapter) {
    if (freeStream){
      libaroma_stream_close(stream);
    }
    ALOGW("libaroma_png_ex cannot allocating adapter");
    return NULL;
  }
  adapter->data = stream->data;
  adapter->n    = stream->size;
  adapter->p    = 0;
  
  /* png structures */
  png_structp png_ptr = NULL;
  png_infop info_ptr  = NULL;
  volatile LIBAROMA_CANVASP cv = NULL;
  byte header[8];
  
  /* headers */
  memcpy(header, adapter->data, sizeof(header));
  adapter->p += sizeof(header);
  
  /* compare signature */
  if (png_sig_cmp(header, 0, sizeof(header))) {
    ALOGW("libaroma_png_ex signature error");
    goto exit;
  }
  
  /* read structure */
  png_ptr = png_create_read_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
  
  if (!png_ptr) {
    ALOGW("libaroma_png_ex png_ptr is invalid");
    goto exit;
  }
  
  /* info structure */
  info_ptr = png_create_info_struct(png_ptr);
  
  if (!info_ptr) {
    ALOGW("libaroma_png_ex info_ptr is invalid");
    goto exit;
  }
  
  /* jmp */
  if (setjmp(png_jmpbuf(png_ptr))) {
    ALOGW("libaroma_png_ex jmp error");
    goto exit;
  }
  
  /* callback */
  png_set_read_fn(png_ptr, adapter, _libaroma_png_reader);
  png_set_sig_bytes(png_ptr, sizeof(header));
  png_read_info(png_ptr, info_ptr);
  
  /* check color */
  int bit_depth  = png_get_bit_depth(png_ptr, info_ptr);
  int color_type = png_get_color_type(png_ptr, info_ptr);
  int channels   = png_get_channels(png_ptr, info_ptr);
  
  if ((color_type == PNG_COLOR_TYPE_GRAY)||
      (color_type == PNG_COLOR_TYPE_GRAY_ALPHA)){
    png_set_gray_to_rgb(png_ptr);
    png_read_update_info(png_ptr, info_ptr);
  }
  else if (color_type == PNG_COLOR_TYPE_PALETTE) {
    png_set_palette_to_rgb(png_ptr);
    png_read_update_info(png_ptr, info_ptr);
  }
  else if (!((bit_depth == 8 && (
           (channels == 3 && color_type == PNG_COLOR_TYPE_RGB) ||
           (channels == 4 && color_type == PNG_COLOR_TYPE_RGBA)
         )) ||
        (channels == 1 && color_type == PNG_COLOR_TYPE_PALETTE)
       )) {
    ALOGW("libaroma_png_ex mode not supported (c:%i, t:%i, d:%i)",
          channels, color_type, bit_depth);
    goto exit;
  }
  
  /* init main info */
  int pcv_w    = png_get_image_width(png_ptr, info_ptr);
  int pcv_h    = png_get_image_height(png_ptr, info_ptr);
  int pcv_c    = png_get_channels(png_ptr, info_ptr);
  
  /* verbose */
  ALOGV("load png \"%s\" (%ix%ix%i)",
    stream->uri, pcv_w, pcv_h, pcv_c);

  /* new canvas */
  cv = libaroma_canvas_new(
      pcv_w, pcv_h, (pcv_c==4)?1:0, hicolor);
  
  if (!cv) {
    ALOGW("libaroma_png_ex cannot create canvas");
    goto exit;
  }
  
  /* switch to abgr */
  if (pcv_c == 4) {
    png_set_bgr(png_ptr);
  }
  
  /* read row size*/
  int row_sz = (int) png_get_rowbytes(png_ptr, info_ptr);
  
  /* loop */
  int y, x;
  if (pcv_c == 4) {
    int z;
    png_bytep row_data  = (png_bytep) malloc(row_sz);
    if (hicolor) {
      for (y = 0; y < pcv_h; ++y) {
        int   ypos = (y * cv->l);
        wordp line = cv->data + ypos;
        bytep alph = cv->alpha + ypos;
        bytep hicl = cv->hicolor + ypos;
        png_read_row(png_ptr, row_data, NULL);
        for (x = 0, z = pcv_w * pcv_c; x < z; x += 4) {
          *line++ = libaroma_rgb(
            row_data[x + 2],
            row_data[x + 1],
            row_data[x]);
          *hicl++ = libaroma_color_left(
            row_data[x + 2],
            row_data[x + 1],
            row_data[x]);
          *alph++ = row_data[x + 3];
        }
      }
    }
    else {
      for (y = 0; y < pcv_h; ++y) {
        int   ypos = (y * cv->l);
        wordp line = cv->data + ypos;
        bytep alph = cv->alpha + ypos;
        png_read_row(png_ptr, row_data, NULL);
        libaroma_dither_line(y, pcv_w, line, (dwordp) row_data);
        for (x = 0, z = pcv_w * pcv_c; x < z; x += 4) {
          *alph++ = row_data[x + 3];
        }
      }
    }
    free(row_data);
  }
  else if (pcv_c == 3) {
    int z;
    png_bytep row_data  = (png_bytep) malloc(row_sz);
    if (hicolor) {
      for (y = 0; y < pcv_h; ++y) {
        wordp line = cv->data + (y * cv->l);
        bytep hicl = cv->hicolor + (y * cv->l);
        png_read_row(png_ptr, row_data, NULL);
        for (x = 0, z = pcv_w * pcv_c; x < z; x += 3) {
          *line++ = libaroma_rgb(row_data[x], row_data[x + 1], row_data[x + 2]);
          *hicl++ = libaroma_color_left(
              row_data[x + 2],
              row_data[x + 1],
              row_data[x]);
        }
      }
    }
    else {
      for (y = 0; y < pcv_h; ++y) {
        wordp line = cv->data + (y * cv->l);
        png_read_row(png_ptr, row_data, NULL);
        libaroma_dither_24to16(y, pcv_w, line, row_data);
        /*
        for (x = 0, z = pcv_w * pcv_c; x < z; x += 3) {
          *line++ = libaroma_dither_rgb(
            x, y, row_data[x + 2], row_data[x + 1], row_data[x]);
        }*/
      }
    }
    free(row_data);
  }
exit:
  png_destroy_read_struct(&png_ptr, &info_ptr, NULL);
  if (freeStream) {
    libaroma_stream_close(stream);
  }
  free(adapter);
  return cv;
} /* End of libaroma_png_ex */

/*
 * Function    : libaroma_png9p
 * Return Value: byte
 * Descriptions: read png 9p marker
 */
byte libaroma_png9p(
    LIBAROMA_CANVASP p,
    LIBAROMA_PNG9P v,
    byte with_padding) {
  if (p == NULL) {
    return 0;
  }
  if (p->alpha == NULL) {
    return 0;
  }
  /* cleanup */
  memset(v, 0, sizeof(LIBAROMA_PNG9));
  int i, z;
  bytep alphaData;
  
  /* x & w */
  alphaData = p->alpha;
  for (i = 1, z = p->w - 1; i < z; i++) {
    alphaData++;
    if (*alphaData == 0xff) {
      if (!v->x) {
        v->x = i;
        v->w = 1;
      }
      else {
        v->w++;
      }
    }
    else if (v->x) {
      break;
    }
  }
  
  /* y & h */
  alphaData = p->alpha;
  for (i = 1, z = p->h - 1; i < z; i++) {
    alphaData += p->l;
    if (*alphaData == 0xff) {
      if (!v->y) {
        v->y = i;
        v->h = 1;
      }
      else {
        v->h++;
      }
    }
    else if (v->y) {
      break;
    }
  }
  
  if (with_padding) {
    /* left & right */
    alphaData = p->alpha + p->l * (p->h - 1);
    for (i = 1, z = p->w - 1; i < z; i++) {
      alphaData++;
      if (*alphaData == 0xff) {
        if (!v->pad.x) {
          v->pad.x = i;
        }
      }
      else if (v->pad.x) {
        v->pad.w = p->w - i;
        break;
      }
    }
    
    /* top & bottom */
    alphaData = p->alpha + (p->w - 1);
    for (i = 1, z = p->h - 1; i < z; i++) {
      alphaData += p->l;
      if (*alphaData == 0xff) {
        if (!v->pad.y) {
          v->pad.y = i;
        }
      }
      else if (v->pad.y) {
        v->pad.h = p->h - i;
        break;
      }
    }
    
    /* Substract 1 */
    v->pad.x--;
    v->pad.y--;
    v->pad.w--;
    v->pad.h--;
    v->pad.w-=v->pad.x;
    v->pad.h-=v->pad.y;
  }
  
  return 1;
} /* End of libaroma_png9p */

/*
 * Function    : libaroma_png9p_draw
 * Return Value: byte
 * Descriptions: draw png9p
 */
byte libaroma_png9p_draw(
    LIBAROMA_CANVASP dst,
    LIBAROMA_CANVASP src,
    int dx,
    int dy,
    int dw,
    int dh,
    int source_dp,
    LIBAROMA_PNG9_PADP padding) {
  if (src == NULL) {
    ALOGW("libaroma_png9p_draw src = NULL");
    return 0;
  }
  if (dst == NULL) {
    dst = libaroma_fb()->canvas;
  }
  if ((dh < 3) || (dw < 3)) {
    return 1;
  }
  
  LIBAROMA_PNG9 v;
  if (!libaroma_png9p(src, &v, (padding!=NULL)?1:0)) {
    ALOGW("libaroma_png9p_draw -> libaroma_png9p_draw ERROR");
    return 0;
  }
  
  if (!source_dp) {
    /* If source_dp not supplied */
    source_dp = libaroma_fb()->dpi;
  }
  
  int dp_scale = (libaroma_fb()->dpi * 0x100) / source_dp;
  
  /* fix */
  int maxW  = floor((dw - 2) / 2);
  int maxH  = floor((dh - 2) / 2);
  int RX = v.x + v.w;
  int BY = v.y + v.h;
  int RW = src->w - 1 - RX;
  int BH = src->h - 1 - BY;
  int drawX   = MIN(((v.x - 1) * dp_scale) >> 8, maxW);
  int drawY   = MIN(((v.y - 1) * dp_scale) >> 8, maxW);
  int drawW   = MIN(((v.x + RW) * dp_scale) >> 8, maxW);
  int drawH   = MIN(((v.y + BH) * dp_scale) >> 8, maxH);
  int drawRW  = MIN((RW * dp_scale) >> 8, maxW);
  int drawBH  = MIN((BH * dp_scale) >> 8, maxH);
  
  if (padding != NULL) {
    padding->x  = (v.pad.x * dp_scale) >> 8;
    padding->y  = (v.pad.y * dp_scale) >> 8;
    padding->w  = (v.pad.w * dp_scale) >> 8;
    padding->h  = (v.pad.h * dp_scale) >> 8;
  }
  
  /**
   *
   *    LT--------TOP-------RT
   *    |                    |
   *    L       CENTER       R
   *    |                    |
   *    LB------BOTTOM------LR
   *
   **/
  libaroma_draw_scale_smooth( /* lt */
    dst, src,
    dx,   dy,   drawX,    drawY,
    1,    1,    v.x,      v.y
  );
  libaroma_draw_scale_smooth( /* top */
    dst, src,
    dx + drawX, dy, dw - drawW, drawY,
    v.x, 1, v.w, v.y
  );
  libaroma_draw_scale_smooth( /* rt */
    dst, src,
    dx + drawX + (dw - drawW), dy, drawRW, drawY,
    RX, 1, RW, v.y
  );
  libaroma_draw_scale_smooth( /* left */
    dst, src,
    dx, dy + drawY, drawX, dh - drawH,
    1,  v.y, v.x, v.h
  );
  libaroma_draw_scale_smooth( /* center */
    dst, src,
    dx + drawX, dy + drawY, dw - drawW, dh - drawH,
    v.x,  v.y, v.w, v.h
  );
  libaroma_draw_scale_smooth( /* right */
    dst, src,
    dx + drawX + (dw - drawW), dy + drawY, drawRW, dh - drawH,
    RX,  v.y, RW, v.h
  );
  libaroma_draw_scale_smooth( /* lb */
    dst, src,
    dx, dy + drawY + (dh - drawH), drawX, drawBH,
    1,  BY, v.x, BH
  );
  libaroma_draw_scale_smooth( /* bottom */
    dst, src,
    dx + drawX, dy + drawY + (dh - drawH), dw - drawW, drawBH,
    v.x,  BY, v.w, BH
  );
  libaroma_draw_scale_smooth( /* rb */
    dst, src,
    dx + drawX + (dw - drawW), dy + drawY + (dh - drawH), drawRW, drawBH,
    RX,  BY, RW, BH
  );
  return 1;
} /* End of libaroma_png9p_draw */

/*
 * Function    : libaroma_png_save
 * Return Value: byte
 * Descriptions: save canvas into png file
 */
byte libaroma_png_save(
    LIBAROMA_CANVASP sc,
    char * filename) {
#ifdef LIBAROMA_CONFIG_NOPNGWRITE
  return 0;
#else
  volatile LIBAROMA_CANVASP c = sc;
  if (c == NULL) {
    c = libaroma_fb()->canvas;
  }
  
  volatile int result = 0;
  png_structp png_ptr = NULL;
  volatile png_infop info_ptr = NULL;
  volatile png_bytep row = NULL;
  
  /* new file */
  FILE * fp = fopen(filename, "wb");
  if (!fp) {
    ALOGW("libaroma_png_save fopen \"%s\" error", filename);
    goto finalize;
  }
  
  /* png structure */
  png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
  if (!png_ptr) {
    ALOGW("libaroma_png_save png_ptr is invalid");
    goto finalize;
  }
  
  /* info structure */
  info_ptr = png_create_info_struct(png_ptr);
  if (!info_ptr) {
    ALOGW("libaroma_png_save info_ptr is invalid");
    goto finalize;
  }
  
  /* exception */
  if (setjmp(png_jmpbuf(png_ptr))) {
    ALOGW("libaroma_png_save jmp exception...");
    goto finalize;
  }
  
  /* io */
  png_init_io(png_ptr, fp);
  int px_sz = (c->alpha ? 4 : 3);
  png_set_IHDR(png_ptr, info_ptr, c->w, c->h,
               8, (c->alpha ? PNG_COLOR_TYPE_RGBA : PNG_COLOR_TYPE_RGB),
               PNG_INTERLACE_NONE, PNG_COMPRESSION_TYPE_BASE, PNG_FILTER_TYPE_BASE);

  /* text info */
  png_text title_text;
  title_text.compression = PNG_TEXT_COMPRESSION_NONE;
  title_text.key  = "Title";
  title_text.text = filename;
  png_set_text(png_ptr, info_ptr, &title_text, 1);
  
  title_text.key  = "Author";
  title_text.text = libaroma_info(LIBAROMA_INFO_AUTHOR);
  png_set_text(png_ptr, info_ptr, &title_text, 1);
  
  title_text.key  = "Description";
  title_text.text = "captured from " LIBAROMA_CONFIG_NAME " canvas";
  png_set_text(png_ptr, info_ptr, &title_text, 1);
  
  title_text.key  = "Copyright";
  title_text.text = libaroma_info(LIBAROMA_INFO_COPYRIGHT);
  png_set_text(png_ptr, info_ptr, &title_text, 1);
  
  title_text.key  = "Software";
  title_text.text = libaroma_info(LIBAROMA_INFO_SIGNATURE);
  png_set_text(png_ptr, info_ptr, &title_text, 1);
  
  /* image data */
  png_write_info(png_ptr, info_ptr);
  row = (png_bytep) malloc(px_sz * c->w * sizeof(png_byte));
  int x, y;
  if ((!c->hicolor)&&(!c->alpha)){
    for (y = 0 ; y < c->h ; y++) {
      libaroma_color_copy_rgb24(row,c->data+y*c->l,c->w);
      png_write_row(png_ptr, row);
    }
  }
  else{
    for (y = 0 ; y < c->h ; y++) {
      int slpos=y*c->l;
      for (x = 0 ; x < c->w ; x++) {
        int spos = slpos + x;
        int dpos = x * px_sz;
        word px = c->data[spos];
        if (c->hicolor) {
          byte hi = c->hicolor[spos];
          row[dpos] = libaroma_color_merge_r(px, hi);
          row[dpos + 1] = libaroma_color_merge_g(px, hi);
          row[dpos + 2] = libaroma_color_merge_b(px, hi);
        }
        else {
          row[dpos]    = libaroma_color_hi_r(libaroma_color_r(px));
          row[dpos + 1]  = libaroma_color_hi_g(libaroma_color_g(px));
          row[dpos + 2]  = libaroma_color_hi_b(libaroma_color_b(px));
        }
        if (c->alpha) {
          row[dpos + 3]  = c->alpha[spos];
        }
      }
      png_write_row(png_ptr, row);
    }
  }
  /* end write */
  png_write_end(png_ptr, NULL);
  result = 1;
  ALOGS("libaroma_png_save \"%s\"", filename);
finalize:

  if (fp != NULL) {
    fclose(fp);
    if (!result) {
      libaroma_unlink(filename);
    }
  }
  if (info_ptr != NULL) {
    png_free_data(png_ptr, info_ptr, PNG_FREE_ALL, -1);
  }
  if (png_ptr != NULL) {
    png_destroy_write_struct(&png_ptr, (png_infopp)NULL);
  }
  if (row != NULL) {
    free(row);
  }
  return result;
#endif
} /* End of libaroma_png_save */


#endif /* __libaroma_png_c__ */

