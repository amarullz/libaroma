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
#ifndef __libaroma_aroma_internal_h__
  #error "Should be inside aroma_internal.c."
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
#define LIBAROMA_CONFIG_VERSION_BUILD "150204"
#define LIBAROMA_CONFIG_CODENAME      "Asmarandana"
#define LIBAROMA_CONFIG_YEAR          "2011-2015"
#define LIBAROMA_CONFIG_AUTHOR        "Ahmad Amarullah"

#define LIBAROMA_FB_INIT_FUNCTION libaroma_fb_driver_init
#define LIBAROMA_HID_INIT_FUNCTION libaroma_hid_driver_init


#endif /* __libaroma_config_h__ */
