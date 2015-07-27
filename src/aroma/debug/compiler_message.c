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
 * Filename    : compiler_message.c
 * Description : compiler message
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_compiler_message_c__
#define __libaroma_compiler_message_c__
#include <aroma_internal.h>


/* stringfy */
#define __LIBAROMA_STRINGFY(X) #X
#define __LIBAROMA_STR(macro) __LIBAROMA_STRINGFY(macro)

/* arm neon */
#ifdef __ARM_NEON__
  #define __LIBAROMA_CMSG_NEON "YES"
#else
  #ifdef __SSSE3__
    #define __LIBAROMA_CMSG_NEON "YES - SSE Emulated"
  #else
    #define __LIBAROMA_CMSG_NEON "NO"
  #endif
#endif

/* openmp */
#ifdef LIBAROMA_CONFIG_OPENMP
  #define __LIBAROMA_CMSG_OPENMP "YES"
#else
  #define __LIBAROMA_CMSG_OPENMP "NO"
#endif

/* debug source file */
#if LIBAROMA_CONFIG_DEBUG_FILE >=1
#if LIBAROMA_CONFIG_DEBUG_FILE >=2
  #define __LIBAROMA_CMSG_DFILENAME "ENABLED - 2.Filename & Line Number"
#else
  #define __LIBAROMA_CMSG_DFILENAME "ENABLED - 1.Filename only"
#endif
#else
  #define __LIBAROMA_CMSG_DFILENAME "DISABLED"
#endif

/* debug level */
#ifndef LIBAROMA_CONFIG_DEBUG
  #define __LIBAROMA_CMSG_DLEVEL "DISABLED"
#elif LIBAROMA_CONFIG_DEBUG<1
  #define __LIBAROMA_CMSG_DLEVEL "DISABLED"
#elif LIBAROMA_CONFIG_DEBUG==1
  #define __LIBAROMA_CMSG_DLEVEL "ENABLED - 1. Error Only"
#elif LIBAROMA_CONFIG_DEBUG==2
  #define __LIBAROMA_CMSG_DLEVEL "ENABLED - 2. Error + Info"
#elif LIBAROMA_CONFIG_DEBUG==3
  #define __LIBAROMA_CMSG_DLEVEL "ENABLED - 3. Error + Info + String"
#elif LIBAROMA_CONFIG_DEBUG==4
  #define __LIBAROMA_CMSG_DLEVEL "ENABLED - 4. Error + Warning + Info + String"
#elif LIBAROMA_CONFIG_DEBUG==5
  #define __LIBAROMA_CMSG_DLEVEL "ENABLED - 5. Verbose\n" \
    "                        " \
    " * NOTICE: DONT USE IT ON RELEASE VERSION"
#elif LIBAROMA_CONFIG_DEBUG==6
  #define __LIBAROMA_CMSG_DLEVEL "ENABLED - 6. Verbose With Events\n"\
    "                        "\
    " * WARNING: DONT EVER USE IT ON PRODUCTION"
#elif LIBAROMA_CONFIG_DEBUG==7
  #define __LIBAROMA_CMSG_DLEVEL "ENABLED - 7. Verbose With Raw Events\n"\
    "                        "\
    " * WARNING: DONT EVER USE IT ON PRODUCTION"
#endif

/* memory leak tracker */
#if LIBAROMA_CONFIG_DEBUG_TRACE >=1
  #define __LIBAROMA_CMSG_DTRACE __LIBAROMA_STR(LIBAROMA_CONFIG_DEBUG_TRACE) \
    " Stacks - ENABLED\n"\
    "                        "\
    " * WARNING: DONT USE IT ON PRODUCTION"
#else
  #define __LIBAROMA_CMSG_DTRACE "DISABLED"
#endif


/* memory leak tracker */
#if LIBAROMA_CONFIG_DEBUG_MEMORY >=1
  #define __LIBAROMA_CMSG_DMEM "ENABLED\n"\
    "                        "\
    " * WARNING: DONT USE IT ON PRODUCTION"
#else
  #define __LIBAROMA_CMSG_DMEM "DISABLED"
#endif

/* jpeg support */
#ifndef LIBAROMA_CONFIG_NOJPEG
  #define __LIBAROMA_WITH_JPEG "ENABLED"
#else
  #define __LIBAROMA_WITH_JPEG "DISABLED"
#endif

/* shared memory fb */
#ifdef LIBAROMA_CONFIG_SHMEMFB
  #define __LIBAROMA_FBCANVAS_SHMEM "SHARED"
#else
  #define __LIBAROMA_FBCANVAS_SHMEM "NOT SHARED"
#endif

/* fb driver */
#ifdef LIBAROMA_FB_INIT_FUNCTION
  #define __LIBAROMA_FB_DRIVER LIBAROMA_FB_INIT_FUNCTION
#else
  #define __LIBAROMA_FB_DRIVER NONE
#endif

/* hid driver */
#ifdef LIBAROMA_HID_INIT_FUNCTION
  #define __LIBAROMA_HID_DRIVER LIBAROMA_HID_INIT_FUNCTION
#else
  #define __LIBAROMA_HID_DRIVER NONE
#endif

/* freetype subpixel */
#ifdef LIBAROMA_CONFIG_NOFONT_SUBPIXEL
  #define __LIBAROMA_CMSG_SUBPIXEL "Antialias"
#else
  #define __LIBAROMA_CMSG_SUBPIXEL "Subpixel/Cleartype Like"
#endif

#if LIBAROMA_CONFIG_HICOLOR_BIT > 0
  #define __LIBAROMA_CMSG_HICOLOR "ENABLED"
#else
  #define __LIBAROMA_CMSG_HICOLOR "DISABLED"
#endif

#pragma message "\n"\
  "======================================================================\n"\
  "  " LIBAROMA_CONFIG_NAME " Version "\
    __LIBAROMA_STR(LIBAROMA_CONFIG_VERSION_MAJOR) "."\
    __LIBAROMA_STR(LIBAROMA_CONFIG_VERSION_MINOR) "."\
    __LIBAROMA_STR(LIBAROMA_CONFIG_VERSION_MICRO) "\n"\
  "    Build: " LIBAROMA_CONFIG_VERSION_BUILD\
  " - Codename: " LIBAROMA_CONFIG_CODENAME "\n"\
  "    Copyright (c) " LIBAROMA_CONFIG_YEAR " " LIBAROMA_CONFIG_AUTHOR "\n"\
  "======================================================================\n"\
  "\n  CONFIGURATIONS:\n"\
    "  ---------------\n"\
    "  Platform            : " LIBAROMA_CONFIG_OS "\n"\
    "  Debug Level         : " __LIBAROMA_CMSG_DLEVEL "\n"\
    "  Debug with Filename : " __LIBAROMA_CMSG_DFILENAME "\n"\
    "  Debug Backtrace     : " __LIBAROMA_CMSG_DTRACE "\n"\
    "  Memory Tracking     : " __LIBAROMA_CMSG_DMEM "\n"\
    "  FB Driver           : " __LIBAROMA_STR(__LIBAROMA_FB_DRIVER) "\n"\
    "  HID Driver          : " __LIBAROMA_STR(__LIBAROMA_HID_DRIVER) "\n"\
  "______________________________________________________________________\n"\
  "\n\n  FEATURES CONFIG:\n"\
    "  ----------------\n"\
    "  JPEG Support        : " __LIBAROMA_WITH_JPEG "\n"\
    "  Shmem FB            : " __LIBAROMA_FBCANVAS_SHMEM "\n"\
    "  Shmem Prefix        : " LIBAROMA_CONFIG_SHMEM_PREFIX "\n"\
    "  Freetype Rendering  : " __LIBAROMA_CMSG_SUBPIXEL "\n"\
    "  32bit highcolor bit : " __LIBAROMA_CMSG_HICOLOR "\n"\
    "  ARM NEON Optimized  : " __LIBAROMA_CMSG_NEON "\n"\
    "  OpenMP Optimized    : " __LIBAROMA_CMSG_OPENMP "\n"\
  "\n______________________________________________________________________\n"\
  "\n"

#undef __LIBAROMA_CMSG_DTRACE
#undef __LIBAROMA_CMSG_HICOLOR
#undef __LIBAROMA_CMSG_NEON
#undef __LIBAROMA_CMSG_DFILENAME
#undef __LIBAROMA_CMSG_DMEM
#undef __LIBAROMA_CMSG_DLEVEL
#undef __LIBAROMA_WITH_JPEG
#undef __LIBAROMA_FBCANVAS_SHMEM
#undef __LIBAROMA_FB_DRIVER
#undef __LIBAROMA_HID_DRIVER
#undef __LIBAROMA_STRINGFY
#undef __LIBAROMA_STR
#undef __LIBAROMA_CMSG_OPENMP
#undef __LIBAROMA_CMSG_SUBPIXEL

#endif /* __libaroma_compiler_message_c__ */

