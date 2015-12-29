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
 * Filename    : system.c
 * Description : system utilities
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 14/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_system_c__
#define __libaroma_system_c__
#include <aroma_internal.h>

/*
 * Function    : libaroma_getprop
 * Return Value: char *
 * Descriptions: get prop from stream
 */
char * libaroma_getprop(
    char * key, LIBAROMA_STREAMP stream, byte freeStream){
  char * buffer=libaroma_stream_to_string(stream,freeStream);
  if (buffer==NULL) {
    return NULL;
  }
  char * result = NULL;
  char *saveptr1;
  char * line = strtok_r(buffer, "\n", &saveptr1);
  do {
    while (*line && isspace(*line)) {
      ++line;
    }
    if (*line == '\0' || *line == '#') {
      continue;
    }
    char * equal = strchr(line, '=');
    if (equal==NULL) {
      goto done;
    }
    char * key_end = equal - 1;
    while (key_end > line && isspace(*key_end)){
      --key_end;
    }
    key_end[1] = '\0';
    if (strcmp(key, line) != 0) {
      continue;
    }
    char * val_start = equal+1;
    while (*val_start && isspace(*val_start)) {
      ++val_start;
    }
    char * val_end = val_start + strlen(val_start) - 1;
    while (val_end > val_start && isspace(*val_end)) {
      --val_end;
    }
    val_end[1] = '\0';
    size_t ln=strlen(val_start)+1;
    result = malloc(ln);
    memcpy(result,val_start,ln);
    /*strdup(val_start);*/
    break;
  }
  while ((line = strtok_r(NULL, "\n", &saveptr1)));
done:
  free(buffer);
  return result;
} /* End of libaroma_getprop */

#endif /* __libaroma_system_c__ */
