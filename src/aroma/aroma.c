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
 * Description : libaroma main runtime config & initializer
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
#define __libaroma_aroma_c__
#ifndef __libaroma_internal_init_release
#define __libaroma_internal_init_release
#endif
#include <aroma_internal.h>

#ifdef LIBAROMA_TTY_KDSETMODE
  #include <linux/kd.h>
  #include <sys/ioctl.h>
#endif

/* init & release function */
byte libaroma_hid_init();
void libaroma_hid_release();
byte libaroma_fb_init();
byte libaroma_fb_release();
byte libaroma_msg_init();
void libaroma_msg_release();
byte libaroma_wm_init();
byte libaroma_wm_release();
void libaroma_runtime_init();
void libaroma_runtime_activate_cores(int num_cores);
void libaroma_runtime_mute_parent();
void libaroma_runtime_rollback_cores();
byte libaroma_lang_init();
byte libaroma_lang_release();
byte libaroma_timer_init();
byte libaroma_timer_release();
byte libaroma_font_init();
byte libaroma_font_release();

/*
 * Variable    : _libaroma_config
 * Type        : LIBAROMA_CONFIG
 * Descriptions: runtime configuration
 */
static LIBAROMA_CONFIG _libaroma_config;
static byte _libaroma_config_ready=0;
static FILE * _libaroma_debug_fp=NULL;
static char _libaroma_debug_tag[256]="LIBAROMA()";


/*
 * Function    : _libaroma_config_default
 * Return Value: void
 * Descriptions: set default runtime configuration
 */
void _libaroma_config_default() {
  /*
  if (LIBAROMA_FB_SHMEM_NAME){
    snprintf(_libaroma_config.fb_shm_name,256,"%s",LIBAROMA_FB_SHMEM_NAME);
  }
  else{*/
    _libaroma_config.fb_shm_name[0]=0;
  /*}*/
  _libaroma_debug_fp=stdout;
  _libaroma_config.multicore_init_num = 8; /* activate core */
  _libaroma_config.snapshoot_fb = 0; /* snapshoot after graph init */
  _libaroma_config.runtime_monitor = LIBAROMA_START_UNSAFE;
  _libaroma_config_ready = 1;
} /* End of libaroma_config_default */

/*
 * Function    : libaroma_debug_output
 * Return Value: FILE *
 * Descriptions: get debug output fd
 */
FILE * libaroma_debug_output(){
  if (!_libaroma_debug_fp){
    _libaroma_debug_fp=stdout;
  }
  return _libaroma_debug_fp;
} /* End of libaroma_debug_output */

/*
 * Function    : libaroma_debug_tag
 * Return Value: char *
 * Descriptions: get debug tag
 */
char * libaroma_debug_tag(){
  return _libaroma_debug_tag;
} /* End of libaroma_debug_tag */

/*
 * Function    : libaroma_debug_set_tag
 * Return Value: void
 * Descriptions: set debug tag
 */
void libaroma_debug_set_tag(char * tag){
  if (tag){
    snprintf(_libaroma_debug_tag,256,"%s",tag);
  }
} /* End of libaroma_debug_set_tag */

/*
 * Function    : libaroma_debug_set_output
 * Return Value: void
 * Descriptions: set debug output fd
 */
void libaroma_debug_set_output(FILE * fd){
  _libaroma_debug_fp = fd;
  if (!_libaroma_debug_fp){
    _libaroma_debug_fp=stdout;
  }
} /* End of libaroma_debug_set_output */

/*
 * Function    : libaroma_config
 * Return Value: LIBAROMA_CONFIGP
 * Descriptions: get runtime config
 */
LIBAROMA_CONFIGP libaroma_config(){
  if (!_libaroma_config_ready){
    _libaroma_config_default();
  }
  return &_libaroma_config;
} /* End of libaroma_config */

/*
 * Function    : libaroma_start
 * Return Value: byte
 * Descriptions: Start libaroma application
 */
byte libaroma_start() {

  /* Welcome Message */
  ALOGI(
    "%s Version %s",
    libaroma_info(LIBAROMA_INFO_NAME),
    libaroma_info(LIBAROMA_INFO_FULLVER)
  );
  ALOGI("  %s", libaroma_info(LIBAROMA_INFO_COPYRIGHT));
  ALOGI(" ");
  
#ifdef LIBAROMA_TTY_KDSETMODE
  ALOGI("KDSETMODE = KD_GRAPHICS");
  int tty1 = open("/dev/tty1", O_RDWR);
  ioctl(tty1, KDSETMODE, KD_GRAPHICS);
#endif
  
  /* Init Safe Process Monitoring */
  if (libaroma_config()->runtime_monitor) {
    libaroma_runtime_init();
  }
  
#ifdef LIBAROMA_CONFIG_DEBUG_MEMORY
#if LIBAROMA_CONFIG_DEBUG_MEMORY >=1
  ALOGV("STARTING MEMORY TRACKING");
  ___mtrack_init_free(0);
#endif
#endif
  
  /* Mute Parent */
  if (libaroma_config()->runtime_monitor == LIBAROMA_START_MUTEPARENT) {
    libaroma_runtime_mute_parent();
  }
  
  ALOGI("===================================================");
  
  if (libaroma_config()->multicore_init_num>0){
    /* activate processor/cores */
    libaroma_runtime_activate_cores(libaroma_config()->multicore_init_num);
  }
  
  if (!libaroma_fb_init()) {
    ALOGE("libaroma_start cannot start framebuffer...");
    return 0;
  }
  if (!libaroma_font_init()) {
    ALOGE("libaroma_start cannot start font engine...");
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
  libaroma_font_release();
  libaroma_fb_release();
  libaroma_runtime_rollback_cores();
  
  ALOGI("===================================================");
#ifdef LIBAROMA_CONFIG_DEBUG_MEMORY
#if LIBAROMA_CONFIG_DEBUG_MEMORY >=1
  ALOGV("DUMPING MEMORY TRACKING");
  ___mtrack_dump_leak();
  ___mtrack_init_free(1);
#endif
#endif

#ifdef LIBAROMA_TTY_KDSETMODE
  ALOGI("KDSETMODE = KD_TEXT");
  int tty1 = open("/dev/tty1", O_RDWR);
  ioctl(tty1, KDSETMODE, KD_TEXT);
#endif

  return 1;
}

#endif /* __libaroma_aroma_c__ */

