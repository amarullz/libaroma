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
 * Filename    : zip.h
 * Description : zip utility
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_zip_h__
#define __libaroma_zip_h__

/*
 * Typedef     : LIBAROMA_ZIP
 * Descriptions: zip handler
 */
typedef voidp * LIBAROMA_ZIP;

/*
 * Function    : libaroma_zip
 * Return Value: LIBAROMA_ZIP
 * Descriptions: open zip file
 */
LIBAROMA_ZIP libaroma_zip(
    const char * filename);

/*
 * Function    : libaroma_zip_release
 * Return Value: void
 * Descriptions: release zip file
 */
void libaroma_zip_release(
    LIBAROMA_ZIP zip);

/*
 * Function    : libaroma_zip_extract
 * Return Value: byte
 * Descriptions: extract zip entry to file
 */
byte libaroma_zip_extract(
    LIBAROMA_ZIP zip,
    const char * zpath,
    const char * dest);

/*
 * Function    : libaroma_zip_read
 * Return Value: int
 * Descriptions: read zip entry contents
 */
int libaroma_zip_read(
    LIBAROMA_ZIP zip,
    bytep * bufp,
    const char * zpath,
    byte bytesafe);

#endif /* __libaroma_zip_h__ */
