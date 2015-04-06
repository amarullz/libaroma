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
 * Function    : libaroma_tick
 * Return Value: long
 * Descriptions: system tick in ms
 */
long libaroma_tick();

/*
 * Function    : libaroma_sleep
 * Return Value: void
 * Descriptions: sleep in ms
 */
void libaroma_sleep(
    long ms);

/*
 * Function    : libaroma_usleep
 * Return Value: void
 * Descriptions: usleep
 */
void libaroma_usleep(
    long us);
    
#endif /* __libaroma_time_h__ */
