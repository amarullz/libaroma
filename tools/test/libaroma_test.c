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
 * Filename    : libaroma_test.c
 * Description : libaroma test file
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 04/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_libaroma_test_c__
#define __libaroma_libaroma_test_c__

/* libaroma header */
#include <aroma.h>

/*
 * Structure   : _LIBAROMA_TEST
 * Typedef     : LIBAROMA_TEST, * LIBAROMA_TESTP
 * Descriptions: libaroma test structure
 */
typedef struct _LIBAROMA_TEST LIBAROMA_TEST;
typedef struct _LIBAROMA_TEST * LIBAROMA_TESTP;
struct _LIBAROMA_TEST{
  char * zip_path;
  FILE * pipe;
  LIBAROMA_ZIP zip;
};

/*
 * Variable    : _libaroma_test
 * Type        : LIBAROMA_TEST
 * Descriptions: struct holder
 */
static LIBAROMA_TEST _libaroma_test;

/*
 * Macro       : RECOVERY_API
 * Descriptions: recovery communication
 */
#define RECOVERY_API(...) fprintf(_libaroma_test.pipe, __VA_ARGS__);

/*
 * Function    : main
 * Return Value: int
 * Descriptions: main executable function
 */
int main(int argc, char **argv){
  /* check arguments */
  if (argc != 4) {
    ALOGE("unexpected number of arguments (%d)\n", argc);
    return 1;
  }
  
  /* open pipe */
  _libaroma_test.pipe = fdopen(atoi(argv[2]),"wb");
  setlinebuf(_libaroma_test.pipe);
  
  /* set zip path */
  _libaroma_test.zip_path = argv[3];
  
  RECOVERY_API("ui_print\n");
  RECOVERY_API("ui_print libaroma_test\n");
  RECOVERY_API("ui_print\n");
  RECOVERY_API("ui_print %s\n",
    libaroma_info(LIBAROMA_INFO_SIGNATURE));
  RECOVERY_API("ui_print\n");
  RECOVERY_API("ui_print\n");
  
  /* open zip */
  _libaroma_test.zip = libaroma_zip(_libaroma_test.zip_path);
  if (!_libaroma_test.zip){
    ALOGE("cannot open zip file '%s'",_libaroma_test.zip_path);
    return 3;
  }
  
  /* start libaroma process
   *  + LIBAROMA_START_MUTEPARENT - For android recovery apps
   */
  libaroma_start(LIBAROMA_START_MUTEPARENT);
  
  /* load font - id=0 */
  libaroma_font(0,
    libaroma_stream_mzip(
      _libaroma_test.zip,
      "/assets/DroidSans.ttf"
    )
  );
  
  /* create window */
  LIBAROMA_WINDOWP win = libaroma_window(
    NULL, 0, 0, 0, 0); /* fullscreen */
  
  /* progress bar */
  LIBAROMA_CONTROLP progress = libaroma_ctl_progress(
    win, 1,
    libaroma_dp(20), libaroma_dp(20), libaroma_dp(100), libaroma_dp(6),
    LIBAROMA_CTL_PROGRESS_QUERY,
    100,
    0
  );
  
  /* show window */
  libaroma_window_show(win);
  
  /* wait for 5 seconds */
  sleep(5);
  
  /* free window */
  libaroma_window_free(win);
  
  /* end libaroma process */
  libaroma_end();
  return 0;
} /* End of main */

#endif /* __libaroma_libaroma_test_c__ */
