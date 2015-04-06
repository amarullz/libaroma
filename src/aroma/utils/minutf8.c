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
 * Filename    : minutf8.c
 * Description : utf8 utility
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_minutf8_c__
#define __libaroma_minutf8_c__
#include <aroma_internal.h>

/*
 * Variable    : _libaroma_utf8d
 * Type        : const unsigned char[]
 * Descriptions: utf8 data
 */
static const unsigned char _libaroma_utf8d[] = {
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  070, 070, 070, 070, 070, 070, 070, 070,
  070, 070, 070, 070, 070, 070, 070, 070,
  050, 050, 050, 050, 050, 050, 050, 050,
  050, 050, 050, 050, 050, 050, 050, 050,
  030, 030, 030, 030, 030, 030, 030, 030,
  030, 030, 030, 030, 030, 030, 030, 030,
  030, 030, 030, 030, 030, 030, 030, 030,
  030, 030, 030, 030, 030, 030, 030, 030,
  204, 204, 188, 188, 188, 188, 188, 188,
  188, 188, 188, 188, 188, 188, 188, 188,
  188, 188, 188, 188, 188, 188, 188, 188,
  188, 188, 188, 188, 188, 188, 188, 188,
  174, 158, 158, 158, 158, 158, 158, 158,
  158, 158, 158, 158, 158, 142, 126, 126,
  111, 95, 95, 95, 79, 207, 207, 207, 207,
  207, 207, 207, 207, 207, 207, 207,
  0, 1, 1, 1, 8, 7, 6, 4, 5, 4, 3, 2, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
  1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
  1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
  1, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 
  0, 1, 1, 1, 8, 7, 6, 4, 5, 4, 3, 2, 1, 1, 1, 1
};

/*
 * Function    : libaroma_utf8_len
 * Return Value: int
 * Descriptions: get utf8 length
 */
int libaroma_utf8_len(
    const char * s) {
  int i = 0;
  while (*s) {
    if ((*s++ & 0xc0) != 0x80) {
      i++;
    }
  }
  return i;
} /* End of libaroma_utf8_len */

/*
 * Function    : libaroma_utf8c
 * Return Value: int
 * Descriptions: next character
 */
int libaroma_utf8c(
    const char * src,
    const char ** ss,
    int * move) {
  unsigned char a, b, t = 9;
  int u         = 0;
  const char * s = src;
  int n         = 0;
  while ((b = *s++)) {
    n++;
    a = _libaroma_utf8d[b];
    t = _libaroma_utf8d[ 256 + (t << 4) + (a >> 4) ];
    b = (b ^ (unsigned char)(a << 4));
    u = (u << 6) | b;
    if (!t) {
      if (ss != NULL) {
        *ss = s;
      }
      if (move != NULL) {
        *move = n;
      }
      return u;
    }
  }
  if (ss != NULL) {
    *ss = s;
  }
  if (move != NULL) {
    *move = n;
  }
  return 0;
} /* End of libaroma_utf8c */

/*
 * Function    : libaroma_utf8_dec_ex
 * Return Value: void
 * Descriptions: decode extended
 */
void libaroma_utf8_dec_ex(
    ucharp d,
    int dl,
    const char * s) {
  unsigned char  a, b, t = 9;
  int u       = 0;
  ucharp e     = d + dl;
  while ((b = *s++)) {
    a = _libaroma_utf8d[b];
    t = _libaroma_utf8d[ 256 + (t << 4) + (a >> 4) ];
    b = (b ^ (unsigned char)(a << 4));
    u = (u << 6) | b;
    if (!t) {
      if (d < e) {
        *d++ = u;
      }
      else {
        *d = 0;
        break;
      }
      u = 0;
    }
  }
} /* End of libaroma_utf8_dec_ex */

/*
 * Function    : libaroma_utf8_dec
 * Return Value: int *
 * Descriptions: decode
 */
ucharp libaroma_utf8_dec(
    const char * s) {
  if (s == NULL) {
    return NULL;
  }
  int   dl          = libaroma_utf8_len(s) + 1;
  int   sz          = sizeof(int) * dl;
  ucharp r  = malloc(sz);
  if (r != NULL) {
    memset(r, 0, sz);
    libaroma_utf8_dec_ex(r, dl, s);
  }
  return r;
} /* End of libaroma_utf8_dec */



#endif /* __libaroma_minutf8_c__ */
