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

/* include test modules */
#include "mods/bar_test.c"
#include "mods/tab_test.c"
#include "mods/common_test.c"

/*
 * Function    : init_libaroma
 * Return Value: void
 * Descriptions: init libaroma
 */
void init_libaroma(){
  /* set libaroma runtime configuration
    snprintf(libaroma_config()->fb_shm_name,64,"recovery-mainfb");
    libaroma_config()->runtime_monitor = LIBAROMA_START_UNSAFE;
  */
  
  /*snprintf(libaroma_config()->fb_shm_name,64,"");*/
  libaroma_config()->fb_shm_name[0]=0;
  libaroma_start();
  
  /* clean display */
  libaroma_canvas_blank(libaroma_fb()->canvas);
  libaroma_sync();
  
  /* load font - id=0 */
  libaroma_font(0,
    libaroma_stream(
      "file:///sdcard/Roboto-Regular.ttf"
    )
  );
} /* End of init_libaroma */

/*
 * Function    : main
 * Return Value: int
 * Descriptions: main executable function
 */
int main(int argc, char **argv){
  /* For recovery Apps:
    pid_t pp = getppid();
    kill(pp, 19);
  */
  /*libaroma_config()->runtime_monitor = LIBAROMA_START_MUTEPARENT;*/
  
  init_libaroma();
  
  // tab_test();
  
  bar_test();
  
  /* start common test */
  // common_test();
  
  /* end libaroma process */
  libaroma_end();
  /* For recovery apps:
    kill(pp, 18);
  */
  return 0;
} /* End of main */

#endif /* __libaroma_libaroma_test_c__ */
