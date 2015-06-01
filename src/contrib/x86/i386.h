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
 * Filename    : i386.h
 * Description : x86 32bit config
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_i386_h__
#define __libaroma_i386_h__

#if defined(__i386) || defined(_M_IX86)
  #ifdef LIBAROMA_CONFIG_SHMEM_PREFIX
    #undef LIBAROMA_CONFIG_SHMEM_PREFIX
  #endif
  #define LIBAROMA_CONFIG_SHMEM_PREFIX "/tmp/libaromashm-"
  
/*  #define shm_open open
  #define shm_unlink unlink*/
#endif

#endif /* __libaroma_i386_h__ */
