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
 * Filename    : jpeg.h
 * Description : jpeg reader
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_jpeg_h__
#define __libaroma_jpeg_h__
#ifndef LIBAROMA_CONFIG_NOJPEG

/*
 * Function    : libaroma_jpeg_ex
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: read jpeg - extended
 */
LIBAROMA_CANVASP libaroma_jpeg_ex(
    LIBAROMA_STREAMP stream,
    byte freeStream,
    byte hicolor);

/* libaroma_jpeg_ex aliases */
#define libaroma_jpeg(stream, freeStream) \
  libaroma_jpeg_ex(stream, freeStream, 0)
#define libaroma_jpeg_uri_ex(uri,hicolor) \
  libaroma_jpeg_ex(libaroma_stream(uri), 1, hicolor)
#define libaroma_jpeg_uri(uri) \
  libaroma_jpeg_ex(libaroma_stream(uri), 1, 0)
#define libaroma_jpeg_zip(path, zpath, hicolor) \
  libaroma_jpeg_ex(libaroma_stream_zip(path,zpath),1,hicolor)
#define libaroma_jpeg_mzip(zip, zpath, hicolor) \
  libaroma_jpeg_ex(libaroma_stream_mzip(zip,zpath),1,hicolor)
#define libaroma_jpeg_file(filepath, hicolor) \
  libaroma_jpeg_ex(libaroma_stream_file(filepath),1,hicolor)

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
    );

#endif /* LIBAROMA_CONFIG_NOJPEG */
#endif /* __libaroma_jpeg_h__ */
