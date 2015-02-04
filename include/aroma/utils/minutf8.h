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
 * Filename    : minutf8.h
 * Description : utf8 utility
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_minutf8_h__
#define __libaroma_minutf8_h__

/*
 * Function    : libaroma_utf8_len
 * Return Value: int
 * Descriptions: get utf8 length
 */
int libaroma_utf8_len(
    const char * s);

/*
 * Function    : libaroma_utf8c
 * Return Value: int
 * Descriptions: next character
 */
int libaroma_utf8c(
    const char * src,
    const char ** ss,
    int * move);

/*
 * Function    : libaroma_utf8_dec_ex
 * Return Value: void
 * Descriptions: decode extended
 */
void libaroma_utf8_dec_ex(
    ucharp d,
    int dl,
    const char * s);

/*
 * Function    : libaroma_utf8_dec
 * Return Value: int *
 * Descriptions: decode
 */
ucharp libaroma_utf8_dec(
    const char * s);

#endif /* __libaroma_minutf8_h__ */
