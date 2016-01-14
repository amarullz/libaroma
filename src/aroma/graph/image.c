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
 * Filename    : image.c
 * Description : image
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_image_c__
#define __libaroma_image_c__
#include <aroma_internal.h>

/*
 * Function    : libaroma_image_ex
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: read image by file signature - extended
 */
LIBAROMA_CANVASP libaroma_image_ex(
    LIBAROMA_STREAMP stream, 
    byte freeStream, 
    byte hicolor){
  if (!stream) {
    return NULL;
  }
  if (stream->size<5){
    goto errorgo;
  }
  bytep d=stream->data;
  
  /* png */
  if (
    (d[0]==0x89)&&
    (d[1]==0x50)&&
    (d[2]==0x4E)&&
    (d[3]==0x47)){
    return libaroma_png_ex(stream,freeStream,hicolor);
  }
#ifndef LIBAROMA_CONFIG_NOJPEG
  /* jpeg */
  if (
    (d[0]==0xFF)&&
    (d[1]==0xD8)&&
    (d[2]==0xFF)){
    return libaroma_jpeg_ex(stream,freeStream,hicolor);
  }
#endif

#ifndef LIBAROMA_CONFIG_NOSVG
  /* svg */
  byte is_svg=0;
  if (libaroma_stristr(stream->uri, ".svg", stream->size)!=NULL){
    is_svg=1;
  }
  else{
    int i;
    for (i=0;((i<stream->size)&&(i<2048));i++){
      switch (d[i]){
        case '<':
          is_svg=1;
          i=10000;
          break;
        case ' ':
        case '\n':
        case '\r':
        case '\t':
          break;
        default:
          i=10000;
      }
    }
  }
  if (is_svg){
    return libaroma_svg_ex(stream,freeStream,0);
  }
#endif

errorgo:
  ALOGW("libaroma_image_new \"%s\" not valid image", stream->uri);
  if (freeStream){
    if (stream){
      libaroma_stream_close(stream);
    }
  }
  return NULL;
} /* End of libaroma_image_new */


#endif /* __libaroma_image_c__ */

