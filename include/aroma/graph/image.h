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
 * Filename    : image.h
 * Description : image loader
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_image_h__
#define __libaroma_image_h__

/*
 * Function    : libaroma_image_ex
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: read image by file signature - extended
 */
LIBAROMA_CANVASP libaroma_image_ex(
    LIBAROMA_STREAMP stream, 
    byte freeStream, 
    byte hicolor);

/* libaroma_image_ex aliases */
#define libaroma_image(stream, freeStream) \
  libaroma_image_ex(stream, freeStream, 0)
#define libaroma_image_uri_ex(uri,hicolor) \
  libaroma_image_ex(libaroma_stream(uri), 1, hicolor)
#define libaroma_image_uri(uri) \
  libaroma_image_ex(libaroma_stream(uri), 1, 0)
#define libaroma_image_zip(path, zpath, hicolor) \
  libaroma_image_ex(libaroma_stream_zip(path,zpath),1,hicolor)
#define libaroma_image_mzip(zip, zpath, hicolor) \
  libaroma_image_ex(libaroma_stream_mzip(zip,zpath),1,hicolor)
#define libaroma_image_file(filepath, hicolor) \
  libaroma_image_ex(libaroma_stream_file(filepath),1,hicolor)

#endif /* __libaroma_image_h__ */
