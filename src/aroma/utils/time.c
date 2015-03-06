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
 * Filename    : common.c
 * Description : common utility
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_time_c__
#define __libaroma_time_c__

/*
 * Structure   : _LIBAROMA_TIMER_DATA
 * Typedef     : LIBAROMA_TIMER_DATA, * LIBAROMA_TIMER_DATAP
 * Descriptions: timer data structure
 */
typedef struct _LIBAROMA_TIMER_DATA LIBAROMA_TIMER_DATA;
typedef struct _LIBAROMA_TIMER_DATA * LIBAROMA_TIMER_DATAP;
struct _LIBAROMA_TIMER_DATA{
  LIBAROMA_TIMER_CB callback;
  voidp param;
  long ms;
};

/*
 * Variable    : _libaroma_timer_active
 * Type        : byte
 * Descriptions: timer running flag
 */
static byte _libaroma_timer_active=0;

/*
 * Function    : libaroma_tick
 * Return Value: long
 * Descriptions: system tick in ms
 */
long libaroma_tick() {
  struct timespec now;
  if (clock_gettime(CLOCK_MONOTONIC, &now)) {
    return 0;
  }
  return ((long) (now.tv_sec * 1000 + now.tv_nsec / 1000000));
} /* End of libaroma_tick */

/*
 * Function    : libaroma_sleeper_start
 * Return Value: byte
 * Descriptions: High resolution sleep start
 */
byte libaroma_sleeper_start(LIBAROMA_SLEEPERP sp){
  gettimeofday(sp,NULL);
  return 1;
} /* End of libaroma_sleeper_start */

/*
 * Function    : libaroma_sleeper
 * Return Value: byte
 * Descriptions: High resolution sleep
 */
byte libaroma_sleeper(LIBAROMA_SLEEPERP start, long delay){
  LIBAROMA_SLEEPER end;
  long elapsed;
  gettimeofday(&end, NULL);
  elapsed =(end.tv_sec-start->tv_sec)*1000000;
  elapsed+=(end.tv_usec-start->tv_usec);
  if (elapsed<delay){
    usleep(delay-elapsed);
  }/*
  else{
    usleep(elapsed-delay);
  }*/
  return 1;
} /* End of libaroma_sleeper */

/*
 * Function    : libaroma_sleep
 * Return Value: void
 * Descriptions: sleep in ms
 */
void libaroma_sleep(
    long ms){
  usleep(ms*1000);
}

/*
 * Function    : _libaroma_timer_thread
 * Return Value: static void *
 * Descriptions: pthread handler for timer
 */
static void * _libaroma_timer_thread(
    void * cookie) {
  LIBAROMA_TIMER_DATA dat;
  memcpy(&dat, cookie, sizeof(LIBAROMA_TIMER_DATA));
  free(cookie);
  if (_libaroma_timer_active) {
    libaroma_sleep(dat.ms);
    if (_libaroma_timer_active) {
      dat.callback(dat.param);
    }
  }
  return NULL;
} /* End of _libaroma_timer_thread */

/*
 * Function    : libaroma_timer_init
 * Return Value: byte
 * Descriptions: init timer handler
 */
byte libaroma_timer_init() {
  _libaroma_timer_active = 1;
  return 1;
} /* End of libaroma_timer_init */

/*
 * Function    : libaroma_timer_release
 * Return Value: byte
 * Descriptions: release timer handler
 */
byte libaroma_timer_release() {
  _libaroma_timer_active = 0;
  return 1;
} /* End of libaroma_timer_release */

/*
 * Function    : libaroma_timer
 * Return Value: int
 * Descriptions: new timer
 */
int libaroma_timer(
    LIBAROMA_TIMER_CB cb,
    voidp param,
    long ms) {
  pthread_t thrd;
  LIBAROMA_TIMER_DATAP dat =
      (LIBAROMA_TIMER_DATAP) malloc(sizeof(LIBAROMA_TIMER_DATA));
  dat->callback = cb;
  dat->param = param;
  dat->ms = ms;
  pthread_create(&thrd, NULL, _libaroma_timer_thread, dat);
  return (int) thrd;
} /* End of libaroma_timer */

/*
 * Function    : libaroma_timer_delete
 * Return Value: byte
 * Descriptions: delete/cancel timer
 */
byte libaroma_timer_delete(
    int id) {
  pthread_kill((pthread_t) id, 0);
  return 1;
} /* End of libaroma_timer_delete */

#endif /* __libaroma_time_c__ */
