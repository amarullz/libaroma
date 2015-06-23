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
 * Filename    : hid_driver.c
 * Description : QNX NTO / hid driver - read from hidevent pipe
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_qnxnto_hid_driver_c__
#define __libaroma_qnxnto_hid_driver_c__
#include <aroma_internal.h>
#include <stdarg.h>
#include "qnx_keycode.h"

#define INPUT_PIPE_PATH "/etc/hidevent"
static byte   qnxhid_active   = 0;
static FILE * qnxhid_fp=NULL;
byte qnxhid_getinput(LIBAROMA_HIDP me, LIBAROMA_HID_EVENTP dest_ev);
void qnxhid_release(LIBAROMA_HIDP me);

/* init */
byte qnxhid_init(LIBAROMA_HIDP me) {
  if (qnxhid_active){
    ALOGE("qnxhid_init: already active");
    return 0;
  }
  /*
  egalax_touch_screen_w = me->screen_width;
  egalax_touch_screen_h = me->screen_height;
  */
  
  me->internal = NULL;
  me->release  = &qnxhid_release;
  me->getinput = &qnxhid_getinput;
  qnxhid_fp = fopen (INPUT_PIPE_PATH,"r");
  
  qnxhid_active= 1;
  ALOGI("qnxhid_init: successed - event pipe: " INPUT_PIPE_PATH);
  return 1;
}

/* driver init */
byte qnx_hid_driver_init(LIBAROMA_HIDP me) {
  return qnxhid_init(me);
}

/* release */
void qnxhid_release(LIBAROMA_HIDP me) {
  if (me == NULL) {
    return;
  }
  if (qnxhid_active){
    qnxhid_active=0;
    fclose(qnxhid_fp);
    ALOGI("qnxhid_release: released");
  }
}

void qnxhid_parse_event(const char * str, const char * format, ...){
  va_list args;
  va_start (args, format);
  vsscanf (str, format, args);
  va_end (args);
}

/* get input */
byte qnxhid_getinput(LIBAROMA_HIDP me, LIBAROMA_HID_EVENTP dest_ev){
  char buf[64];
  while (qnxhid_active){
    if (fgets(buf,64,qnxhid_fp)!=NULL){
      /* is event data? */
      if (strlen(buf)==11){
        /* process */
        switch (buf[0]){
          case '1':
            {
              /* touch */
              dest_ev->type=LIBAROMA_HID_EV_TYPE_TOUCH;
              dest_ev->key=0;
              dest_ev->state=buf[1]-'0';
              qnxhid_parse_event(
                buf+2,"%04X%04X",
                &dest_ev->x,
                &dest_ev->y
              );
              return LIBAROMA_HID_EV_RET_TOUCH;
            }
            break;
        }
      }
    }
    else{
      usleep(50000);
    }
  }
  return LIBAROMA_HID_EV_RET_EXIT;
}

#endif /* __libaroma_qnxnto_hid_driver_c__ */
