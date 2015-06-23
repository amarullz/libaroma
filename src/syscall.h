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
 * Filename    : fallback.h
 * Description : fallback headers
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_fallback_h__
#define __libaroma_fallback_h__

/* add syscall wrapper here */
#ifdef __linux__
  #include "contrib/linux/linux_syscall.h"
#endif

#ifdef __ISQNX__
  #include "contrib/qnx/qnx_syscall.h"
#endif

/* for android */
#if ANDROID
  #include "contrib/android/android.h"
#endif

/* X86 32bit */
#if defined(__i386) || defined(_M_IX86)
  #include "contrib/x86/i386.h"
  #include "contrib/sse/sse_neon.h"
#endif

/* arm neon engine */
#ifdef __ARM_HAVE_NEON
  #include "contrib/arm_neon/arm_neon.h"
#endif

#endif /* __libaroma_fallback_h__ */

