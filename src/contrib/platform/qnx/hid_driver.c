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
#include <sched.h>

#define QNXHID_EV_TOUCH_UP        0x01
#define QNXHID_EV_TOUCH_DOWN      0x02
#define QNXHID_EV_TOUCH_MOVE      0x03
#define QNXHID_EV_TOUCH_KBD       0x08
#define QNXHID_EV_TOUCH_RAW_KBD   0x10
#define QNXHID_EV_TOUCH_EXIT      0xf0

/* qnx hid event & state */
static byte   qnxhid_active         = 0;
static long   qnxhid_touchlastev    = 0;
static byte   qnxhid_touchlastid    = QNXHID_EV_TOUCH_UP;
static int    qnxhid_touchlast_x    = 0;
static int    qnxhid_touchlast_y    = 0;
static int    qnxhid_pipe[2];

typedef struct{
  byte id;
  int x;
  int y;
} QNXHID_EVENT;
static pthread_mutex_t qnxhid_mutex = PTHREAD_MUTEX_INITIALIZER;
void qnxhid_push_event(QNXHID_EVENT * ev){
  write(qnxhid_pipe[1],ev,sizeof(QNXHID_EVENT));
}
void qnxhid_send_event(byte id, int x, int y){
  pthread_mutex_lock(&qnxhid_mutex);
  //printf("HID EVENT: %i - %ix%i\n",id,x,y);
  byte send=1;
  if ((id==QNXHID_EV_TOUCH_UP)&&(qnxhid_touchlastid==QNXHID_EV_TOUCH_UP)){
    send=0;
  }
  qnxhid_touchlastev=libaroma_tick();
  qnxhid_touchlastid=id;
  qnxhid_touchlast_x=x;
  qnxhid_touchlast_y=y;
  
  if (send){
    QNXHID_EVENT ev;
    ev.id=id;
    ev.x=x;
    ev.y=y;
    qnxhid_push_event(&ev);
  }
  pthread_mutex_unlock(&qnxhid_mutex);
}

/* hiddi driver */
#include "qnx_hiddi_driver.c"

/* forward function */
byte qnxhid_getinput(LIBAROMA_HIDP me, LIBAROMA_HID_EVENTP dest_ev);
void qnxhid_release(LIBAROMA_HIDP me);

static void * qnxhid_monitoring(void * cookie){
	qnx_hiddi_connect();
	int currnum=qnx_hiddi_getdevnum();
	ALOGI("INPUT DEVICE : %i Devices Detected",currnum);
  while(qnxhid_active){
    int nownum=qnx_hiddi_getdevnum();
    if (currnum!=nownum){
      ALOGI("INPUT DEVICE DETECTED CHANGED : %i to %i",currnum,nownum);
      // printf("DEV NUM: %i - %i\n",currnum,nownum);
      currnum=nownum;
      qnx_hiddi_disconnect();
      libaroma_sleep(500);
      qnx_hiddi_init();
      qnx_hiddi_connect();
      qnxhid_touchlastev=libaroma_tick();
    }
    else if (qnxhid_touchlastev<libaroma_tick()-8000){
      pthread_mutex_lock(&qnxhid_mutex);
      qnxhid_touchlastev=libaroma_tick();
      qnxhid_touchlastid=QNXHID_EV_TOUCH_UP;
      if (qnxhid_touchlastid>QNXHID_EV_TOUCH_UP){
        QNXHID_EVENT ev;
        ev.id=QNXHID_EV_TOUCH_UP;
        ev.x=qnxhid_touchlast_x;
        ev.y=qnxhid_touchlast_y;
        qnxhid_push_event(&ev);
      }
      pthread_mutex_unlock(&qnxhid_mutex);
      qnx_hiddi_disconnect();
      libaroma_sleep(500);
      qnx_hiddi_init();
      qnx_hiddi_connect();
    }
    libaroma_sleep(1500);
  }
  return NULL;
}

/* init */
byte qnxhid_init(LIBAROMA_HIDP me) {
  if (qnxhid_active){
    ALOGE("qnxhid_init: already active");
    return 0;
  }
  /* set screen size */
  pipe(qnxhid_pipe);
  fcntl(qnxhid_pipe[0], F_SETFL, O_RDONLY|O_SYNC|O_NOCTTY);
  fcntl(qnxhid_pipe[1], F_SETFL, O_WRONLY|O_SYNC|O_NOCTTY);
  
  qnx_hiddi_screen_w = me->screen_width;
  qnx_hiddi_screen_h = me->screen_height;
  
  /* set normal priority */
  // setprio(getpid(),1);
  
  /* init hiddi */
  if (!qnx_hiddi_init()){
    ALOGE("qnxhid_init: qnx_hiddi_init failed");
    close(qnxhid_pipe[0]);
    close(qnxhid_pipe[1]);
    return 0;
  }
  
  /* libaroma */
  me->internal  = NULL;
  me->release   = &qnxhid_release;
  me->getinput  = &qnxhid_getinput;
  me->config    = &__qnx_hiddi_config;
  qnxhid_active = 1;
  
  /* stuck monitoring */
  LIBAROMA_THREAD monitoring_thread;
  libaroma_thread_create(&monitoring_thread,qnxhid_monitoring, NULL);
  
  struct sched_param params;
  params.sched_priority = sched_get_priority_max(SCHED_FIFO);
  pthread_setschedparam(monitoring_thread, SCHED_FIFO, &params);
  
  libaroma_thread_detach(monitoring_thread);
  
  
  
  ALOGI("qnxhid_init: successed");
  return 1;
}

/* driver init */
byte libaroma_hid_driver_init(LIBAROMA_HIDP me) {
  return qnxhid_init(me);
}

/* release */
void qnxhid_release(LIBAROMA_HIDP me) {
  if (me == NULL) {
    return;
  }
  if (qnxhid_active){
    qnx_hiddi_disconnect();
    qnxhid_active=0;
    qnxhid_send_event(QNXHID_EV_TOUCH_EXIT,0,0);
    sleep(1);
    close(qnxhid_pipe[0]);
    close(qnxhid_pipe[1]);
    ALOGI("qnxhid_release: released");
  }
}

/* get input */
byte qnxhid_getinput(LIBAROMA_HIDP me, LIBAROMA_HID_EVENTP dest_ev){
  QNXHID_EVENT ev;
  while(qnxhid_active){
    if (read(qnxhid_pipe[0],&ev,sizeof(QNXHID_EVENT))==sizeof(QNXHID_EVENT)){
      byte retval = 0;
      if (ev.id==QNXHID_EV_TOUCH_EXIT){
        return LIBAROMA_HID_EV_RET_EXIT;
      }
      else if (ev.id==QNXHID_EV_TOUCH_KBD){
        libaroma_window_post_command(
          LIBAROMA_CMD_SET(LIBAROMA_CMD_CLICK, ev.y, ev.x)
        );
      }
      else if (ev.id==QNXHID_EV_TOUCH_RAW_KBD){
        dest_ev->type  = LIBAROMA_HID_EV_TYPE_KEY;
        dest_ev->key   = ev.x;
        dest_ev->x     = ev.x;
        dest_ev->y     = ev.y;
        dest_ev->state = LIBAROMA_HID_EV_STATE_UP;
        ALOGI("RAW KEYBOARD: %i - %i",ev.x,ev.y);
        return LIBAROMA_HID_EV_RET_RAWKEY;
      }
      else if ((ev.id>=QNXHID_EV_TOUCH_UP)&&(ev.id<=QNXHID_EV_TOUCH_MOVE)){
        //printf("EV: %i - %ix%i\n",ev.id,ev.x,ev.y);
        dest_ev->type=LIBAROMA_HID_EV_TYPE_TOUCH;
        dest_ev->key=0;
        dest_ev->state=ev.id-QNXHID_EV_TOUCH_UP;
        dest_ev->x=ev.x;
        dest_ev->y=ev.y;
        return LIBAROMA_HID_EV_RET_TOUCH;
      }
    }
  }
  return LIBAROMA_HID_EV_RET_EXIT;
}

#endif /* __libaroma_qnxnto_hid_driver_c__ */
