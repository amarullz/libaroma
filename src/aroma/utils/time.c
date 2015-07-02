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
#ifndef __libaroma_time_c__
#define __libaroma_time_c__
#include <aroma_internal.h>

/*
 * Variable    : _libaroma_timer_active
 * Type        : byte
 * Descriptions: timer running flag
 */
static byte _libaroma_timer_active=0;

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

/* alias libaroma_tick for public */
long libaroma_extern_tick(){
  return libaroma_tick();
}
/* alias libaroma_sleep for public */
void libaroma_extern_sleep(long n){
  libaroma_sleep(n);
}

#endif /* __libaroma_time_c__ */
