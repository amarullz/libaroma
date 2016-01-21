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
 * Filename    : jpeg.c
 * Description : jpeg
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_jpeg_c__
#define __libaroma_jpeg_c__
#include <aroma_internal.h>
#include <jinclude.h>         /* JPEG */
#include <jpeglib.h>
#include <jerror.h>
#include <setjmp.h>

#ifndef LIBAROMA_CONFIG_NOJPEG

/*
 * Structure   : __LIBAROMA_JPEG_MEM_MGR
 * Typedef     : _LIBAROMA_JPEG_MEM_MGR, * _LIBAROMA_JPEG_MEM_MGRP
 * Descriptions: jpeg memory manager
 */
typedef struct __LIBAROMA_JPEG_MEM_MGR _LIBAROMA_JPEG_MEM_MGR;
typedef struct __LIBAROMA_JPEG_MEM_MGR * _LIBAROMA_JPEG_MEM_MGRP;
struct __LIBAROMA_JPEG_MEM_MGR{
  struct jpeg_source_mgr pub;
  JOCTET eoi_buffer[2];
};

/*
 * Structure   : __LIBAROMA_JPEG_ERROR_MGR
 * Typedef     : _LIBAROMA_JPEG_ERROR_MGR, * _LIBAROMA_JPEG_ERROR_MGRP
 * Descriptions: jpeg error manager
 */
typedef struct __LIBAROMA_JPEG_ERROR_MGR _LIBAROMA_JPEG_ERROR_MGR;
typedef struct __LIBAROMA_JPEG_ERROR_MGR * _LIBAROMA_JPEG_ERROR_MGRP;
struct __LIBAROMA_JPEG_ERROR_MGR{
  struct jpeg_error_mgr pub;
  jmp_buf setjmp_buffer;
};

/* void mem source handlers */
void _libaroma_jpeg_mem_source(
    j_decompress_ptr cinfo) {}

/*
 * Function    : _libaroma_jpeg_mem_fill_input_buffer
 * Return Value: boolean
 * Descriptions: internal memory manager fill input buffer
 */
boolean _libaroma_jpeg_mem_fill_input_buffer(
    j_decompress_ptr cinfo) {
  _LIBAROMA_JPEG_MEM_MGRP src = (_LIBAROMA_JPEG_MEM_MGRP) cinfo->src;
  WARNMS(cinfo, JWRN_JPEG_EOF);
  src->eoi_buffer[0] = (JOCTET) 0xFF;
  src->eoi_buffer[1] = (JOCTET) JPEG_EOI;
  src->pub.next_input_byte = src->eoi_buffer;
  src->pub.bytes_in_buffer = 2;
  return TRUE;
} /* End of _libaroma_jpeg_mem_fill_input_buffer */

/*
 * Function    : _libaroma_jpeg_mem_skip_input_data
 * Return Value: void
 * Descriptions: internal memory manager skip input data
 */
void _libaroma_jpeg_mem_skip_input_data(
    j_decompress_ptr cinfo, long num_bytes) {
  _LIBAROMA_JPEG_MEM_MGRP src = (_LIBAROMA_JPEG_MEM_MGRP) cinfo->src;
  if (num_bytes > 0) {
    while (num_bytes > (long) src->pub.bytes_in_buffer) {
      num_bytes -= (long) src->pub.bytes_in_buffer;
      (void) _libaroma_jpeg_mem_fill_input_buffer(cinfo);
    }
    src->pub.next_input_byte += (size_t) num_bytes;
    src->pub.bytes_in_buffer -= (size_t) num_bytes;
  }
} /* End of _libaroma_jpeg_mem_skip_input_data */

/*
 * Function    : _libaroma_jpeg_mem_src
 * Return Value: void
 * Descriptions: internal jpeg memory manager source
 */
void _libaroma_jpeg_mem_src(
    j_decompress_ptr cinfo, const JOCTET * buffer, size_t bufsize) {
  _LIBAROMA_JPEG_MEM_MGRP src;
  if (cinfo->src == NULL) {
    cinfo->src = (struct jpeg_source_mgr *)
                 (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_PERMANENT,
                     SIZEOF(_LIBAROMA_JPEG_MEM_MGR));
  }
  src = (_LIBAROMA_JPEG_MEM_MGRP) cinfo->src;
  src->pub.init_source = _libaroma_jpeg_mem_source;
  src->pub.fill_input_buffer = _libaroma_jpeg_mem_fill_input_buffer;
  src->pub.skip_input_data = _libaroma_jpeg_mem_skip_input_data;
  src->pub.resync_to_restart = jpeg_resync_to_restart; /* use default method */
  src->pub.term_source = _libaroma_jpeg_mem_source;
  src->pub.next_input_byte = buffer;
  src->pub.bytes_in_buffer = bufsize;
} /* End of _libaroma_jpeg_mem_src */

/*
 * Function    : _libaroma_jpeg_error_exit
 * Return Value: void
 * Descriptions: internal jpeg error handler
 */
void _libaroma_jpeg_error_exit(j_common_ptr cinfo) {
  _LIBAROMA_JPEG_ERROR_MGRP myerr =
    (_LIBAROMA_JPEG_ERROR_MGRP) cinfo->err;
  char jpegLastErrorMsg[JMSG_LENGTH_MAX];
  (*(cinfo->err->format_message)) (cinfo, jpegLastErrorMsg);
  ALOGW("aJpeg Error: %s", jpegLastErrorMsg);
  longjmp(myerr->setjmp_buffer, 1);
} /* End of _libaroma_jpeg_error_exit */

/*
 * Function    : libaroma_jpeg_ex
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: read jpeg - extended
 */
LIBAROMA_CANVASP libaroma_jpeg_ex(
    LIBAROMA_STREAMP stream,
    byte freeStream,
    byte hicolor) {

  volatile LIBAROMA_CANVASP cv = NULL;

  if (!stream) {
    return NULL;
  }
  
  /* error handler*/
  struct jpeg_decompress_struct cinfo;
  _LIBAROMA_JPEG_ERROR_MGR jerr;
  cinfo.err = jpeg_std_error(&jerr.pub);
  jerr.pub.error_exit = _libaroma_jpeg_error_exit;
  
  /* exception handler */
  if (setjmp(jerr.setjmp_buffer)) {
    jpeg_destroy_decompress(&cinfo);
    goto exit;
  }
  
  /* init */
  jpeg_create_decompress(&cinfo);
  _libaroma_jpeg_mem_src(&cinfo, (const JOCTET *) stream->data, stream->size);
  jpeg_read_header(&cinfo, TRUE);
  jpeg_start_decompress(&cinfo);
  
  /* set info */
  int pcv_w    = cinfo.output_width;
  int pcv_h    = cinfo.output_height;
  int pcv_c    = cinfo.output_components;
  
  /* verbose */
  ALOGV("load jpeg \"%s\" (%ix%i:%i)", stream->uri, pcv_w, pcv_h, pcv_c);
  
  /* Create Canvas */
  cv = libaroma_canvas_new(
     pcv_w,
     pcv_h,
     0,
     hicolor
   );
  if(!cv) {
    jpeg_finish_decompress(&cinfo);
    jpeg_destroy_decompress(&cinfo);
    goto exit;
  }
  
  /* image loop */
  dword row_sz    = pcv_w * pcv_c;
  bytep row_data  = (bytep) malloc(row_sz);
  int y = 0;
  int x, z;
  if (hicolor) {
    while (cinfo.output_scanline < cinfo.output_height) {
      wordp line = cv->data + (y * cv->l);
      bytep hicl = cv->hicolor + (y * cv->l);
      jpeg_read_scanlines(&cinfo, &row_data, 1);
      for (x = 0, z = row_sz; x < z; x += 3) {
        *line++ = libaroma_rgb(
            row_data[x],
            row_data[x + 1],
            row_data[x + 2]);
        *hicl++ = libaroma_color_left(
            row_data[x],
            row_data[x + 1],
            row_data[x + 2]);
      }
      y++;
    }
  }
  else {
    while (cinfo.output_scanline < cinfo.output_height) {
      wordp line = cv->data + (y * cv->l);
      jpeg_read_scanlines(&cinfo, &row_data, 1);
      libaroma_dither_24to16(y++, pcv_w, line, row_data);
    }
  }
  free(row_data);
  jpeg_finish_decompress(&cinfo);
  jpeg_destroy_decompress(&cinfo);
exit:
  if (freeStream) {
    libaroma_stream_close(stream);
  }
  return cv;
} /* End of libaroma_jpeg_ex */


/*
 * Function    : libaroma_jpeg_draw
 * Return Value: byte
 * Descriptions: read jpeg & directly draw it
 */
byte libaroma_jpeg_draw(
    LIBAROMA_STREAMP stream,
    byte freeStream,
    LIBAROMA_CANVASP cv,
    int dx, int dy, int dw, int dh,
    byte dither
    ) {
  volatile byte retval=0;
  if (!stream) {
    return retval;
  }
  if (!cv){
    goto exit;
  }
  
  /* error handler*/
  struct jpeg_decompress_struct cinfo;
  _LIBAROMA_JPEG_ERROR_MGR jerr;
  cinfo.err = jpeg_std_error(&jerr.pub);
  jerr.pub.error_exit = _libaroma_jpeg_error_exit;
  
  /* exception handler */
  if (setjmp(jerr.setjmp_buffer)) {
    jpeg_destroy_decompress(&cinfo);
    goto exit;
  }
  
  /* init */
  jpeg_create_decompress(&cinfo);
  _libaroma_jpeg_mem_src(&cinfo, (const JOCTET *) stream->data, stream->size);
  jpeg_read_header(&cinfo, TRUE);
  jpeg_start_decompress(&cinfo);
  
  dword vdw=(dword) dw;
  dword vdh=(dword) dh;
  
  if ((cinfo.output_width==vdw)&&(cinfo.output_height==vdh)){
    dword row_sz = cinfo.output_width * cinfo.output_components;
    bytep row_data = (bytep) malloc(row_sz);
    int y=0;
    while(cinfo.output_scanline<vdh){
      wordp line = cv->data + ((y+dy) * cv->l) + dx;
      jpeg_read_scanlines(&cinfo, &row_data, 1);
      if (dither){
        libaroma_dither_24to16(y, dw, line, row_data);
      }
      else{
        libaroma_color_24to16(line, row_data, dw);
      }
      y++;
    }
    free(row_data);
    retval=1;
  }
  else{
    int pcv_w    = cinfo.output_width;
    int pcv_h    = cinfo.output_height;
    int pcv_c    = cinfo.output_components;
    LIBAROMA_CANVASP cvt = libaroma_canvas_new(pcv_w,pcv_h,0,0);
    if(!cvt) {
      jpeg_finish_decompress(&cinfo);
      jpeg_destroy_decompress(&cinfo);
      goto exit;
    }
    
    /* image loop */
    dword row_sz    = pcv_w * pcv_c;
    bytep row_data  = (bytep) malloc(row_sz);
    int y = 0;
    while (cinfo.output_scanline < cinfo.output_height) {
      wordp line = cvt->data + (y * cvt->l);
      jpeg_read_scanlines(&cinfo, &row_data, 1);
      if (dither){
        libaroma_dither_24to16(y, pcv_w, line, row_data);
      }
      else{
        libaroma_color_24to16(line, row_data, pcv_w);
      }
      y++;
    }
    free(row_data);
    libaroma_draw_scale_nearest(
      cv, cvt,
      dx, dy, dw, dh,
      0, 0, cvt->w, cvt->h
    );
    libaroma_canvas_free(cvt);
    retval=1;
  }
  jpeg_finish_decompress(&cinfo);
  jpeg_destroy_decompress(&cinfo);
exit:
  if (freeStream) {
    libaroma_stream_close(stream);
  }
  return retval;
} /* End of libaroma_jpeg_draw */

#endif /* LIBAROMA_CONFIG_NOJPEG */


#endif /* __libaroma_jpeg_c__ */

