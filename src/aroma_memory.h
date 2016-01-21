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
 * Filename    : memory.h
 * Description : memory utilities
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 20/01/16 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_memory_h__
#define __libaroma_memory_h__
#ifndef LIBAROMA_CONFIG_NO_ANDROID_MEM

/*
 * Function    : android_memset16
 * Return Value: void
 * Descriptions: size is given in bytes and must be multiple of 2
 */
void android_memset16(uint16_t* dst, uint16_t value, size_t size);

/*
 * Function    : android_memset16
 * Return Value: void
 * Descriptions: size is given in bytes and must be multiple of 4
 */
void android_memset32(uint32_t* dst, uint32_t value, size_t size);

#define libaroma_memset16(s,d,n) android_memset16(s,d,n<<1)
#define libaroma_memset32(s,d,n) android_memset32(s,d,n<<2)

#endif /* LIBAROMA_CONFIG_NO_ANDROID_MEM */
#endif /* __libaroma_memory_h__ */
