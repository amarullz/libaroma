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
 * Filename    : config_features.h
 * Description : features configuration
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_config_features_h__
#define __libaroma_config_features_h__

/* Libaroma feature configs - Please use CFLAGS */
/* ============================================
#define LIBAROMA_CONFIG_SHMEM_PREFIX      "/libaromashm-"
#define LIBAROMA_CONFIG_SHMEMFB           1
#define LIBAROMA_CONFIG_NOJPEG            1
#define LIBAROMA_CONFIG_NOFONT_SUBPIXEL   1
#define LIBAROMA_CONFIG_DEBUG             5
#define LIBAROMA_CONFIG_DEBUG_FILE        2
#define LIBAROMA_CONFIG_DEBUG_MEMORY      1
#define LIBAROMA_CONFIG_COMPILER_MESSAGE  1
#define LIBAROMA_CONFIG_OPENMP            1
#define LIBAROMA_CONFIG_HICOLOR_BIT       0

#define LIBAROMA_CONFIG_TEXT_GLOBAL_LOCK	1
#define LIBAROMA_CONFIG_TEXT_NOHARFBUZZ		1

*/

/* Process config - Don't change this line      */
/* ============================================ */
#if LIBAROMA_CONFIG_HICOLOR_BIT > 0
  #define LIBAROMA_CONFIG_USE_HICOLOR_BIT
#endif

#endif /* __libaroma_config_features_h__ */

