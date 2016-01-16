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
 * Filename    : strings.c
 * Description : string utils
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_strings_c__
#define __libaroma_strings_c__
#include <zlib.h>
#include <aroma_internal.h>

/*
 * Variable    : _libaroma_language
 * Type        : LIBAROMA_SARRAYP
 * Descriptions: language storage
 */
static LIBAROMA_SARRAYP _libaroma_language=NULL;

/*
 * Function    : libaroma_hash
 * Return Value: dword
 * Descriptions: adler32 hash
 */
dword libaroma_hash(
  char * str) {
  return (dword) adler32(0L, (Bytef *) str, strlen(str));
} /* End of libaroma_hash */

/*
 * Function    : libaroma_stristr
 * Return Value: char *
 * Descriptions: stristr
 */
char * libaroma_stristr(const char *ch1, const char *ch2, int sz){
  int i=0;
  size_t j=0;
  const char * found=NULL;
  const char * out=NULL;
  for (i=0;i<sz;i++){
    if (tolower(ch1[i])==tolower(ch2[j])){
      if (!found){
        found=ch1+i;
      }
      if (++j==strlen(ch2)){
        out=found;
        break;
      }
    }
    else{
      j=0;
      found=NULL;
    }
  }
  return (char *) out;
} /* End of libaroma_stristr */

/*
 * Function    : libaroma_lang_init
 * Return Value: byte
 * Descriptions: init language
 */
byte libaroma_lang_init() {
  if (_libaroma_language != NULL) {
    ALOGW("libaroma_lang_init - _libaroma_language already initialized...");
    return 0;
  }
  _libaroma_language = libaroma_sarray(NULL);
  ALOGV("libaroma_lang initialized");
  return 1;
} /* End of libaroma_lang_init */

/*
 * Function    : libaroma_lang_release
 * Return Value: byte
 * Descriptions: release language
 */
byte libaroma_lang_release() {
  if (_libaroma_language == NULL) {
    ALOGW("libaroma_lang_release - _libaroma_language uninitialized...");
    return 0;
  }
  libaroma_sarray_free(_libaroma_language);
  _libaroma_language=NULL;
  ALOGV("libaroma_lang released");
  return 1;
} /* End of libaroma_lang_release */

/*
 * Function    : libaroma_lang_get
 * Return Value: char *
 * Descriptions: get language item
 */
char * libaroma_lang_get(
    char * key) {
  if (_libaroma_language == NULL) {
    ALOGW("libaroma_lang_get - _libaroma_language uninitialized...");
    return NULL;
  }
  return libaroma_sarray_get_string(_libaroma_language, key);
} /* End of libaroma_lang_get */

/*
 * Function    : libaroma_lang_set
 * Return Value: byte
 * Descriptions: set language item
 */
byte libaroma_lang_set(
    char * key,
    char * value) {
  if (_libaroma_language == NULL) {
    ALOGW("libaroma_lang_set - _libaroma_language uninitialized...");
    return 0;
  }
  return libaroma_sarray_set_string(
    _libaroma_language, key, value);
} /* End of libaroma_lang_set */

/*
 * Function    : libaroma_lang_delete
 * Return Value: byte
 * Descriptions: delete language item
 */
byte libaroma_lang_delete(
    char * key) {
  if (_libaroma_language == NULL) {
    ALOGW("libaroma_lang_delete - _libaroma_language uninitialized...");
    return 0;
  }
  return libaroma_sarray_delete(_libaroma_language, key);
} /* End of libaroma_lang_delete */

/*
 * Function    : libaroma_lang_cleanup
 * Return Value: void
 * Descriptions: cleanup language items
 */
void libaroma_lang_cleanup() {
  libaroma_lang_release();
  libaroma_lang_init();
} /* End of libaroma_lang_cleanup */

#endif /* __libaroma_strings_c__ */
