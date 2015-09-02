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
 * Filename    : memory_tracking.c
 * Description : libaroma memory leak tracker
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_memory_tracking_c__
#define __libaroma_memory_tracking_c__
#ifdef LIBAROMA_CONFIG_DEBUG_MEMORY
#if LIBAROMA_CONFIG_DEBUG_MEMORY >=1
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef LIBAROMA_MUTEX
#ifdef LIBAROMA_CONFIG_OPENMP
  #include <omp.h>
  #define LIBAROMA_MUTEX omp_nest_lock_t
  #define libaroma_mutex_init(x) omp_init_nest_lock(&x)
  #define libaroma_mutex_free(x) omp_destroy_nest_lock(&x)
  #define libaroma_mutex_lock(x) omp_set_nest_lock(&x)
  #define libaroma_mutex_unlock(x) omp_unset_nest_lock(&x)
#else
  #include <pthread.h>
  #define LIBAROMA_MUTEX pthread_mutex_t
  #define libaroma_mutex_init(x) pthread_mutex_init(&x,NULL)
  #define libaroma_mutex_free(x) pthread_mutex_destroy(&x)
  #define libaroma_mutex_lock(x) pthread_mutex_lock(&x)
  #define libaroma_mutex_unlock(x) pthread_mutex_unlock(&x)
#endif
#endif

/* MEMORY TRACKING STRUCTURE */
typedef struct ___MTRACK_ITEM ___MTRACKI;
typedef struct ___MTRACK_ITEM * ___MTRACKIP;
struct ___MTRACK_ITEM {
  void    *   key;
  size_t      sz;
  char    *   filename;
  long        line;
  ___MTRACKIP next;
};
typedef struct {
  ___MTRACKIP first;
  ___MTRACKIP last;
  size_t      curr_sz;
  size_t      tresshold;
  LIBAROMA_MUTEX mutex;
} ___MTRACK, *___MTRACKP;

/* TRACKING VARIABLE */
___MTRACK ___mtrack = { 0 };

/* mtrack init/free */
void ___mtrack_init_free(int free){
  if (free){
    libaroma_mutex_free(___mtrack.mutex);
  }
  else{
    libaroma_mutex_init(___mtrack.mutex);
  }
}

/*
 * Memory Tracking Data Functions
 *
 */
char ___mtrack_set(void * key, size_t sz, char * filename, long line) {
  /* Find Existing Key */
  ___MTRACKIP item = ___mtrack.first;
  
  while (item != NULL) {
    if (item->key == key) {
      break;
    }
    
    item = item->next;
  }
  
  /* If Exist */
  if (item != NULL) {
    return 0;
  }
  
  /* Set Memory Tresshold */
  ___mtrack.curr_sz += sz;
  
  if (___mtrack.curr_sz > ___mtrack.tresshold) {
    ___mtrack.tresshold = ___mtrack.curr_sz;
  }
  
  /* Allocating New Item */
  item            = malloc(sizeof(___MTRACKI));
  item->key       = key;
  item->sz        = sz;
  item->line      = line;
  item->filename  = malloc(strlen(filename) + 1);
  item->next      = NULL;
  strcpy(item->filename, filename);
  
  /* If array is empty */
  if (___mtrack.first == NULL) {
    ___mtrack.first      = item;
    ___mtrack.last       = item;
  }
  else {
    /* Save in last stack */
    ___mtrack.last->next = item;
    ___mtrack.last       = item;
  }
  
  return 1;
}

/* Delete */
char ___mtrack_del(void * key) {
  /* Fetch Item */
  ___MTRACKIP item = ___mtrack.first;
  ___MTRACKIP prev = NULL;
  
  /* Find Key */
  while (item != NULL) {
    if (item->key == key) {
      if (prev != NULL) {
        prev->next = item->next;
        
        if (item->next == NULL) {
          ___mtrack.last = prev;
        }
      }
      else if (item->next != NULL) {
        ___mtrack.first  = item->next;
      }
      else {
        ___mtrack.first  = NULL;
        ___mtrack.last   = NULL;
      }
      
      /* Set Current Used Size */
      ___mtrack.curr_sz -= item->sz;
      free(item->filename);
      free(item);
      return 1;
    }
    
    prev = item;
    item = item->next;
  }
  
  return 0;
}

/* Get */
___MTRACKIP ___mtrack_get(void * key) {
  /* Fetch Item */
  ___MTRACKIP item = ___mtrack.first;
  
  /* Find Key */
  while (item != NULL) {
    if (item->key == key) {
      return item;
    }
    
    item = item->next;
  }
  
  return NULL;
}

/* Get Memory Size */
long ___mtrack_getsz(void * key) {
  ___MTRACKIP item = ___mtrack_get(key);
  
  if (item) {
    return item->sz;
  }
  
  return 0;
}

/* DUMP IT */
void ___mtrack_dump_leak() {
  printf(  "\n___________________________________________________\n\n");
  printf(    "                 MEMORY LEAK INFO:                 \n");
  printf(    "___________________________________________________\n\n");
  printf(    " Total Leak Size   : %i byte\n", ___mtrack.curr_sz);
  printf(    " Tresshold Usage   : %i byte", ___mtrack.tresshold);
  printf(  "\n___________________________________________________\n\n");
  /* Fetch Item */
  ___MTRACKIP item = ___mtrack.first;
  
  /* Find Key and Dump */
  while (item != NULL) {
    printf("[%08X] %u byte\n  on \"%s\"\n  line %d\n",
           (unsigned int) item->key,
           item->sz,
           item->filename,
           (int) item->line
          );
    item = item->next;
  }
  
  printf("___________________________________________________\n\n");
  /* Free ___mtrack */
  item = ___mtrack.first;
  ___MTRACKIP tmp_item;
  
  while (item != NULL) {
    free(item->filename);
    tmp_item = item;
    item = item->next;
    free(tmp_item);
  }
  
  ___mtrack.first = NULL;
  ___mtrack.last  = NULL;
}

/* HOOK FUNCTIONS */
void * ___mtrack_realloc(void * x, size_t size, char * filename, long line) {
  libaroma_mutex_lock(___mtrack.mutex);
  if (size < 1) {
    printf("MEM-TRACK[W]: realloc zero size on %s line %d\n", filename, (int) line);
  }
  
  if (x != NULL) {
    if (!___mtrack_del(x)) {
      printf("MEM-TRACK[W]: realloc non-allocated address on %s line %d\n", filename, (int) line);
    }
  }
  else {
    printf("MEM-TRACK[W]: realloc null address on %s line %d\n", filename, (int) line);
  }
  
  void * ret = realloc(x, size);
  
  if (!___mtrack_set(ret, size, filename, line)) {
    printf("MEM-TRACK[W]: realloc: allocated used address on %s line %d\n", filename, (int) line);
  }
  
  libaroma_mutex_unlock(___mtrack.mutex);
  return ret;
}

void * ___mtrack_malloc(size_t size, char * filename, long line) {
  libaroma_mutex_lock(___mtrack.mutex);
  
  if (size < 1) {
    printf("MEM-TRACK[W]: malloc zero size on %s line %d\n", filename, (int) line);
  }
  
  void * ret = malloc(size);
  
  if (ret) {
    if (!___mtrack_set(ret, size, filename, line)) {
      printf("MEM-TRACK[W]: malloc: allocated used address on %s line %d\n", filename, (int) line);
    }
  }
  else{
  	printf("MEM-TRACK[W]: malloc: NULL return on %s line %d\n", filename, (int) line);
  }
  
  libaroma_mutex_unlock(___mtrack.mutex);
  return ret;
}

void * ___mtrack_calloc(size_t num, size_t size, char * filename, long line) {
  libaroma_mutex_lock(___mtrack.mutex);
  
  if (size < 1) {
    printf("MEM-TRACK[W]: calloc zero size on %s line %d\n", filename, (int) line);
  }
  
  void * ret = calloc(num,size);
  
  if (ret) {
    if (!___mtrack_set(ret, size*num, filename, line)) {
      printf("MEM-TRACK[W]: calloc: allocated used address on %s line %d\n", filename, (int) line);
    }
  }
  else{
  	printf("MEM-TRACK[W]: calloc: NULL return on %s line %d\n", filename, (int) line);
  }
  
  libaroma_mutex_unlock(___mtrack.mutex);
  return ret;
}

void ___mtrack_free(void ** x, char * filename, long line) {
  libaroma_mutex_lock(___mtrack.mutex);
  
  if (*x != NULL) {
    if (!___mtrack_del(*x)) {
      printf("MEM-TRACK[W]: free non-allocated address on %s line %d\n", filename, (int) line);
    }
    
    free(*x);
    *x = NULL;
  }
  else {
    printf("MEM-TRACK[W]: free null address on %s line %d\n", filename, (int) line);
  }
  
  libaroma_mutex_unlock(___mtrack.mutex);
}

char * ___mtrack_strdup(const char * str, char * filename, long line){
  libaroma_mutex_lock(___mtrack.mutex);
  void * ret = (void *) strdup(str);
  if (ret) {
    if (!___mtrack_set(ret, strlen(ret)+1, filename, line)) {
      printf("MEM-TRACK[W]: strdup: allocated used address on %s line %d\n", 
        filename, (int) line);
    }
  }
  else{
  	printf("MEM-TRACK[W]: strdup: NULL return on %s line %d\n", filename, (int) line);
  }
  libaroma_mutex_unlock(___mtrack.mutex);
  return (char *) ret;
}
#endif /* LIBAROMA_CONFIG_DEBUG_MEMORY >=1 */
#endif /* LIBAROMA_CONFIG_DEBUG_MEMORY */
#endif /* __libaroma_memory_tracking_c__ */
