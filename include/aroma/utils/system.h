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
 * Filename    : system.h
 * Description : system utilities
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 14/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_system_h__
#define __libaroma_system_h__

/*
 * Function    : libaroma_getprop
 * Return Value: char *
 * Descriptions: get prop from stream
 */
char * libaroma_getprop(
    char * key, LIBAROMA_STREAMP stream, byte freeStream);

#endif /* __libaroma_system_h__ */
