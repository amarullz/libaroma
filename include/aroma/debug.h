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
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_debug_h__
#define __libaroma_debug_h__

/* Memory Tracking */
#ifdef LIBAROMA_CONFIG_DEBUG_MEMORY
#define ___MEMTRACK_FILE() __FILE__
#define ___MEMTRACK_LINE() __LINE__
void ___mtrack_dump_leak();
void * ___mtrack_realloc(void * x, size_t size, char * filename, long line);
void * ___mtrack_malloc(size_t size, char * filename, long line);
void ___mtrack_free(void ** x, char * filename, long line);
#define malloc(x) \
  ___mtrack_malloc (x, ___MEMTRACK_FILE(),___MEMTRACK_LINE())
#define realloc(x,s) \
  ___mtrack_realloc(x,s, ___MEMTRACK_FILE(),___MEMTRACK_LINE())
#define free(x) \
  ___mtrack_free((void **) &x, ___MEMTRACK_FILE(),___MEMTRACK_LINE())
#endif /* LIBAROMA_CONFIG_DEBUG_MEMORY */

/* Debugging Tag */
#ifndef LIBAROMA_DEBUG_TAG
#define LIBAROMA_DEBUG_TAG "AROMA"
#endif

/* Debugging Tag 2 */
#if LIBAROMA_CONFIG_DEBUG_FILE >=1
#if LIBAROMA_CONFIG_DEBUG_FILE >=2
#define LIBAROMA_STRINGZE2(x) #x
#define LIBAROMA_STRINGZE(x) LIBAROMA_STRINGZE2(x)
#define __LINE_STRING__ LIBAROMA_STRINGZE(__LINE__)
#define LIBAROMA_DEBUG_TAG2 \
  LIBAROMA_DEBUG_TAG " on " __FILE__ " line " __LINE_STRING__ "\n    "
#else
#define LIBAROMA_DEBUG_TAG2 \
  LIBAROMA_DEBUG_TAG " on " __FILE__ "\n    "
#endif
#else
#define LIBAROMA_DEBUG_TAG2 \
  LIBAROMA_DEBUG_TAG
#endif

/* Error Logs */
#if LIBAROMA_CONFIG_DEBUG >= 1
#define ALOGE(...) \
  fprintf(stdout, LIBAROMA_DEBUG_TAG2 "[E] " __VA_ARGS__); \
  fprintf(stdout, "\n");
#else
#define ALOGE(...)
#endif

/* Warning Logs */
#if LIBAROMA_CONFIG_DEBUG >= 2
#define ALOGW(...) fprintf(stdout, LIBAROMA_DEBUG_TAG2 "[W] " __VA_ARGS__); \
  fprintf(stdout, "\n");
#else
#define ALOGW(...)
#endif

/* Process/Info Logs */
#if LIBAROMA_CONFIG_DEBUG >= 3
#define ALOGI(...) fprintf(stdout, LIBAROMA_DEBUG_TAG "[I] " __VA_ARGS__); \
  fprintf(stdout, "\n");
#else
#define ALOGI(...)
#endif

/* Important String Information Logs */
#if LIBAROMA_CONFIG_DEBUG >= 4
#define ALOGS(...) fprintf(stdout, LIBAROMA_DEBUG_TAG "[S] " __VA_ARGS__); \
  fprintf(stdout, "\n");
#else
#define ALOGS(...)
#endif

/* Verbose Logs */
#if LIBAROMA_CONFIG_DEBUG >= 5
#define ALOGV(...) fprintf(stdout, LIBAROMA_DEBUG_TAG "[V] " __VA_ARGS__); \
  fprintf(stdout, "\n");
#else
#define ALOGV(...)
#endif

/* Event Logs */
#if LIBAROMA_CONFIG_DEBUG >= 6
#define ALOGT(...) fprintf(stdout, LIBAROMA_DEBUG_TAG "[T] " __VA_ARGS__); \
  fprintf(stdout, "\n");
#else
#define ALOGT(...)
#endif

/* Event Logs */
#if LIBAROMA_CONFIG_DEBUG >= 7
#define ALOGRT(...) fprintf(stdout, LIBAROMA_DEBUG_TAG "[R] " __VA_ARGS__); \
  fprintf(stdout, "\n");
#else
#define ALOGRT(...)
#endif

#endif /* __libaroma_debug_h__ */
