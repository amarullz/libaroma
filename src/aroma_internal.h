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
 * Filename    : aroma_internal.h
 * Description : libaroma internal header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
#define __libaroma_aroma_internal_h__

/* config & public headers */
#include "config.h"
#include "config_features.h"

#include <aroma.h>

/* standard c headers */
#include <string.h>
#include <math.h>
#include <limits.h>
#include <ctype.h>

/* debug & fallback header */
#include "aroma/debug/debug.h"
#include "syscall.h"

/* for android */
#if ANDROID
  #include "contrib/android/android.h"
#endif

/* arm neon engine */
#ifdef __ARM_HAVE_NEON
  #include "contrib/arm_neon/arm_neon.h"
#endif

/* 32bit color */
#if LIBAROMA_CONFIG_HICOLOR_BIT > 0
  #define LIBAROMA_CONFIG_USE_HICOLOR_BIT
#endif

#endif /* __libaroma_aroma_internal_h__ */
