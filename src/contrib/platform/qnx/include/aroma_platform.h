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
 * Filename    : aroma_platform.h
 * Description : qnx platform headers
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_platform_h__
#define __libaroma_platform_h__

#include <pthread.h>    /* pthread_ */
#include <signal.h>     /* pthread_kill */
#include <time.h>       /* clock_gettime */
#include <sys/param.h>  /* MIN,MAX */
#include <sys/mman.h>   /* mmap, munmap */
#include <unistd.h>     /* open, close, unlink, usleep */
#include <fcntl.h>

/* non double free mem */
static void inline ___free_ori(void * mem){
  if (mem){
    free(mem);
  }
}
static void * ___malloc_ori(size_t sz){
  void * ret=NULL;
  do{
    ret=malloc(sz);
    if (!ret){
      usleep(10);
    }
  }while(!ret);
  return ret;
}
static void * ___calloc_ori(size_t sz, size_t cnt){
  void * ret=NULL;
  do{
    ret=calloc(sz,cnt);
    if (!ret){
      usleep(10);
    }
  }while(!ret);
  return ret;
}
static void * ___realloc_ori(void * addr,size_t sz){
  void * ret=NULL;
  do{
    ret=realloc(addr,sz);
    if (!ret){
      usleep(10);
    }
  }while(!ret);
  return ret;
}
// #define free(x) ___free_ori(x); x=NULL;
#define free ___free_ori
#define malloc ___malloc_ori
#define calloc ___calloc_ori
#define realloc ___realloc_ori

#ifndef LIBAROMA_CONFIG_TEXT_GLOBAL_LOCK
	#define LIBAROMA_CONFIG_TEXT_GLOBAL_LOCK 1
#endif
#ifndef LIBAROMA_CONFIG_TEXT_NOHARFBUZZ
	#define LIBAROMA_CONFIG_TEXT_NOHARFBUZZ		1
#endif

/* x86 - sse */
#include "contrib/x86_sse/x86_sse.h"


#if defined(__QNXNTO__)
  #ifndef __ISQNX__
    #define __ISQNX__ 1
  #endif
#endif /* defined(__QNXNTO__) */

#ifdef __ISQNX__
  #ifndef LIBAROMA_CONFIG_OS
    #define LIBAROMA_CONFIG_OS "qnx/nto"
  #endif /* LIBAROMA_CONFIG_OS */
  
  #ifdef LIBAROMA_CONFIG_SHMEM_PREFIX
    #undef LIBAROMA_CONFIG_SHMEM_PREFIX
  #endif
  #define LIBAROMA_CONFIG_SHMEM_PREFIX "/.libaromashm-"
#endif /* __ISQNX__ */


/*
 * platform flags
 */
#define LIBAROMA_PLATFORM_HAS_SHMEM  1
#define LIBAROMA_PLATFORM_HAS_MMAP   1
#define LIBAROMA_PLATFORM_HAS_FD     1

/*
 * common platform wrapper
 */
#define libaroma_unlink(filename) unlink(filename)
#define libaroma_sleep(ms) usleep(ms*1000)

/*
 * get tick count
 */
static inline long libaroma_tick(){
  struct timespec now;
  if (clock_gettime(CLOCK_MONOTONIC, &now)) {
    return 0;
  }
  return ((long) (now.tv_sec * 1000 + now.tv_nsec / 1000000));
}

/*
 * MUTEX - NEED MULTICORE THREAD SAFE
 */
#ifdef LIBAROMA_CONFIG_OPENMP
  #include <omp.h>
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
 * THREADS
 */
typedef pthread_t LIBAROMA_THREAD;
#define libaroma_thread_create(th,cb,cookie) \
  pthread_create(th,NULL,cb,cookie)
/* recommended */
#define libaroma_thread_join(th) pthread_join(th,NULL)
/* optional */
#define libaroma_thread_detach(th) pthread_detach(th)
#define libaroma_thread_kill(th) pthread_kill(th,0)
static inline void libaroma_thread_set_hiprio(LIBAROMA_THREAD t){
	/*
  struct sched_param params;
  params.sched_priority = sched_get_priority_max(SCHED_FIFO);
  pthread_setschedparam(t, SCHED_FIFO, &params);
  */
}

/*
 * CONDITION & MUTEX CONDITION - NOT NEED MULTICORE THREADSAFE
 */
#define LIBAROMA_COND_MUTEX pthread_mutex_t
#define LIBAROMA_COND pthread_cond_t
// #define libaroma_cond_wait(c,m) pthread_cond_wait(c,m)
#define libaroma_cond_signal(c) pthread_cond_signal(c)
#define libaroma_cond_lock(m) pthread_mutex_lock(m)
#define libaroma_cond_unlock(m) pthread_mutex_unlock(m)
void libaroma_cond_init(LIBAROMA_COND * cond, LIBAROMA_COND_MUTEX * mutex);
void libaroma_cond_free(LIBAROMA_COND * cond, LIBAROMA_COND_MUTEX * mutex);

/* NO STUCK */
static inline int __qnx_libaroma_cond_wait(pthread_cond_t* cond,pthread_mutex_t* mutex){
  struct timespec to;
  clock_gettime(CLOCK_MONOTONIC, &to);
  to.tv_sec+=5;
  return pthread_cond_timedwait(cond,mutex,&to);
}
#define libaroma_cond_wait(c,m) __qnx_libaroma_cond_wait(c,m)


/*
 * File Management
 */
int libaroma_filesize(const char * filename);
int libaroma_filesize_fd(int fd);
byte libaroma_file_exists(const char * filename);


#endif /* __libaroma_platform_h__ */

