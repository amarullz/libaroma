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
 * Filename    : version.c
 * Description : version information
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_version_c__
#define __libaroma_version_c__
#include <aroma_internal.h>

/*
 * Variable    : _LIBAROMA_VERSION*
 * Type        : char []
 * Descriptions: version storage
 */
static char _LIBAROMA_VERSION[50] = {0};
static char _LIBAROMA_VERSION_FULLVER[50] = {0};
static char _LIBAROMA_VERSION_SIGNATURE[80] = {0};

/*
 * Function    : _libaroma_version
 * Return Value: char *
 * Descriptions: Get libaroma version string
 */
char * _libaroma_version() {
  if (_LIBAROMA_VERSION[0] == 0) {
    snprintf(_LIBAROMA_VERSION,
             50,
             "%i.%i.%i",
             LIBAROMA_CONFIG_VERSION_MAJOR,
             LIBAROMA_CONFIG_VERSION_MINOR,
             LIBAROMA_CONFIG_VERSION_MICRO
            );
  }
  return _LIBAROMA_VERSION;
}

/*
 * Function    : _libaroma_version_fullver
 * Return Value: char *
 * Descriptions: Get libaroma full version string
 */
char * _libaroma_version_fullver() {
  if (_LIBAROMA_VERSION_FULLVER[0] == 0) {
    snprintf(_LIBAROMA_VERSION_FULLVER,
             50,
             "%s (%s;%s;%s)",
             _libaroma_version(),
             LIBAROMA_CONFIG_VERSION_BUILD,
             LIBAROMA_CONFIG_OS,
             LIBAROMA_CONFIG_CODENAME
            );
  }
  return _LIBAROMA_VERSION_FULLVER;
}

/*
 * Function    : _libaroma_version_signature
 * Return Value: char *
 * Descriptions: Get libaroma version signature string
 */
char * _libaroma_version_signature() {
  if (_LIBAROMA_VERSION_SIGNATURE[0] == 0) {
    snprintf(_LIBAROMA_VERSION_SIGNATURE,
             80,
             "%s Version %s",
             LIBAROMA_CONFIG_NAME,
             _libaroma_version_fullver()
            );
  }
  return _LIBAROMA_VERSION_SIGNATURE;
}

/*
 * Function    : libaroma_info
 * Return Value: char *
 * Descriptions: Get libaroma version information
 */
char * libaroma_info(int type) {
  switch (type) {
    case LIBAROMA_INFO_VERSION:
      return _libaroma_version();
      break;
      
    case LIBAROMA_INFO_OS:
      return LIBAROMA_CONFIG_OS;
      break;
      
    case LIBAROMA_INFO_AUTHOR:
      return LIBAROMA_CONFIG_AUTHOR;
      break;
      
    case LIBAROMA_INFO_CODENAME:
      return LIBAROMA_CONFIG_CODENAME;
      break;
      
    case LIBAROMA_INFO_BUILD:
      return LIBAROMA_CONFIG_VERSION_BUILD;
      break;
      
    case LIBAROMA_INFO_FULLVER:
      return _libaroma_version_fullver();
      break;
      
    case LIBAROMA_INFO_COPYRIGHT:
      return
        "Copyright (c) " LIBAROMA_CONFIG_YEAR " " LIBAROMA_CONFIG_AUTHOR;
        
    case LIBAROMA_INFO_SIGNATURE:
      return _libaroma_version_signature();
      break;
  }
  return LIBAROMA_CONFIG_NAME;
}

#endif /* __libaroma_version_c__ */

