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
 * Description : libaroma compiler message
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_compiler_message_c__
#define __libaroma_compiler_message_c__
/*
#ifdef __ARM_HAVE_NEON
#define __LIBAROMA_CMSG_NEON "YES"
#else
#define __LIBAROMA_CMSG_NEON "NO"
#endif

#if LIBAROMA_CONFIG_DEBUG_FILE >=1
#if LIBAROMA_CONFIG_DEBUG_FILE >=2
#define __LIBAROMA_CMSG_DFILENAME "ENABLED - With Line Number"
#else
#define __LIBAROMA_CMSG_DFILENAME "ENABLED - Without Line Number"
#endif
#else
#define __LIBAROMA_CMSG_DFILENAME "DISABLED"
#endif

#ifndef LIBAROMA_CONFIG_DEBUG
#define __LIBAROMA_CMSG_DLEVEL "DISABLED"
#elif LIBAROMA_CONFIG_DEBUG<1
#define __LIBAROMA_CMSG_DLEVEL "DISABLED"
#elif LIBAROMA_CONFIG_DEBUG==1
#define __LIBAROMA_CMSG_DLEVEL "ENABLED - 1. Error Only"
#elif LIBAROMA_CONFIG_DEBUG==2
#define __LIBAROMA_CMSG_DLEVEL "ENABLED - 2. Error + Warning"
#elif LIBAROMA_CONFIG_DEBUG==3
#define __LIBAROMA_CMSG_DLEVEL "ENABLED - 3. Error + Warning + Info"
#elif LIBAROMA_CONFIG_DEBUG==4
#define __LIBAROMA_CMSG_DLEVEL "ENABLED - 4. Error + Warning + Info + String"
#elif LIBAROMA_CONFIG_DEBUG==5
#define __LIBAROMA_CMSG_DLEVEL "ENABLED - 5. Verbose\n" \
  "                        " \
  "* NOTICE: DONT USE IT ON RELEASE VERSION!!!"
#elif LIBAROMA_CONFIG_DEBUG==6
#define __LIBAROMA_CMSG_DLEVEL "ENABLED - 6. Verbose With Events\n"\
  "                        "\
  "* WARNING!!! DONT EVER USE IT ON PRODUCTION!!!"
#elif LIBAROMA_CONFIG_DEBUG==7
#define __LIBAROMA_CMSG_DLEVEL "ENABLED - 7. Verbose With Raw Events\n"\
  "                        "\
  "* WARNING!!! DONT EVER USE IT ON PRODUCTION!!!"
#endif

#ifdef LIBAROMA_CONFIG_DEBUG_MEMORY
#define __LIBAROMA_CMSG_DMEM "ENABLED\n"\
  "                        "\
  "* WARNING!!! DONT EVER USE IT ON PRODUCTION!!!"
#else
#define __LIBAROMA_CMSG_DMEM "DISABLED"
#endif

#ifndef LIBAROMA_CONFIG_NOJPEG
#define __LIBAROMA_WITH_JPEG "ENABLED"
#else
#define __LIBAROMA_WITH_JPEG "DISABLED"
#endif

#ifdef LIBAROMA_CONFIG_SHMEMFB
#define __LIBAROMA_FBCANVAS_SHMEM "SHARED - USE AROMA_CORE_FB_SHMEM_NAME"
#else
#define __LIBAROMA_FBCANVAS_SHMEM "NOT SHARED"
#endif

#define __LIBAROMA_STRINGFY(X) #X
#define __LIBAROMA_STR(macro) __LIBAROMA_STRINGFY(macro)
#ifdef LIBAROMA_FB_INIT_FUNCTION
#define __LIBAROMA_FB_DRIVER LIBAROMA_FB_INIT_FUNCTION
#else
#define __LIBAROMA_FB_DRIVER __universal_fb_driver_init
#endif

#ifdef LIBAROMA_INPUT_INIT_FUNCTION
#define __LIBAROMA_INPUT_DRIVER LIBAROMA_INPUT_INIT_FUNCTION
#else
#define __LIBAROMA_INPUT_DRIVER "__universal_input_driver_init"
#endif

#pragma message "\r" \
  "                                                                               \n" \
  "======================================================================\n" \
  "  Compiling " LIBAROMA_CONFIG_NAME " Version " \
    __LIBAROMA_STR(LIBAROMA_CONFIG_VERSION_MAJOR) "." \
    __LIBAROMA_STR(LIBAROMA_CONFIG_VERSION_MINOR) "." \
    __LIBAROMA_STR(LIBAROMA_CONFIG_VERSION_MICRO) \
      " (OS: " LIBAROMA_CONFIG_OS ")\n" \
  "    Build: " __DATE__ " - Codename: " LIBAROMA_CONFIG_CODENAME "\n" \
  "    Copyright (c) " LIBAROMA_CONFIG_YEAR " " LIBAROMA_CONFIG_AUTHOR "\n" \
  "======================================================================\n" \
  "\n  CONFIGURATIONS:\n"\
    "  ---------------\n"\
    "  ARM NEON Optimized  : " __LIBAROMA_CMSG_NEON "\n" \
    "  Debug Level         : " __LIBAROMA_CMSG_DLEVEL "\n" \
    "  Debug with Filename : " __LIBAROMA_CMSG_DFILENAME "\n" \
    "  Memory Tracking     : " __LIBAROMA_CMSG_DMEM "\n" \
    "  FB Driver Init      : " __LIBAROMA_STR(__LIBAROMA_FB_DRIVER) "\n" \
    "  Input Driver Init   : " __LIBAROMA_STR(__LIBAROMA_INPUT_DRIVER) "\n" \
  "______________________________________________________________________\n\n" \
  "\n  FEATURES CONFIG:\n"\
    "  ----------------\n"\
    "  JPEG Support        : " __LIBAROMA_WITH_JPEG "\n" \
    "  Shared FB           : " __LIBAROMA_FBCANVAS_SHMEM "\n" \
  "\n______________________________________________________________________\n" \
  "\n"

#undef __LIBAROMA_CMSG_NEON
#undef __LIBAROMA_CMSG_DFILENAME
#undef __LIBAROMA_CMSG_DMEM
#undef __LIBAROMA_CMSG_DLEVEL
#undef __LIBAROMA_WITH_JPEG
#undef __LIBAROMA_FBCANVAS_SHMEM
#undef __LIBAROMA_FB_DRIVER
#undef __LIBAROMA_INPUT_DRIVER
#undef __LIBAROMA_STRINGFY
#undef __LIBAROMA_STR
*/
#else /* else __libaroma_compiler_message_c__ */
/*
#pragma message "\r" \
  "                                                                               \r" \
  "______________________________________________________________________\n\n" \
  "       " AROMACORE_INFO_NAME " Main Source Code Has Been Compiled\n" \
  "======================================================================\n" \
  "\n"*/
#endif /* __libaroma_compiler_message_c__ */
