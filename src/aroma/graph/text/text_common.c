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
 * Filename    : text_common.c
 * Description : common text functions & global variables
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_text_common_c__
#define __libaroma_text_common_c__

/*
 * Variable    : _libaroma_font
 * Type        : FT_Library
 * Descriptions: freetype instance
 */
static FT_Library _libaroma_font_instance;

/*
 * Variable    : _libaroma_font_faces
 * Type        : _LIBAROMA_FONT_FACE
 * Descriptions: font faces storage
 */
static _LIBAROMA_FONT_FACE _libaroma_font_faces[_LIBAROMA_FONT_MAX_FACE];

/* MUTEXES */
static LIBAROMA_MUTEX __libaroma_text_locks[3];
static inline void __libaroma_text_locker_init(byte destroy){
  int i;
  for (i=0;i<3;i++){
    if (destroy){
      libaroma_mutex_init(__libaroma_text_locks[i]);
    }
    else{
      libaroma_mutex_free(__libaroma_text_locks[i]);
    }
  }
}
static inline void __libaroma_text_locker(byte font, byte lock){
  if (lock){
    libaroma_mutex_lock(__libaroma_text_locks[font]);
  }
  else{
    libaroma_mutex_unlock(__libaroma_text_locks[font]);
  }
}
#define _libaroma_text_lock(l) __libaroma_text_locker(0,l)
#define _libaroma_font_lock(l) __libaroma_text_locker(1,l)

#ifdef LIBAROMA_CONFIG_TEXT_GLOBAL_LOCK
#define _libaroma_pubtext_lock(l) __libaroma_text_locker(2,l)
#else
#define _libaroma_pubtext_lock(l)
#endif
// #define _libaroma_fontcache_lock(l) __libaroma_text_locker(2,l)


/*
 * Function    : _libaroma_text_concat_ex
 * Return Value: byte
 * Descriptions: concat string
 */
byte _libaroma_text_concat_ex(
    char ** dst,
    const char * src,
    byte is_pre) {
  if (src == NULL) {
    return 0;
  }
  else if (strlen(src) == 0) {
    return 0;
  }
  char * old_dst = *dst;
  int  dst_len   = strlen(src) + 1;
  if (old_dst != NULL) {
    dst_len += strlen(old_dst);
  }
  *dst = (char *) calloc(dst_len,1);
  ** dst = 0;
  if (!is_pre) {
    if (old_dst != NULL) {
      strcat(*dst, old_dst);
      free(old_dst);
    }
    strcat(*dst, src);
  }
  else {
    strcat(*dst, src);
    if (old_dst != NULL) {
      strcat(*dst, old_dst);
      free(old_dst);
    }
  }
  return 1;
} /* End of _libaroma_text_concat_ex */

/*
 * Function    : _libaroma_text_compare
 * Return Value: byte
 * Descriptions: compare begining string
 */
byte _libaroma_text_compare(
    const char * str,
    const char * find) {
  int sl = strlen(str);
  int fl = strlen(find);
  if (fl > sl) {
    return 0;
  }
  int i;
  for (i = 0; i < fl; i++) {
    if (str[i] != find[i]) {
      return 0;
    }
  }
  return 1;
} /* End of _libaroma_text_compare */

/*
 * Function    : _libaroma_text_parse_strdup
 * Return Value: char *
 * Descriptions: duplicate string for parser
 */
char * _libaroma_text_parse_strdup(
    const char * src) {
  if (src == NULL) {
    return NULL;
  }
  int slen = strlen(src);
  if (slen > 0) {
    char * ret = (char *) malloc(slen + 1);
    memcpy(ret, src, slen);
    ret[slen] = 0;
    return ret;
  }
  return NULL;
} /* End of _libaroma_text_parse_strdup */

/*
 * Function    : _libaroma_text_change_current
 * Return Value: void
 * Descriptions: change current text
 */
void _libaroma_text_change_current(
    _LIBAROMA_TEXTCHUNKP chunk,
    const char * val) {
  char * tmp = _libaroma_text_parse_strdup(val);
  if (chunk->text != NULL) {
    free(chunk->text);
  }
  chunk->text = tmp;
} /* End of _libaroma_text_change_current */

/*
 * Function    : _libaroma_text_direction
 * Return Value: static byte
 * Descriptions: get text direction
 */
static byte _libaroma_text_direction(
    uchar c,
    byte prev_rtl) {
  int bidiclass = ucdn_get_bidi_class(c);
  switch (bidiclass) {
    case UCDN_BIDI_CLASS_L:
      return 0;
      break;
    case UCDN_BIDI_CLASS_R:
    case UCDN_BIDI_CLASS_AL:
      return 1;
      break;
    case UCDN_BIDI_CLASS_EN:
    case UCDN_BIDI_CLASS_ES:
    case UCDN_BIDI_CLASS_ET:
    case UCDN_BIDI_CLASS_AN:
    case UCDN_BIDI_CLASS_CS:
    case UCDN_BIDI_CLASS_NSM:
    case UCDN_BIDI_CLASS_BN:
    case UCDN_BIDI_CLASS_B:
    case UCDN_BIDI_CLASS_S:
    case UCDN_BIDI_CLASS_WS:
    case UCDN_BIDI_CLASS_ON:
      return prev_rtl;
      break;
  }
  return 0;
} /* End of _libaroma_text_direction */

#endif /* __libaroma_text_common_c__ */
