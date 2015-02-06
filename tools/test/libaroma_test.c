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
  /* set libaroma runtime configuration */
  /*
    snprintf(libaroma_config()->fb_shm_name,64,"recovery-mainfb");
    libaroma_config()->runtime_monitor = LIBAROMA_START_UNSAFE;
    
  */
  
  /* start libaroma process */
  libaroma_start();
  
  
  /* clean display */
  libaroma_canvas_blank(libaroma_fb()->canvas);
  libaroma_sync();
  
  /* load font - id=0 */
  libaroma_font(0,
    libaroma_stream(
      "file:///sdcard/DroidSans.ttf"
    )
  );
  
  /* create window */
  LIBAROMA_WINDOWP win = libaroma_window(
    NULL, 0, 0, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL); /* fullscreen */
  
  /* progress bar */
  LIBAROMA_CONTROLP progress = libaroma_ctl_progress(
    win, 1,
    0, 20, LIBAROMA_SIZE_FULL, 10,
    LIBAROMA_CTL_PROGRESS_QUERY,
    100,
    0
  );
  
  LIBAROMA_CONTROLP button = libaroma_ctl_button(
    win, 2,
    0, 40, LIBAROMA_SIZE_FULL, 40,
    "Test Button"
  );
  
  /* show window */
  //libaroma_window_show(win);
  /*
    libaroma_window_anishow(win, LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_RIGHT, 1000);
  
  */
  libaroma_window_anishow(win, LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_LEFT, 500);
  
  
  
  
  
  /* Input Handler 
  libaroma_msg_start();
  long last_tick=libaroma_tick();
  int curval=0;
  int curtype=2;
  int curvalue=0;
  while(1){
    LIBAROMA_MSG msg;
    byte ret=libaroma_msg(&msg);
    if ((ret==LIBAROMA_MSG_KEY_SELECT) && (!msg.state)) {
      printf("---> SELECT/POWER PRESSED - EXIT...\n");
      break;
    }
    else if ((ret==LIBAROMA_MSG_KEY_UP)&& (!msg.state)) {
      printf("---> Change Progress Type...\n");
      curtype++;
      if (curtype>2){
        curtype=0;
      }
      libaroma_ctl_progress_type(progress,curtype);
    }
    else if ((ret==LIBAROMA_MSG_KEY_DOWN)&& (!msg.state)) {
      curvalue+=10;
      printf("---> Change Progress value: %i...\n",curvalue);
      if (curvalue>100){
        curvalue=0;
      }
      libaroma_ctl_progress_value(progress,curvalue);
    }
    else{
      printf("Event(%X) %x %x - %ix%i\n",
        msg.msg, msg.state, msg.key, msg.x, msg.y);
    }
  }
  libaroma_msg_stop();
  */
  
  byte onpool=1;
  do{
    LIBAROMA_MSG msg;
    dword command=libaroma_window_pool(win,&msg);
    if (msg.msg==LIBAROMA_MSG_KEY_SELECT){
      onpool = 0;
    }
    else if (LIBAROMA_CMD(command)){
      printf("Window Command = (CMD: %x, ID: %x, Param: %x)\n",
        LIBAROMA_CMD(command),
        LIBAROMA_CMD_ID(command),
        LIBAROMA_CMD_PARAM(command)
      );
    }
  }
  while(onpool);
  
  /* free window */
  libaroma_window_free(win);
  
  /* end libaroma process */
  libaroma_end();
  return 0;
} /* End of main */

#endif /* __libaroma_libaroma_test_c__ */
