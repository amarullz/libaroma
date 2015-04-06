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
 * Filename    : defs.h
 * Description : libaroma defined macros
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_defs_h__
#define __libaroma_defs_h__

/* Common macros */
#define __PI 3.14159265359

/* LIBAROMA_START_* : Application start runtime type */
#define LIBAROMA_START_UNSAFE     0x0
#define LIBAROMA_START_SAFE       0x1
#define LIBAROMA_START_MUTEPARENT 0x2

/* LIBAROMA_INFO_* : Version & Informations */
#define LIBAROMA_INFO_NAME        0x0
#define LIBAROMA_INFO_VERSION     0x1
#define LIBAROMA_INFO_BUILD       0x2
#define LIBAROMA_INFO_AUTHOR      0x3
#define LIBAROMA_INFO_OS          0x4
#define LIBAROMA_INFO_CODENAME    0x5
#define LIBAROMA_INFO_FULLVER     0x6
#define LIBAROMA_INFO_COPYRIGHT   0x7
#define LIBAROMA_INFO_SIGNATURE   0x8

/* Windows style dword macros */
#define LOWORD(l) ((word)(l))
#define HIWORD(l) ((word)(((dword)(l)>>16)&0xFFFF))
#define MAKEDWORD(lo,hi) ((dword)(((word)(lo))|((dword)((word)(hi)))<<16))

#ifndef __restrict
#define __restrict
#endif

#endif /* __libaroma_defs_h__ */
