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
 * Filename    : fallback.h
 * Description : fallback headers
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_fallback_h__
#define __libaroma_fallback_h__

/* pthread */
#ifndef LIBAROMA_CONFIG_NO_PTHREAD
  #include <pthread.h>
#else
  /* non pthread callback here... */
#endif

/* linux specific headers */
#ifndef LIBAROMA_CONFIG_NO_SYSLINUX
  #include <sys/mman.h>
  #include <sys/param.h>
  #include <sys/stat.h>
  #include <signal.h>
  #include <fcntl.h>
  #include <unistd.h>
#else
  /* must have fallback function:
      unlink
      usleep
  */
#endif

/* min & max */
#ifndef MIN
  #define MIN(a,b) (((a)<(b))?(a):(b))
#endif
#ifndef MAX
  #define MAX(a,b) (((a)>(b))?(a):(b))
#endif

/* shmem prefix */
#ifndef LIBAROMA_CONFIG_SHMEM_PREFIX
  #define LIBAROMA_CONFIG_SHMEM_PREFIX "/libaromashm-"
#endif

/* 32bit color */
#if LIBAROMA_CONFIG_HICOLOR_BIT > 0
  #define LIBAROMA_CONFIG_USE_HICOLOR_BIT
#endif

/* mutexes */
#ifndef LIBAROMA_MUTEX
  #define LIBAROMA_MUTEX pthread_mutex_t
  #define libaroma_mutex_init(x) pthread_mutex_init(&x,NULL)
  #define libaroma_mutex_free(x) pthread_mutex_destroy(&x)
  #define libaroma_mutex_lock(x) pthread_mutex_lock(&x)
  #define libaroma_mutex_unlock(x) pthread_mutex_unlock(&x)
#endif

#endif /* __libaroma_fallback_h__ */

