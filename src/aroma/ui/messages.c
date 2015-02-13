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
 * Filename    : messages.c
 * Description : message queue engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 21/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_messages_c__
#define __libaroma_messages_c__

/*
 * Structure   : _LIBAROMA_MSGQUEUE
 * Typedef     : LIBAROMA_MSGQUEUE, * LIBAROMA_MSGQUEUEP
 * Descriptions: message queue structure
 */
typedef struct _LIBAROMA_MSGQUEUE LIBAROMA_MSGQUEUE;
typedef struct _LIBAROMA_MSGQUEUE * LIBAROMA_MSGQUEUEP;
struct _LIBAROMA_MSGQUEUE{
  LIBAROMA_STACKP input; /* input queue data */
  LIBAROMA_STACKP queue; /* queue data */
  pthread_t input_thread; /* input waiter thread */
};

/*
 * Variable    : _libaroma_msgqueue
 * Type        : LIBAROMA_MSGQUEUEP
 * Descriptions: message queue instance storage
 */
static LIBAROMA_MSGQUEUEP _libaroma_msgqueue=NULL;

/*
 * Variable    : _libaroma_msgqueue_isrun
 * Type        : byte
 * Descriptions: message queue running lock
 */
static byte _libaroma_msgqueue_isrun = 0;

/*
 * Variable    : _libaroma_msgqueue_isrun
 * Type        : pthread_cond_t
 * Descriptions: message queue pthread mutex
 */
static pthread_mutex_t  _libaroma_msgqueue_mutex = PTHREAD_MUTEX_INITIALIZER;

/*
 * Variable    : _libaroma_msgqueue_isrun
 * Type        : pthread_cond_t
 * Descriptions: message queue pthread cond
 */
static pthread_cond_t   _libaroma_msgqueue_cond  = PTHREAD_COND_INITIALIZER;

/*
 * Function    : libaroma_msg_post_hid
 * Return Value: byte
 * Descriptions: post hid event
 */
byte libaroma_msg_post_hid(
  byte    msg,
  byte    state,
  int     key,
  int     x,
  int     y
); /* End of libaroma_msg_post_hid */

/*
 * Function    : _libaroma_msgqueue_hid_thread
 * Return Value: static void *
 * Descriptions: hid thread
 */
static void * _libaroma_msgqueue_hid_thread(
    void * cookie) {
  /* hid loop */
  while (_libaroma_msgqueue_isrun) {
    /* wait for hid event */
    LIBAROMA_HID_EVENT e;
    byte ret = libaroma_hid_get(&e);
    if (_libaroma_msgqueue_isrun == 2) {
      /* process input message */
      switch (e.type) {
        case LIBAROMA_HID_EV_TYPE_TOUCH:
          /* post touch message */
          libaroma_msg_post_hid(
            LIBAROMA_MSG_TOUCH,
            e.state,
            e.key,
            e.x,
            e.y
          );
          break;
        case LIBAROMA_HID_EV_TYPE_KEY:
          /* post key message */
          libaroma_msg_post_hid(
            LIBAROMA_MSG_KEY(ret),
            e.state,
            e.key,
            e.x,
            e.y
          );
          break;
      }
    }
  }
  return NULL;
} /* End of _libaroma_msgqueue_hid_thread */

/*
 * Function    : libaroma_msg_init
 * Return Value: byte
 * Descriptions: init message queue instance
 */
byte libaroma_msg_init() {
  if (_libaroma_msgqueue != NULL) {
    ALOGE("message instance already initialized");
    return 0;
  }
  /* Allocating Instance */
  _libaroma_msgqueue = (LIBAROMA_MSGQUEUEP) malloc(sizeof(LIBAROMA_MSGQUEUE));
  /* Cleanup */
  memset(_libaroma_msgqueue, 0, sizeof(LIBAROMA_MSGQUEUE));
  /* Init Queue Data */
  _libaroma_msgqueue->queue = libaroma_stack(NULL);
  /* Init Input Queue Data */
  _libaroma_msgqueue->input = libaroma_stack(NULL);
  /* Set Message Queue is Valid */
  _libaroma_msgqueue_isrun = 1;
  /* Init Input Thread */
  pthread_create(&_libaroma_msgqueue->input_thread,
    NULL, _libaroma_msgqueue_hid_thread, NULL);

  struct sched_param params;
  params.sched_priority = (sched_get_priority_max(SCHED_FIFO)/2) + 1;
  pthread_setschedparam(_libaroma_msgqueue->input_thread, SCHED_FIFO, &params);
  /* OK */
  return 1;
} /* End of libaroma_msg_init */

/*
 * Function    : libaroma_msg_clean_hid
 * Return Value: void
 * Descriptions: cleanup hid messages
 */
void libaroma_msg_clean_hid() {
  if (_libaroma_msgqueue == NULL) {
    ALOGE("message instance uninitialized");
    return;
  }
  pthread_mutex_lock(&_libaroma_msgqueue_mutex);
  libaroma_stack_free(_libaroma_msgqueue->input);
  _libaroma_msgqueue->input = libaroma_stack(NULL);
  pthread_mutex_unlock(&_libaroma_msgqueue_mutex);
} /* End of libaroma_msg_clean_hid */

/*
 * Function    : libaroma_msg_clean_queue
 * Return Value: void
 * Descriptions: cleanup queue messages
 */
void libaroma_msg_clean_queue() {
  if (_libaroma_msgqueue == NULL) {
    ALOGE("message instance uninitialized");
    return;
  }
  pthread_mutex_lock(&_libaroma_msgqueue_mutex);
  libaroma_stack_free(_libaroma_msgqueue->queue);
  _libaroma_msgqueue->queue = libaroma_stack(NULL);
  pthread_mutex_unlock(&_libaroma_msgqueue_mutex);
} /* End of libaroma_msg_clean_queue */


/*
 * Function    : libaroma_msg_start
 * Return Value: void
 * Descriptions: start receiving messages
 */
void libaroma_msg_start() {
  if (_libaroma_msgqueue_isrun == 1) {
    libaroma_msg_clean_hid();
    libaroma_msg_clean_queue();
    _libaroma_msgqueue_isrun = 2;
  }
} /* End of libaroma_msg_start */

/*
 * Function    : libaroma_msg_stop
 * Return Value: void
 * Descriptions: stop receiving messages
 */
void libaroma_msg_stop() {
  if (_libaroma_msgqueue_isrun == 2) {
    _libaroma_msgqueue_isrun = 1;
    libaroma_msg_clean_hid();
    libaroma_msg_clean_queue();
  }
} /* End of libaroma_msg_stop */

/*
 * Function    : libaroma_msg_release
 * Return Value: void
 * Descriptions: release message queue
 */
void libaroma_msg_release() {
  if (_libaroma_msgqueue == NULL) {
    ALOGE("message instance uninitialized");
    return;
  }
  /* Set Message Queue is not Valid */
  _libaroma_msgqueue_isrun = 0;
  ALOGV("libaroma_msg_release send exit signal");
  pthread_mutex_lock(&_libaroma_msgqueue_mutex);
  pthread_cond_signal(&_libaroma_msgqueue_cond);
  pthread_mutex_unlock(&_libaroma_msgqueue_mutex);
  ALOGV("libaroma_msg_release sending cancel signal");
  pthread_kill(_libaroma_msgqueue->input_thread, 0);
  ALOGV("libaroma_msg_release release queue & hid queue data");
  libaroma_stack_free(_libaroma_msgqueue->input);
  libaroma_stack_free(_libaroma_msgqueue->queue);
  /* Free Instance */
  free(_libaroma_msgqueue);
  _libaroma_msgqueue = NULL;
} /* End of libaroma_msg_release */

/*
 * Function    : libaroma_msg_post
 * Return Value: byte
 * Descriptions: post user message
 */
byte libaroma_msg_post(
  byte    msg,
  byte    state,
  int     key,
  int     x,
  int     y,
  voidp   d
) {
  /* Ignore Non-Start Messages */
  if (_libaroma_msgqueue_isrun != 2) {
    return 0;
  }
  /* set data */
  LIBAROMA_MSG _msg;
  _msg.msg    = msg;
  _msg.state  = state;
  _msg.key    = key;
  _msg.x      = x;
  _msg.y      = y;
  _msg.d      = d;
  _msg.sent   = libaroma_nano_tick();
  /* mutex lock */
  pthread_mutex_lock(&_libaroma_msgqueue_mutex);
  /* push message */
  byte ret = libaroma_stack_push(
    _libaroma_msgqueue->queue,
    &_msg,
    sizeof(LIBAROMA_MSG));
  /* send signal if message was pushed */
  if (ret) {
    pthread_cond_signal(&_libaroma_msgqueue_cond);
  }
  /* mutex unlock */
  pthread_mutex_unlock(&_libaroma_msgqueue_mutex);
  return ret;
} /* End of libaroma_msg_post */

/*
 * Function    : libaroma_msg_post_hid
 * Return Value: byte
 * Descriptions: post hid message
 */
byte libaroma_msg_post_hid(
  byte    msg,
  byte    state,
  int     key,
  int     x,
  int     y
) {
  /* ignore non-start messages */
  if (_libaroma_msgqueue_isrun != 2) {
    return 0;
  }
  /* set data */
  LIBAROMA_MSG _msg;
  _msg.msg    = msg;
  _msg.state  = state;
  _msg.key    = key;
  _msg.x      = x;
  _msg.y      = y;
  _msg.d      = NULL;
  _msg.sent   = libaroma_nano_tick();
  /* mutex lock */
  pthread_mutex_lock(&_libaroma_msgqueue_mutex);
  /* push message */
  byte ret = libaroma_stack_push(
    _libaroma_msgqueue->input, &_msg, sizeof(LIBAROMA_MSG));
  /* send signal if message was pushed */
  if (ret) {
    pthread_cond_signal(&_libaroma_msgqueue_cond);
  }
  /* mutex unlock */
  pthread_mutex_unlock(&_libaroma_msgqueue_mutex);
  /* return status */
  return ret;
} /* End of libaroma_msg_post_hid */

/*
 * Function    : libaroma_msg
 * Return Value: byte
 * Descriptions: get message from queue
 */
byte libaroma_msg(
    LIBAROMA_MSGP msg) {
  /* mutex lock */
  pthread_mutex_lock(&_libaroma_msgqueue_mutex);
  /* wait until data available in queue */
  while ((_libaroma_msgqueue->queue->n + _libaroma_msgqueue->input->n) < 1) {
    /* wait for signal */
    pthread_cond_wait(&_libaroma_msgqueue_cond, &_libaroma_msgqueue_mutex);
    /* if not valid, return it */
    if (!_libaroma_msgqueue_isrun) {
      pthread_mutex_unlock(&_libaroma_msgqueue_mutex);
      return LIBAROMA_MSG_NONE;
    }
  }
  LIBAROMA_STACKP get_stack = _libaroma_msgqueue->input;
  if (_libaroma_msgqueue->queue->n > 0) {
    get_stack = _libaroma_msgqueue->queue;
  }
  byte ret = LIBAROMA_MSG_NONE;
  /* shift stack */
  LIBAROMA_MSGP shift_event =
    (LIBAROMA_MSGP) libaroma_stack_shift(get_stack);
  if (shift_event != NULL) {
    /* copy into destination */
    memcpy(msg, shift_event, sizeof(LIBAROMA_MSG));
    /* set return value as msg item */
    ret = shift_event->msg;
    /* free shifted data */
    free(shift_event);
  }
  /* unlock mutex */
  pthread_mutex_unlock(&_libaroma_msgqueue_mutex);
  return ret;
} /* End of libaroma_msg */



#endif /* __libaroma_messages_c__ */
