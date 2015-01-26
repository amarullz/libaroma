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
 * Filename    : aroma.c
 * Description : libaroma Main Source File
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
#define __libaroma_aroma_c__
#include "config.h"           /* libaroma config header */
#include "config_features.h"  /* libaroma features config header */

/* Debugging */
#ifdef LIBAROMA_CONFIG_COMPILER_MESSAGE
#include "aroma/debug/compiler_message.c"
#endif
#ifdef LIBAROMA_CONFIG_DEBUG_MEMORY
#include "aroma/debug/memory_tracking.c"
#endif

#include <aroma.h>      /* libaroma main header */
#include "aroma/core.c" /* libaroma core module */

/*
 * Function    : libaroma_start
 * Return Value: byte
 * Descriptions: Start libaroma application
 */
byte libaroma_start(
    byte mute_parent) {
  /* Welcome Message */
  ALOGI(
    "%s Version %s",
    libaroma_info(LIBAROMA_INFO_NAME),
    libaroma_info(LIBAROMA_INFO_FULLVER)
  );
  ALOGI("  %s", libaroma_info(LIBAROMA_INFO_COPYRIGHT));
  ALOGI(" ");
  
  /* Init Safe Process Monitoring */
  if (mute_parent) {
    libaroma_runtime_init();
  }
  
#ifdef LIBAROMA_CONFIG_DEBUG_MEMORY
  ALOGV("STARTING MEMORY TRACKING");
#endif
  
  /* Mute Parent */
  if (mute_parent == 2) {
    libaroma_runtime_mute_parent();
  }
  
  ALOGI("===================================================");
  
  if (!libaroma_graph_init()) {
    ALOGE("libaroma_start cannot start graph engine...");
    return 0;
  }

  if (!libaroma_hid_init()) {
    ALOGE("libaroma_start cannot start hid engine...");
    return 0;
  }
  
  if (!libaroma_msg_init()) {
    ALOGE("libaroma_start cannot start message queue...");
    return 0;
  }
  
  if (!libaroma_lang_init()) {
    ALOGE("libaroma_start cannot start language engine...");
    return 0;
  }
  
  if (!libaroma_timer_init()) {
    ALOGE("libaroma_start cannot start timer engine...");
    return 0;
  }
  
  if (!libaroma_wm_init()){
    ALOGE("libaroma_start cannot start window manager...");
    return 0;
  }
  
  ALOGI("___________________________________________________");
  ALOGI(" ");
  return 1;
}

/*
 * Function    : libaroma_end
 * Return Value: byte
 * Descriptions: End libaroma application
 */
byte libaroma_end() {
  ALOGI("___________________________________________________");
  ALOGI(" ");
  
  /* Release Engines */
  libaroma_wm_release();
  libaroma_timer_release();
  libaroma_lang_release();
  libaroma_msg_release();
  libaroma_hid_release();
  libaroma_graph_release();
  
  ALOGI("===================================================");
#ifdef LIBAROMA_CONFIG_DEBUG_MEMORY
  ALOGV("DUMPING MEMORY TRACKING");
  ___mtrack_dump_leak();
#endif
  return 1;
}

#ifdef LIBAROMA_CONFIG_COMPILER_MESSAGE
#include "aroma/debug/compiler_message.c"
#endif
#endif /* __libaroma_aroma_c__ */
