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
 * Filename    : png.h
 * Description : png reader
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_png_h__
#define __libaroma_png_h__

/*
 * Structure   : _LIBAROMA_PNG9_PAD
 * Typedef     : LIBAROMA_PNG9_PAD, * LIBAROMA_PNG9_PADP
 * Descriptions: png 9p padding structure
 */
typedef struct _LIBAROMA_PNG9_PAD LIBAROMA_PNG9_PAD;
typedef struct _LIBAROMA_PNG9_PAD * LIBAROMA_PNG9_PADP;
struct _LIBAROMA_PNG9_PAD{
  int x;
  int y;
  int w;
  int h;
};

/*
 * Structure   : _LIBAROMA_PNG9
 * Typedef     : LIBAROMA_PNG9, * LIBAROMA_PNG9P
 * Descriptions: png 9p structure
 */
typedef struct _LIBAROMA_PNG9 LIBAROMA_PNG9;
typedef struct _LIBAROMA_PNG9 * LIBAROMA_PNG9P;
struct _LIBAROMA_PNG9{
  int x;
  int y;
  int w;
  int h;
  LIBAROMA_PNG9_PAD pad;
};

/*
 * Function    : libaroma_png_ex
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: read png - extended
 */
LIBAROMA_CANVASP libaroma_png_ex(
    LIBAROMA_STREAMP stream, 
    byte freeStream, 
    byte hicolor);

/*
 * Function    : libaroma_png9p
 * Return Value: byte
 * Descriptions: read png 9p marker
 */
byte libaroma_png9p(
    LIBAROMA_CANVASP p,
    LIBAROMA_PNG9P v,
    byte with_padding);

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
    LIBAROMA_PNG9_PADP padding);

/*
 * Function    : libaroma_png_save
 * Return Value: byte
 * Descriptions: save canvas into png file
 */
byte libaroma_png_save(
    LIBAROMA_CANVASP sc,
    char * filename);

/* libaroma_png_ex aliases */
#define libaroma_png(stream, freeStream) \
  libaroma_png_ex(stream, freeStream, 0)
#define libaroma_png_uri_ex(uri,hicolor) \
  libaroma_png_ex(libaroma_stream(uri), 1, hicolor)
#define libaroma_png_uri(uri) \
  libaroma_png_ex(libaroma_stream(uri), 1, 0)
#define libaroma_png_zip(path, zpath, hicolor) \
  libaroma_png_ex(libaroma_stream_zip(path,zpath),1,hicolor)
#define libaroma_png_mzip(zip, zpath, hicolor) \
  libaroma_png_ex(libaroma_stream_mzip(zip,zpath),1,hicolor)
#define libaroma_png_file(filepath, hicolor) \
  libaroma_png_ex(libaroma_stream_file(filepath),1,hicolor)

#endif /* __libaroma_png_h__ */
