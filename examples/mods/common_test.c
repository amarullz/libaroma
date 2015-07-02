/*
 * Function    : common_test
 * Return Value: void
 * Descriptions: common libaroma test
 */
void common_test(){
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
    LIBAROMA_CTL_PROGRESS_DETERMINATE|LIBAROMA_CTL_PROGRESS_CIRCULAR,
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
  
  LIBAROMA_CONTROLP list_test = libaroma_ctl_list(
    win, 90, /* win, id */
    0, 300, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL, /* x,y,w,h */
    0, 8, /* horiz, vert padding */
    RGB(ffffff), /* bgcolor */
    LIBAROMA_CTL_SCROLL_WITH_SHADOW|LIBAROMA_CTL_SCROLL_WITH_HANDLE /* flags */
  );
  
  LIBAROMA_CANVASP list_icon =
    libaroma_image_uri("file:///sdcard/ic_settings_data_usage.png");
  char main_text[256];
  char extra_text[256];
  int itm=0;
  for (itm=0;itm<50;itm++){
    snprintf(main_text,256,"Item id#%i",itm);
    word add_flags=0;
    if (itm%3==1){
      add_flags=LIBAROMA_LISTITEM_CHECK_SWITCH;
      snprintf(extra_text,256,
        "Secondary text for list item %i is three line list item text",itm);
    }
    else if (itm%3==2){
      snprintf(extra_text,256,"Secondary text %i",itm);
    }
    libaroma_listitem_check(
      list_test, itm, 0,
      main_text,
      (itm%3!=0)?extra_text:NULL,
      list_icon,
      LIBAROMA_LISTITEM_CHECK_INDENT_NOICON|
      LIBAROMA_LISTITEM_WITH_SEPARATOR|
      LIBAROMA_LISTITEM_CHECK_SHARED_ICON|
      add_flags,
      -1
    );
  }
  

  /* show window */
  /*
    libaroma_window_show(win);
    libaroma_window_anishow(win, LIBAROMA_WINDOW_SHOW_ANIMATION_SLIDE_LEFT, 500);
  */
  libaroma_window_anishow(win, LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_LEFT, 400);
  
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
          if (click_value==0){
            libaroma_png_save(libaroma_fb()->canvas,"/sdcard/libaroma_screenshoot.png");
          }
          
          click_value++;
          char clstr[128];
          snprintf(clstr,128,"Clicked %i",click_value);
          libaroma_ctl_button_text(btn6,clstr);
        }
        else if (id==2){
          snprintf(main_text,256,"New Item id#%i",itm);
          snprintf(extra_text,256,"<u>This</u> is <b>just extra text</b> for item %i NEW!",itm);
          libaroma_listitem_check(
            list_test, itm, 0,
            main_text,
            extra_text,
            list_icon,
            LIBAROMA_LISTITEM_CHECK_INDENT_NOICON|
            LIBAROMA_LISTITEM_CHECK_SHARED_ICON|
            LIBAROMA_LISTITEM_WITH_SEPARATOR,
            -1
          );
          itm++;
        }
        else if (id==4){
          libaroma_ctl_list_del_item_internal(
            list_test,0,0 /* delete first index */
          );
        }
        else if (id==1){
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
          libaroma_ctl_progress_value(progress2,progress_value);
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
          libaroma_ctl_progress_type(progress2,progress_type|LIBAROMA_CTL_PROGRESS_CIRCULAR);
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
} /* End of common_test */

