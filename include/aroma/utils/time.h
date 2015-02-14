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
 * Filename    : common.h
 * Description : common utility
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_time_h__
#define __libaroma_time_h__

/*
 * Structure   : _LIBAROMA_SLEEPER
 * Typedef     : LIBAROMA_SLEEPER, * LIBAROMA_SLEEPERP
 * Descriptions: High resolution sleep structure
 */
typedef struct _LIBAROMA_SLEEPER LIBAROMA_SLEEPER;
typedef struct _LIBAROMA_SLEEPER * LIBAROMA_SLEEPERP;
struct _LIBAROMA_SLEEPER{
  long start_sec;
  long start_usec;
};

/*
 * Typedef     : LIBAROMA_TIMER_CB
 * Descriptions: timer callback
 */
typedef void (*LIBAROMA_TIMER_CB)(void *);

/*
 * Function    : libaroma_tick
 * Return Value: long
 * Descriptions: system tick in ms
 */
long libaroma_tick();

/*
 * Function    : libaroma_sleeper_start
 * Return Value: byte
 * Descriptions: High resolution sleep start
 */
byte libaroma_sleeper_start(LIBAROMA_SLEEPERP sp);

/*
 * Function    : libaroma_sleeper
 * Return Value: byte
 * Descriptions: High resolution sleep
 */
byte libaroma_sleeper(LIBAROMA_SLEEPERP sp, long delay);

/*
 * Function    : libaroma_sleep
 * Return Value: void
 * Descriptions: sleep in ms
 */
void libaroma_sleep(
    long ms);

/*
 * Function    : libaroma_timer
 * Return Value: int
 * Descriptions: new timer
 */
int libaroma_timer(
    LIBAROMA_TIMER_CB cb,
    voidp param,
    long ms);

/*
 * Function    : libaroma_timer_delete
 * Return Value: byte
 * Descriptions: delete/cancel timer
 */
byte libaroma_timer_delete(
    int id);

#endif /* __libaroma_time_h__ */
