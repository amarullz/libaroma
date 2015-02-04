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
 * Function    : main
 * Return Value: int
 * Descriptions: main executable function
 */
int main(int argc, char **argv){
  /* start libaroma process
   *  + LIBAROMA_START_MUTEPARENT - For android recovery apps
   */
  libaroma_start(0);
  
  /* load font - id=0 */
  libaroma_font(0,
    libaroma_stream(
      "file:///sdcard/DroidSans.ttf"
    )
  );
  
  /* create window */
  LIBAROMA_WINDOWP win = libaroma_window(
    NULL, 0, 0, 0, 0); /* fullscreen */
  
  /* progress bar 
  LIBAROMA_CONTROLP progress = libaroma_ctl_progress(
    win, 1,
    libaroma_dp(20), libaroma_dp(20), libaroma_dp(100), libaroma_dp(6),
    LIBAROMA_CTL_PROGRESS_QUERY,
    100,
    0
  );*/
  
  /* show window */
  libaroma_window_show(win);
  
  /* Input Handler */
  libaroma_msg_start();
  long last_tick=libaroma_tick();
  int curval=0;
  while(1){
    LIBAROMA_MSG msg;
    byte ret=libaroma_msg(&msg);
    if ((ret==LIBAROMA_MSG_KEY_SELECT) && (!msg.state)) {
      printf("---> SELECT/POWER PRESSED - EXIT...\n");
      break;
    }
    printf("Event(%X) %x %x - %ix%i\n",msg.msg, msg.state, msg.key,
      msg.x, msg.y);
  }
  libaroma_msg_stop();
  
  /* free window */
  libaroma_window_free(win);
  
  /* end libaroma process */
  libaroma_end();
  return 0;
} /* End of main */

#endif /* __libaroma_libaroma_test_c__ */
