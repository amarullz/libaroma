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

#include "types.h"            /* libaroma standard types */
#include "defs.h"             /* libaroma defines */
#include "utils/array.h"      /* array */
#include "utils/time.h"       /* time */
#include "utils/zip.h"        /* zip */
#include "utils/strings.h"    /* strings */
#include "utils/minutf8.h"    /* utf8 */
#include "utils/stream.h"     /* stream */
#include "utils/json.h"       /* json */
#include "utils/system.h"     /* system */
#include "utils/motions.h"    /* motion interpolation */
#include "graph/engine.h"     /* graph engine */
#include "graph/canvas.h"     /* canvas */
#include "graph/fb.h"         /* framebuffer */
#include "graph/draw.h"       /* common drawing */
#include "graph/png.h"        /* png */
#include "graph/jpeg.h"       /* jpeg */
#include "graph/svg.h"        /* svg */
#include "graph/image.h"      /* image */
#include "graph/text.h"       /* font & text */
#include "graph/artworker.h"  /* art drawing */
#include "hid/hid.h"          /* hid & input handler */
#include "hid/messages.h"     /* message queue */
#include "ui.h"               /* ui, window & controls */

/*
 * Structure   : LIBAROMA_CONFIG
 * Typedef     : LIBAROMA_CONFIG, * LIBAROMA_CONFIGP
 * Descriptions: libaroma runtime configuration
 */
typedef struct{
  char fb_shm_name[64];
  byte snapshoot_fb;
  byte multicore_init_num;
  byte runtime_monitor;
} LIBAROMA_CONFIG, * LIBAROMA_CONFIGP;

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
char * libaroma_info(int type);

/*
 * Function    : libaroma_debug_set_output
 * Return Value: void
 * Descriptions: set debug output fd
 */
void libaroma_debug_set_output(FILE * fd);

/*
 * Function    : libaroma_debug_set_tag
 * Return Value: void
 * Descriptions: set debug tag
 */
void libaroma_debug_set_tag(char * tag);

/*
 * Function    : libaroma_start
 * Return Value: byte
 * Descriptions: Start libaroma application
 */
byte libaroma_start();

/*
 * Function    : libaroma_end
 * Return Value: byte
 * Descriptions: End libaroma application
 */
byte libaroma_end();

#endif /* __libaroma_core_h__ */
