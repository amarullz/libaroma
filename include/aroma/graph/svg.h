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
 * Filename    : svg.h
 * Description : svg reader
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_svg_h__
#define __libaroma_svg_h__
#ifndef LIBAROMA_CONFIG_NOSVG

LIBAROMA_CANVASP libaroma_svg_ex(
    LIBAROMA_STREAMP stream,
    byte freeStream,
    byte use_px);
    
/* libaroma_svg_ex aliases */
#define libaroma_svg(stream, freeStream) \
  libaroma_svg_ex(stream, freeStream, 0)
#define libaroma_svg_px(stream, freeStream) \
  libaroma_svg_ex(stream, freeStream, 1)
#define libaroma_svg_uri_px(uri) \
  libaroma_svg_ex(libaroma_stream(uri), 1, 1)
#define libaroma_svg_uri(uri) \
  libaroma_svg_ex(libaroma_stream(uri), 1, 0)
#define libaroma_svg_zip(path, zpath, use_px) \
  libaroma_svg_ex(libaroma_stream_zip(path,zpath),1,use_px)
#define libaroma_svg_mzip(zip, zpath, use_px) \
  libaroma_svg_ex(libaroma_stream_mzip(zip,zpath),1,use_px)
#define libaroma_svg_file(filepath) \
  libaroma_svg_ex(libaroma_stream_file(filepath),1,0)
#define libaroma_svg_file_px(filepath) \
  libaroma_svg_ex(libaroma_stream_file(filepath),1,1)
  
#endif /* LIBAROMA_CONFIG_NOSVG */
#endif /* __libaroma_svg_h__ */
