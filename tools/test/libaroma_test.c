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
// #include <omp.h>

    
void arrow_test(){
  int z;
  float spinSpeed = 200.0;
  float barSpinCycleTime = 600;
  float timeStartGrowing = 0;
  byte barGrowingFromFront = 1;
  float barExtraLength = 0;
  float mProgress = 0.0;
  int barMaxLength = 270;
  int barLength = 16;
  long lastTimeAnimated = libaroma_tick();
  
  for (z=0;z<500;z++){
    long now = libaroma_tick();
    long deltaTime = now - lastTimeAnimated;
    if (deltaTime==0){
      usleep(16);
      continue;
    }
    lastTimeAnimated = now;
    float deltaNormalized = deltaTime * spinSpeed / 1000.0f;
    
    
    timeStartGrowing += deltaTime;
    if (timeStartGrowing > barSpinCycleTime) {
        timeStartGrowing -= barSpinCycleTime;
        barGrowingFromFront = !barGrowingFromFront;
    }

    float distance = (float)
      cos((timeStartGrowing/barSpinCycleTime+1)*__PI)/2.0+0.5;
    float destLength = (barMaxLength - barLength);
    if (barGrowingFromFront) {
        barExtraLength = distance * destLength;
    } else {
        float newLength = destLength * (1 - distance);
        mProgress += (barExtraLength - newLength);
        barExtraLength = newLength;
    }
    
    mProgress += deltaNormalized;
    if (mProgress>360) {
        mProgress -= 360;
    }
    float from = mProgress - 90;
    float length = barLength + barExtraLength;
    printf("Draw: %f %f\n",from,length);
    libaroma_draw_rect(
      libaroma_fb()->canvas,
      200,200,400,400,0,0xff);
    libaroma_draw_arc(
        libaroma_fb()->canvas,
        300, 300,
        80, 80, 20,
        from, from+length,
        RGB(ffffff),0xff,0,0.5
      );
    libaroma_sync();
  }
  
  /*
  int z;
  float spinSpeed = 200.0;
  float barSpinCycleTime = 600;
  float timeStartGrowing = 0;
  byte barGrowingFromFront = 1;
  float barExtraLength = 0;
  float mProgress = 0.0;
  int barMaxLength = 270;
  int barLength = 16;
  long lastTimeAnimated = libaroma_tick();
  
  for (z=0;z<500;z++){
    long now = libaroma_tick();
    long deltaTime = now - lastTimeAnimated;
    if (deltaTime==0){
      usleep(16);
      continue;
    }
    lastTimeAnimated = now;
    float deltaNormalized = deltaTime * spinSpeed / 1000.0f;
    
    
    timeStartGrowing += deltaTime;
    if (timeStartGrowing > barSpinCycleTime) {
        timeStartGrowing -= barSpinCycleTime;
        barGrowingFromFront = !barGrowingFromFront;
    }

    float distance = (float)
      cos((timeStartGrowing/barSpinCycleTime+1)*__PI)/2.0+0.5;
    float destLength = (barMaxLength - barLength);
    if (barGrowingFromFront) {
        barExtraLength = distance * destLength;
    } else {
        float newLength = destLength * (1 - distance);
        mProgress += (barExtraLength - newLength);
        barExtraLength = newLength;
    }
    
    mProgress += deltaNormalized;
    if (mProgress>360) {
        mProgress -= 360;
    }
    float from = mProgress - 90;
    float length = barLength + barExtraLength;

    libaroma_draw_rect(
      libaroma_fb()->canvas,
      200,200,400,400,0,0xff);
    libaroma_draw_arc(
        libaroma_fb()->canvas,
        300, 300,
        80, 80, 20,
        from, from+length,
        RGB(ffffff),0xff,0,0.5
      );
    libaroma_sync();
  }
  */
    /*
    long start=libaroma_tick();
    do{
      float state = libaroma_control_state(start, 1000);
      if (state>1){
        state=1;
      }
      float deg = state * 360.0;
      
      if (state==1){
        break;
      }
    }while(1);
    
    for (i=0;i<=360;i++){
      libaroma_canvas_blank(libaroma_fb()->canvas);
      libaroma_draw_arc(
        libaroma_fb()->canvas,
        300, 300,
        100, 100, 10,
        0, i,
        RGB(ffffff),0xff,0,0.25
      );
      libaroma_sync();
    }
    */
  
  /*
  libaroma_canvas_blank(libaroma_fb()->canvas);
    libaroma_draw_arc(
      libaroma_fb()->canvas,
      300, 300,
      100, 100, 10,
      -90, 270,
      RGB(ffffff),0xff,0,0.25
    );
    libaroma_sync();
  libaroma_png_save(libaroma_fb()->canvas,"/sdcard/libaroma_screenshoot1.png");
  sleep(2);
  */
  
  /*
  int i,z;
  for (z=0;z<11;z++){
    for (i=0;i<50;i++){
      float t = (((float) i)/49.0);
      libaroma_canvas_blank(libaroma_fb()->canvas);
      libaroma_art_arrowdrawer(
        libaroma_fb()->canvas, t, z%2,
        300, 300, libaroma_dp(24), RGB(ffffff), 0xff,0,0.25
      );
      
      libaroma_art_arrowdrawer(
        libaroma_fb()->canvas, t, z%2,
        300, 600, 24, RGB(ffffff), 0xff,0,0.25
      );
      
      libaroma_sync();
    }
    usleep(300000);
  }
  libaroma_png_save(libaroma_fb()->canvas,"/sdcard/libaroma_screenshoot1.png");
  */
}



/*
 * Function    : main
 * Return Value: int
 * Descriptions: main executable function
 */
int main(int argc, char **argv){
  /*
  char *s = "hello world";
    *s = 'H';
   */
   
  /* set libaroma runtime configuration */
  /*
    snprintf(libaroma_config()->fb_shm_name,64,"recovery-mainfb");
    libaroma_config()->runtime_monitor = LIBAROMA_START_UNSAFE;
    
  */
  
  /* disable shared memory main canvas */
  //snprintf(libaroma_config()->fb_shm_name,64,"");
  
  // libaroma_config()->runtime_monitor = 2;
  pid_t pp = getppid();
  kill(pp, 19);
  
  snprintf(libaroma_config()->fb_shm_name,64,"");
  /* start libaroma process */
  libaroma_start();
  
  // libaroma_fb()->dpi=320;
  
/*
#ifdef LIBAROMA_CONFIG_OPENMP
  printf("Testing OpenMP\n");
  int resp=0;
#pragma omp parallel
  {
    printf("Hello, world.\n");
    resp++;
  }
  printf("Result Value: %i\n",resp);
#endif
*/

  /* clean display */
  libaroma_canvas_blank(libaroma_fb()->canvas);
  
  //arrow_test();
  
  libaroma_sync();
  
  /* 674 - 677 == 128bit: 6327ms vs 256bit: 2162ms - 1471 */
  /* speed test setcolor: 
  long now=libaroma_tick();
  int ii,nn;
  for (nn=0;nn<10;nn++){
    for (ii=0;ii<255;ii++){
      libaroma_canvas_setcolor(libaroma_fb()->canvas,
        libaroma_rgb(ii,ii,ii),
        0);
    }
  }
  printf("\n\nTIME WORKS: %i\n\n",(int)(libaroma_tick()-now));
  libaroma_sync();
  */
  // asm neon: 1375, 1352
  // android memcpy: 1582
  // c neon: 1376
  
  /*libaroma_png_save(libaroma_fb()->canvas,"/sdcard/out.png");*/
  
  
  /* load font - id=0 */
  libaroma_font(0,
    libaroma_stream(
      "file:///sdcard/Roboto-Regular.ttf"
    )
  );
  
  /* create window */
  LIBAROMA_WINDOWP win = libaroma_window(
    NULL, 0, 0, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL); /* fullscreen */
  
  /* progress bar */
  LIBAROMA_CONTROLP progress = libaroma_ctl_progress(
    win, 50,
    0, 20, LIBAROMA_SIZE_FULL, 10,
    LIBAROMA_CTL_PROGRESS_DETERMINATE,
    100,
    0
  );
  
  
  LIBAROMA_CONTROLP btn1 = libaroma_ctl_button(
    win, 1,
    0, 60, LIBAROMA_SIZE_HALF, 60,
    "Toggle Disable",
    LIBAROMA_CTL_BUTTON_FLAT,
    0
  );
  
  LIBAROMA_CONTROLP btn2 = libaroma_ctl_button(
    win, 2,
    LIBAROMA_POS_HALF, 60, LIBAROMA_SIZE_HALF, 60,
    "Add List Item",
    LIBAROMA_CTL_BUTTON_RAISED,
    0
  );
  
  LIBAROMA_CONTROLP btn3 = libaroma_ctl_button(
    win, 3,
    0, 120, LIBAROMA_SIZE_HALF, 60,
    "Change Style",
    LIBAROMA_CTL_BUTTON_COLORED,
    RGB(ffffff)
  );
  
  LIBAROMA_CONTROLP btn4 = libaroma_ctl_button(
    win, 4,
    LIBAROMA_POS_HALF, 120, LIBAROMA_SIZE_HALF, 60,
    "Delete List Item",
    LIBAROMA_CTL_BUTTON_RAISED|LIBAROMA_CTL_BUTTON_COLORED,
    RGB(335599)
  );
  
  LIBAROMA_CONTROLP btn5 = libaroma_ctl_button(
    win, 5,
    0, 180, LIBAROMA_SIZE_HALF, 60,
    "Tap & Hold",
    LIBAROMA_CTL_BUTTON_COLORED,
    RGB(118822)
  );
  
  LIBAROMA_CONTROLP btn6 = libaroma_ctl_button(
    win, 6,
    LIBAROMA_POS_HALF, 180, LIBAROMA_SIZE_HALF, 60,
    "Screenshoot",
    LIBAROMA_CTL_BUTTON_RAISED|LIBAROMA_CTL_BUTTON_COLORED,
    RGB(ffcccc)
  );
  
  LIBAROMA_CONTROLP progress2 = libaroma_ctl_progress(
    win, 51,
    0, 246, LIBAROMA_SIZE_HALF, 48,
    LIBAROMA_CTL_PROGRESS_INDETERMINATE|LIBAROMA_CTL_PROGRESS_CIRCULAR,
    100,
    0
  );
  
  LIBAROMA_CONTROLP btn_exit = libaroma_ctl_button(
    win, 7,
    LIBAROMA_POS_HALF, 240, LIBAROMA_SIZE_HALF, 60,
    "<b>Tap & Hold</b> to Exit",
    LIBAROMA_CTL_BUTTON_RAISED|LIBAROMA_CTL_BUTTON_COLORED,
    RGB(F44336)
  );
  /*
  LIBAROMA_CONTROLP scroll_test = libaroma_ctl_testscroll(
    win, 90,
    0, 300, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL,
    RGB(ffffff), LIBAROMA_CTL_SCROLL_WITH_SHADOW|LIBAROMA_CTL_SCROLL_WITH_HANDLE
  );
  
 */ 
  
  
  LIBAROMA_CONTROLP list_test = libaroma_ctl_list(
    win, 90, /* win, id */
    0, 300, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL, /* x,y,w,h */
    0, 8, /* horiz, vert padding */
    RGB(ffffff), /* bgcolor */
    LIBAROMA_CTL_SCROLL_WITH_SHADOW|LIBAROMA_CTL_SCROLL_WITH_HANDLE /* flags */
  );
  
  LIBAROMA_CANVASP list_icon = libaroma_image_uri("file:///sdcard/ic_settings_data_usage.png");
  char main_text[256];
  char extra_text[256];
  int itm=0;
  for (itm=0;itm<250;itm++){
    snprintf(main_text,256,"Item id#%i",itm);
    byte add_flags=0;
    if (itm%3==1){
      add_flags=LIBAROMA_LISTITEM_OPTION_SWITCH;
      snprintf(extra_text,256,"Secondary text for list item %i is three line list item text",itm);
    }
    else if (itm%3==2){
      snprintf(extra_text,256,"Secondary text %i",itm);
    }
    libaroma_listitem_option(
      list_test, itm, 0,
      main_text,
      (itm%3!=0)?extra_text:NULL,
      list_icon,
      LIBAROMA_LISTITEM_OPTION_INDENT_NOICON|
      LIBAROMA_LISTITEM_WITH_SEPARATOR|
      LIBAROMA_LISTITEM_OPTION_SHARED_ICON|
      add_flags,
      -1
    );
  }
  
  
  

  /* show window */
  //libaroma_window_show(win);
  libaroma_window_anishow(win, LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_LEFT, 400);
  
  // libaroma_window_anishow(win, LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_LEFT, 500);
  
  
  
  
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
  
  byte btn3state=0;
  byte progress_type =LIBAROMA_CTL_PROGRESS_DETERMINATE;
  int  progress_value=0;
  
  byte onpool=1;
  int click_value=0;
  do{
    LIBAROMA_MSG msg;
    dword command=libaroma_window_pool(win,&msg);
    byte cmd  = LIBAROMA_CMD(command);
    word id   = LIBAROMA_CMD_ID(command);
    byte param= LIBAROMA_CMD_PARAM(command);
    
    if (cmd){
      
      if (cmd==LIBAROMA_CMD_CLICK){
        if (id==6){
          // LINUXFBDR_setrgbpos(libaroma_fb(), 16, 8, 0);
          
          // libaroma_ctl_button_text(btn6,"<img=file:///sdcard/plus.png;24dp;24dp>Click");
          if (click_value==0){
            libaroma_png_save(libaroma_fb()->canvas,"/sdcard/libaroma_screenshoot.png");
          }
          
          click_value++;
          char clstr[128];
          snprintf(clstr,128,"Clicked %i",click_value);
          libaroma_ctl_button_text(btn6,clstr);
        }
        else if (id==2){
          // LINUXFBDR_setrgbpos(libaroma_fb(), 0, 8, 16);
          snprintf(main_text,256,"New Item id#%i",itm);
          snprintf(extra_text,256,"<u>This</u> is <b>just extra text</b> for item %i NEW!",itm);
          libaroma_listitem_option(
            list_test, itm, 0,
            main_text,
            extra_text,
            list_icon,
            LIBAROMA_LISTITEM_OPTION_INDENT_NOICON|
            LIBAROMA_LISTITEM_OPTION_SHARED_ICON|
            LIBAROMA_LISTITEM_WITH_SEPARATOR,
            -1
          );
          itm++;
        }
        else if (id==4){
          // LINUXFBDR_setrgbpos(libaroma_fb(), 24, 16, 8);
          
          libaroma_ctl_list_del_item_internal(
            list_test,0,0 /* delete first index */
          );
        }
        else if (id==1){
          // LINUXFBDR_setrgbpos(libaroma_fb(), 8, 16, 24);
          
          if (libaroma_ctl_button_is_disabled(btn2)){
            libaroma_ctl_button_disable(btn2,0);
            libaroma_ctl_button_disable(btn4,0);
          }
          else{
            libaroma_ctl_button_disable(btn2,1);
            libaroma_ctl_button_disable(btn4,1);
          }
        }
        else if (id==3){
          btn3state++;
          if (btn3state>3){
            btn3state=0;
          }
          if (btn3state==0){
            libaroma_ctl_button_style(
              btn3,LIBAROMA_CTL_BUTTON_COLORED,RGB(ffffff)
            );
          }
          else if (btn3state==1){
            libaroma_ctl_button_style(
              btn3,
              LIBAROMA_CTL_BUTTON_COLORED|LIBAROMA_CTL_BUTTON_RAISED,
              RGB(9C27B0)
            );
          }
          else if (btn3state==2){
            libaroma_ctl_button_style(
              btn3,
              LIBAROMA_CTL_BUTTON_COLORED,
              RGB(FF5722)
            );
          }
          else if (btn3state==3){
            libaroma_ctl_button_style(
              btn3,
              LIBAROMA_CTL_BUTTON_RAISED,
              RGB(FF5722)
            );
          }
        }
        else if (id==5){
          progress_value+=10;
          if (progress_value>100){
            progress_value=0;
          }
          printf("---> Change Progress value: %i...\n",progress_value);
          libaroma_ctl_progress_value(progress,progress_value);
        }
      }
      else if (cmd==LIBAROMA_CMD_HOLD){
        if (id==5){
          progress_type++;
          if (progress_type>2){
            progress_type=0;
          }
          printf("---> Change Progress Type: %i\n",progress_type);
          libaroma_ctl_progress_type(progress,progress_type);
        }
        else if (id==6){
          click_value++;
          char clstr[128];
          snprintf(clstr,128,"<u>Holded</u> (%i)",click_value);
          libaroma_ctl_button_text(btn6,clstr);
        }
        else if (id==btn_exit->id){
          printf("Exit Button Pressed...\n");
          onpool = 0;
        }
      }
      
      printf("Window Command = (CMD: %x, ID: %x, Param: %x)\n",
        LIBAROMA_CMD(command),
        LIBAROMA_CMD_ID(command),
        LIBAROMA_CMD_PARAM(command)
      );
    }
  }
  while(onpool);
  
  if (list_icon){
    libaroma_canvas_free(list_icon);
  }
  
  /* free window */
  libaroma_window_free(win);
  
  /* end libaroma process */
  libaroma_end();
  
  kill(pp, 18);
  return 0;
} /* End of main */

#endif /* __libaroma_libaroma_test_c__ */
