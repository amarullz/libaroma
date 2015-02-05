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
 * Filename    : core.h
 * Description : libaroma core headers
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_core_h__
#define __libaroma_core_h__

#include "sys.h"    /* libaroma system headers */
#include "types.h"  /* libaroma standard types */
#include "defs.h"   /* libaroma defines */
#include "utils.h"  /* libaroma utility modules */
#include "graph.h"  /* libaroma graph modules */
#include "ui.h"     /* libaroma ui modules */
#include "debug.h"  /* libaroma debug modules */

/*
 * Structure   : _LIBAROMA_CONFIG
 * Typedef     : LIBAROMA_CONFIG, * LIBAROMA_CONFIGP
 * Descriptions: libaroma runtime configuration
 */
typedef struct _LIBAROMA_CONFIG LIBAROMA_CONFIG;
typedef struct _LIBAROMA_CONFIG * LIBAROMA_CONFIGP;
struct _LIBAROMA_CONFIG{
  char fb_shm_name[64];
  byte runtime_monitor;
  
};

/*
 * Function    : libaroma_config
 * Return Value: LIBAROMA_CONFIGP
 * Descriptions: get runtime config
 */
LIBAROMA_CONFIGP libaroma_config();

/*
 * Function    : libaroma_info
 * Return Value: char *
 * Descriptions: Get libaroma version information
 */
char * libaroma_info(
    int type);

#endif /* __libaroma_core_h__ */
