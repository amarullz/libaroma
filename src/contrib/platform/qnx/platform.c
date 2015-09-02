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
 * Filename    : patform.c
 * Description : linux system specific source
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_platform_c__
#define __libaroma_platform_c__
#include <aroma_internal.h>
#include <sys/stat.h>


/* event & condition */
void libaroma_cond_init(
  LIBAROMA_COND * cond, LIBAROMA_COND_MUTEX * mutex){
  pthread_mutex_init(mutex,NULL);
  pthread_cond_init(cond,NULL);
}
void libaroma_cond_free(
  LIBAROMA_COND * cond, LIBAROMA_COND_MUTEX * mutex){
  pthread_cond_destroy(cond);
  pthread_mutex_destroy(mutex);
}

/* get filesize */
int libaroma_filesize(const char * filename){
  struct stat st;
  if (stat(filename, &st) < 0) {
    return -1;
  }
  return st.st_size;
}

/* get filesize from fd */
int libaroma_filesize_fd(int fd){
  struct stat st;
  if (fstat(fd, &st) < 0) {
    return -1;
  }
  return st.st_size;
}

/* file exists */
byte libaroma_file_exists(const char * filename){
  struct stat st;
  if (stat(filename, &st) < 0) {
    return 0;
  }
  return 1;
}

#endif /* __libaroma_platform_c__ */

