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
 * Filename    : system.h
 * Description : system utilities
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 14/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_system_h__
#define __libaroma_system_h__

/* mutexes */
#ifdef LIBAROMA_CONFIG_OPENMP
  #define LIBAROMA_MUTEX omp_nest_lock_t
  #define libaroma_mutex_init(x) omp_init_nest_lock(&x)
  #define libaroma_mutex_free(x) omp_destroy_nest_lock(&x)
  #define libaroma_mutex_lock(x) omp_set_nest_lock(&x)
  #define libaroma_mutex_unlock(x) omp_unset_nest_lock(&x)
#else
  #define LIBAROMA_MUTEX pthread_mutex_t
  #define libaroma_mutex_init(x) pthread_mutex_init(&x,NULL)
  #define libaroma_mutex_free(x) pthread_mutex_destroy(&x)
  #define libaroma_mutex_lock(x) pthread_mutex_lock(&x)
  #define libaroma_mutex_unlock(x) pthread_mutex_unlock(&x)
#endif


/*
 * Function    : libaroma_getprop
 * Return Value: char *
 * Descriptions: get prop from stream
 */
char * libaroma_getprop(
    char * key, LIBAROMA_STREAMP stream, byte freeStream);

#endif /* __libaroma_system_h__ */
