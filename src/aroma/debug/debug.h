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
 * Filename    : debug.h
 * Description : debug header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_debug_h__
#define __libaroma_debug_h__

/* Memory Tracking */
#ifdef LIBAROMA_CONFIG_DEBUG_MEMORY
#if LIBAROMA_CONFIG_DEBUG_MEMORY >=1

#define ___MEMTRACK_FILE() __FILE__
#define ___MEMTRACK_LINE() __LINE__
void ___mtrack_init_free(int free);
void ___mtrack_dump_leak();
void * ___mtrack_realloc(void * x, size_t size, char * filename, long line);
void * ___mtrack_malloc(size_t size, char * filename, long line);
void * ___mtrack_calloc(size_t num, size_t size, char * filename, long line);
void ___mtrack_free(void ** x, char * filename, long line);
char * ___mtrack_strdup(const char * str, char * filename, long line);

#define malloc(x) \
  ___mtrack_malloc (x, ___MEMTRACK_FILE(),___MEMTRACK_LINE())
#define calloc(x,s) \
  ___mtrack_calloc (x, s, ___MEMTRACK_FILE(),___MEMTRACK_LINE())
#define realloc(x,s) \
  ___mtrack_realloc(x,s, ___MEMTRACK_FILE(),___MEMTRACK_LINE())
#define free(x) \
  ___mtrack_free((void **) &x, ___MEMTRACK_FILE(),___MEMTRACK_LINE())

#ifdef strdup
#undef strdup
#endif
#define strdup(x) \
  ___mtrack_strdup(x, ___MEMTRACK_FILE(),___MEMTRACK_LINE())

#endif /* LIBAROMA_CONFIG_DEBUG_MEMORY >=1 */
#endif /* LIBAROMA_CONFIG_DEBUG_MEMORY */

/* Debugging Tag */
#ifndef LIBAROMA_DEBUG_TAG
#define LIBAROMA_DEBUG_TAG "LIBAROMA"
#endif

/*
 * Function    : libaroma_debug_output
 * Return Value: FILE *
 * Descriptions: get debug output fd
 */
FILE * libaroma_debug_output();

/*
 * Function    : libaroma_debug_tag
 * Return Value: char *
 * Descriptions: get debug tag
 */
char * libaroma_debug_tag();

/* debug source */
#if LIBAROMA_CONFIG_DEBUG_FILE >=1
#if LIBAROMA_CONFIG_DEBUG_FILE >=2
#define LIBAROMA_STRINGZE2(x) #x
#define LIBAROMA_STRINGZE(x) LIBAROMA_STRINGZE2(x)
#define __LINE_STRING__ LIBAROMA_STRINGZE(__LINE__)
#define LIBAROMA_DEBUG_SOURCE \
  " ==> on " __FILE__ " line " __LINE_STRING__ "\n    "
#else
#define LIBAROMA_DEBUG_SOURCE \
  " ==> on " __FILE__ "\n    "
#endif
#else
#define LIBAROMA_DEBUG_SOURCE ""
#endif

/* Error Logs */
#if LIBAROMA_CONFIG_DEBUG >= 1
#define ALOGE(...) \
  fprintf(libaroma_debug_output(), "E/%s: ",libaroma_debug_tag()); \
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "%s\n",LIBAROMA_DEBUG_SOURCE);
#else
#define ALOGE(...)
#endif

/* Process/Info Logs */
#if LIBAROMA_CONFIG_DEBUG >= 2
#define ALOGI(...) \
  fprintf(libaroma_debug_output(), "I/%s: ",libaroma_debug_tag()); \
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "\n");
#define ALOGI_IF(x, ...) if(x){ ALOGI(__VA_ARGS__) }
#else
#define ALOGI(...)
#define ALOGI_IF(x, ...)
#endif

/* Important String Information Logs */
#if LIBAROMA_CONFIG_DEBUG >= 3
#define ALOGS(...) \
  fprintf(libaroma_debug_output(), "N/%s: ",libaroma_debug_tag()); \
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "\n");
#define ALOGS_IF(x, ...) if(x){ ALOGS(__VA_ARGS__) }
#else
#define ALOGS(...)
#define ALOGS_IF(x, ...)
#endif
#define ALOGN ALOGS
#define ALOGN_IF ALOGS_IF

/* Warning Logs */
#if LIBAROMA_CONFIG_DEBUG >= 4
#define ALOGW(...) \
  fprintf(libaroma_debug_output(), "W/%s: ",libaroma_debug_tag()); \
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "%s\n",LIBAROMA_DEBUG_SOURCE);
#define ALOGW_IF(x, ...) if(x){ ALOGW(__VA_ARGS__) }
#else
#define ALOGW(...)
#define ALOGW_IF(x, ...)
#endif

/* Verbose Logs */
#if LIBAROMA_CONFIG_DEBUG >= 5
#define ALOGV(...) \
  fprintf(libaroma_debug_output(), "D/%s: ",libaroma_debug_tag()); \
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "\n");
#define ALOGV_IF(x, ...) if(x){ ALOGV(__VA_ARGS__) }
#else
#define ALOGV(...)
#define ALOGV_IF(x, ...)
#endif

#define ALOGD ALOGV
#define ALOGD_IF ALOGV_IF

/* Event Logs */
#if LIBAROMA_CONFIG_DEBUG >= 6
#define ALOGT(...) \
  fprintf(libaroma_debug_output(), "V/%s: ",libaroma_debug_tag()); \
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "\n");
#define ALOGT_IF(x, ...) if(x){ ALOGT(__VA_ARGS__) }
#else
#define ALOGT(...)
#define ALOGT_IF(x, ...)
#endif

/* Event Logs */
#if LIBAROMA_CONFIG_DEBUG >= 7
#define ALOGRT(...) \
  fprintf(libaroma_debug_output(), "V/%s: ",libaroma_debug_tag()); \
  fprintf(libaroma_debug_output(), __VA_ARGS__); \
  fprintf(libaroma_debug_output(), "\n");
#define ALOGRT_IF(x, ...) if(x){ ALOGRT(__VA_ARGS__) }
#else
#define ALOGRT(...)
#define ALOGRT_IF(x, ...)
#endif

#endif /* __libaroma_debug_h__ */
