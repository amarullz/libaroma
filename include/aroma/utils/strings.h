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
 * Filename    : strings.h
 * Description : strings utility
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_strings_h__
#define __libaroma_strings_h__

/*
 * Function    : libaroma_hash
 * Return Value: dword
 * Descriptions: adler32 hash
 */
dword libaroma_hash(
  char * str);

/*
 * Function    : libaroma_stristr
 * Return Value: char *
 * Descriptions: stristr
 */
char * libaroma_stristr(const char *ch1, const char *ch2, int sz);

/*
 * Function    : libaroma_lang_get
 * Return Value: char *
 * Descriptions: get language item
 */
char * libaroma_lang_get(
    char * key);

/*
 * Function    : libaroma_lang_set
 * Return Value: byte
 * Descriptions: set language item
 */
byte libaroma_lang_set(
    char * key,
    char * value);

/*
 * Function    : libaroma_lang_delete
 * Return Value: byte
 * Descriptions: delete language item
 */
byte libaroma_lang_delete(
    char * key);

/*
 * Function    : libaroma_lang_cleanup
 * Return Value: void
 * Descriptions: cleanup language items
 */
void libaroma_lang_cleanup();

#endif /* __libaroma_strings_h__ */
