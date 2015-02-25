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
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
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
#ifdef LIBAROMA_CONFIG_OPENMP
  static omp_nest_lock_t __libaroma_text_lock;
  static omp_nest_lock_t __libaroma_font_lock;
  inline void __libaroma_text_locker(byte font, byte lock){
    if (lock){
      omp_set_nest_lock(font?&__libaroma_font_lock:&__libaroma_text_lock);
    }
    else{
      omp_unset_nest_lock(font?&__libaroma_font_lock:&__libaroma_text_lock);
    }
  }
#else
  static pthread_mutex_t _libaroma_font_mutex = PTHREAD_MUTEX_INITIALIZER;
  static pthread_mutex_t _libaroma_text_mutex = PTHREAD_MUTEX_INITIALIZER;
  inline void __libaroma_text_locker(byte font, byte lock){
    if (lock){
      pthread_mutex_lock(font?&_libaroma_font_mutex:&_libaroma_text_mutex);
    }
    else{
      pthread_mutex_unlock(font?&_libaroma_font_mutex:&_libaroma_text_mutex);
    }
  }
#endif
#define _libaroma_text_lock(l) __libaroma_text_locker(0,l)
#define _libaroma_font_lock(l) __libaroma_text_locker(1,l)


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
  *dst = (char *) malloc(dst_len);
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


/*
 * Variable    : _LIBAROMA_UCDN_SCRIPT
 * Type        : const hb_script_t
 * Descriptions: ucdn to harfbuzz-ng script
 */
static const hb_script_t _LIBAROMA_UCDN_SCRIPT[] = {
  HB_SCRIPT_COMMON,
  HB_SCRIPT_LATIN,
  HB_SCRIPT_GREEK,
  HB_SCRIPT_CYRILLIC,
  HB_SCRIPT_ARMENIAN,
  HB_SCRIPT_HEBREW,
  HB_SCRIPT_ARABIC,
  HB_SCRIPT_SYRIAC,
  HB_SCRIPT_THAANA,
  HB_SCRIPT_DEVANAGARI,
  HB_SCRIPT_BENGALI,
  HB_SCRIPT_GURMUKHI,
  HB_SCRIPT_GUJARATI,
  HB_SCRIPT_ORIYA,
  HB_SCRIPT_TAMIL,
  HB_SCRIPT_TELUGU,
  HB_SCRIPT_KANNADA,
  HB_SCRIPT_MALAYALAM,
  HB_SCRIPT_SINHALA,
  HB_SCRIPT_THAI,
  HB_SCRIPT_LAO,
  HB_SCRIPT_TIBETAN,
  HB_SCRIPT_MYANMAR,
  HB_SCRIPT_GEORGIAN,
  HB_SCRIPT_HANGUL,
  HB_SCRIPT_ETHIOPIC,
  HB_SCRIPT_CHEROKEE,
  HB_SCRIPT_CANADIAN_SYLLABICS,
  HB_SCRIPT_OGHAM,
  HB_SCRIPT_RUNIC,
  HB_SCRIPT_KHMER,
  HB_SCRIPT_MONGOLIAN,
  HB_SCRIPT_HIRAGANA,
  HB_SCRIPT_KATAKANA,
  HB_SCRIPT_BOPOMOFO,
  HB_SCRIPT_HAN,
  HB_SCRIPT_YI,
  HB_SCRIPT_OLD_ITALIC,
  HB_SCRIPT_GOTHIC,
  HB_SCRIPT_DESERET,
  HB_SCRIPT_INHERITED,
  HB_SCRIPT_TAGALOG,
  HB_SCRIPT_HANUNOO,
  HB_SCRIPT_BUHID,
  HB_SCRIPT_TAGBANWA,
  HB_SCRIPT_LIMBU,
  HB_SCRIPT_TAI_LE,
  HB_SCRIPT_LINEAR_B,
  HB_SCRIPT_UGARITIC,
  HB_SCRIPT_SHAVIAN,
  HB_SCRIPT_OSMANYA,
  HB_SCRIPT_CYPRIOT,
  HB_SCRIPT_BRAILLE,
  HB_SCRIPT_BUGINESE,
  HB_SCRIPT_COPTIC,
  HB_SCRIPT_NEW_TAI_LUE,
  HB_SCRIPT_GLAGOLITIC,
  HB_SCRIPT_TIFINAGH,
  HB_SCRIPT_SYLOTI_NAGRI,
  HB_SCRIPT_OLD_PERSIAN,
  HB_SCRIPT_KHAROSHTHI,
  HB_SCRIPT_BALINESE,
  HB_SCRIPT_CUNEIFORM,
  HB_SCRIPT_PHOENICIAN,
  HB_SCRIPT_PHAGS_PA,
  HB_SCRIPT_NKO,
  HB_SCRIPT_SUNDANESE,
  HB_SCRIPT_LEPCHA,
  HB_SCRIPT_OL_CHIKI,
  HB_SCRIPT_VAI,
  HB_SCRIPT_SAURASHTRA,
  HB_SCRIPT_KAYAH_LI,
  HB_SCRIPT_REJANG,
  HB_SCRIPT_LYCIAN,
  HB_SCRIPT_CARIAN,
  HB_SCRIPT_LYDIAN,
  HB_SCRIPT_CHAM,
  HB_SCRIPT_TAI_THAM,
  HB_SCRIPT_TAI_VIET,
  HB_SCRIPT_AVESTAN,
  HB_SCRIPT_EGYPTIAN_HIEROGLYPHS,
  HB_SCRIPT_SAMARITAN,
  HB_SCRIPT_LISU,
  HB_SCRIPT_BAMUM,
  HB_SCRIPT_JAVANESE,
  HB_SCRIPT_MEETEI_MAYEK,
  HB_SCRIPT_IMPERIAL_ARAMAIC,
  HB_SCRIPT_OLD_SOUTH_ARABIAN,
  HB_SCRIPT_INSCRIPTIONAL_PARTHIAN,
  HB_SCRIPT_INSCRIPTIONAL_PAHLAVI,
  HB_SCRIPT_OLD_TURKIC,
  HB_SCRIPT_KAITHI,
  HB_SCRIPT_BATAK,
  HB_SCRIPT_BRAHMI,
  HB_SCRIPT_MANDAIC,
  HB_SCRIPT_CHAKMA,
  HB_SCRIPT_MEROITIC_CURSIVE,
  HB_SCRIPT_MEROITIC_HIEROGLYPHS,
  HB_SCRIPT_MIAO,
  HB_SCRIPT_SHARADA,
  HB_SCRIPT_SORA_SOMPENG,
  HB_SCRIPT_TAKRI,
  HB_SCRIPT_UNKNOWN,
  HB_SCRIPT_BASSA_VAH,
  HB_SCRIPT_CAUCASIAN_ALBANIAN,
  HB_SCRIPT_DUPLOYAN,
  HB_SCRIPT_ELBASAN,
  HB_SCRIPT_GRANTHA,
  HB_SCRIPT_KHOJKI,
  HB_SCRIPT_KHUDAWADI,
  HB_SCRIPT_LINEAR_A,
  HB_SCRIPT_MAHAJANI,
  HB_SCRIPT_MANICHAEAN,
  HB_SCRIPT_MENDE_KIKAKUI,
  HB_SCRIPT_MODI,
  HB_SCRIPT_MRO,
  HB_SCRIPT_NABATAEAN,
  HB_SCRIPT_OLD_NORTH_ARABIAN,
  HB_SCRIPT_OLD_PERMIC,
  HB_SCRIPT_PAHAWH_HMONG,
  HB_SCRIPT_PALMYRENE,
  HB_SCRIPT_PAU_CIN_HAU,
  HB_SCRIPT_PSALTER_PAHLAVI,
  HB_SCRIPT_SIDDHAM,
  HB_SCRIPT_TIRHUTA,
  HB_SCRIPT_WARANG_CITI,
};

#endif /* __libaroma_text_common_c__ */
