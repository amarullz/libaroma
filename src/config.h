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
 * Filename    : config.h
 * Description : libaroma Build configuration
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_config_h__
#define __libaroma_config_h__

/*
 * Libaroma version configurations
 */
#define LIBAROMA_CONFIG_NAME          "libaroma"
#define LIBAROMA_CONFIG_VERSION_MAJOR 1
#define LIBAROMA_CONFIG_VERSION_MINOR 0
#define LIBAROMA_CONFIG_VERSION_MICRO 0
#define LIBAROMA_CONFIG_CODENAME      "Albasia"
#define LIBAROMA_CONFIG_YEAR          "2011-2015"
#define LIBAROMA_CONFIG_AUTHOR        "Ahmad Amarullah"

/*
 * Driver for QNX/NTO - Graphic Frameworks
 */
#if defined(__QNXNTO__)
  #ifndef __ISQNX__
    #define __ISQNX__ 1
  #endif
#endif /* defined(__QNXNTO__) */
#ifdef __ISQNX__
  #ifndef LIBAROMA_FB_INIT_FUNCTION
    #define LIBAROMA_FB_INIT_FUNCTION \
      qnx_fb_driver_init
  #endif /* LIBAROMA_FB_INIT_FUNCTION */
  #ifndef LIBAROMA_HID_INIT_FUNCTION
    #define LIBAROMA_HID_INIT_FUNCTION \
      qnx_hid_driver_init
  #endif /* LIBAROMA_HID_INIT_FUNCTION */
  #ifndef LIBAROMA_CONFIG_OS
    #define LIBAROMA_CONFIG_OS "qnx/nto"
  #endif /* LIBAROMA_CONFIG_OS */
#endif /* __ISQNX__ */

/*
 * Driver for Linux
 */
#ifdef __linux__
  /* Driver for Raspberry PI */
  #ifdef __ISRPI__
    #ifndef LIBAROMA_FB_INIT_FUNCTION
      #define LIBAROMA_FB_INIT_FUNCTION \
        __linuxrpi_fb_driver_init
    #endif /* LIBAROMA_FB_INIT_FUNCTION */
    #ifndef LIBAROMA_CONFIG_OS
      #define LIBAROMA_CONFIG_OS "linux/rpi"
    #endif /* LIBAROMA_CONFIG_OS */
  #endif /* __ISRPI__ */
  
  #ifndef LIBAROMA_FB_INIT_FUNCTION
    #define LIBAROMA_FB_INIT_FUNCTION \
      __linux_fb_driver_init
  #endif /* LIBAROMA_FB_INIT_FUNCTION */
  
  #ifndef LIBAROMA_HID_INIT_FUNCTION
    #define LIBAROMA_HID_INIT_FUNCTION \
      __linux_hid_driver_init
  #endif /* LIBAROMA_HID_INIT_FUNCTION */
  
  #ifndef LIBAROMA_CONFIG_OS
    #ifdef __ANDROID__
      #define LIBAROMA_CONFIG_OS "linux/android"
    #else
      #define LIBAROMA_CONFIG_OS "linux/gnu"
    #endif /* __ANDROID__ */
  #endif /* LIBAROMA_CONFIG_OS */
#endif /* __linux__ */

/*
 * libaroma engine configs for ARMv7 neon
 */
#ifdef __ARM_HAVE_NEON
  #include <arm_neon.h> /* include arm_neon.h */
    /* NOTE: use this path = "../../contribs/engines/ */
  #define LIBAROMA_CONFIG_ENGINE_ALPHA \
    "../../../contribs/engines/neon/alpha_neon.c"
  #define LIBAROMA_CONFIG_ENGINE_BLT \
    "../../../contribs/engines/neon/blt_neon.c"
  #define LIBAROMA_CONFIG_ENGINE_COLOR \
    "../../../contribs/engines/neon/color_neon.c"
  #define LIBAROMA_CONFIG_ENGINE_DITHER \
    "../../../contribs/engines/neon/dither_neon.c"
#endif /* __ARM_HAVE_NEON */

#endif /* __libaroma_config_h__ */
