void tab_test(){
  
  LIBAROMA_WINDOWP win = libaroma_window(
    NULL, 0, 0, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL);
  
  
  /* progress bar */
  LIBAROMA_CONTROLP progress = libaroma_ctl_progress(
    win, 50,
    0, 20, LIBAROMA_SIZE_FULL, 10,
    LIBAROMA_CTL_PROGRESS_INDETERMINATE,
    100,
    0
  );
  
  LIBAROMA_CONTROLP pager=libaroma_ctl_pager(
    win,
    1, 10,
    0,88, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL
  );
  
  LIBAROMA_WINDOWP win2 = libaroma_ctl_pager_get_window(pager);
  /*
  LIBAROMA_CONTROLP tabs=libaroma_ctl_tabs(
    win,
    111,
    0, 40, LIBAROMA_SIZE_FULL, 48,
    RGB(009385),
    RGB(ffffff),
    0, 0
  );
  libaroma_ctl_tabs_set_pager(tabs,pager);
  char * tab_texts[10]={
    "THIS IS FIRST PAGE",
    "THIS SECOND",
    "THIRD",
    "THIS IS 4TH PAGE",
    "FIVE TABS",
    "SIX TABS",
    "SEVEN TABS",
    "TABS NO 8",
    "TABS 9",
    "LAST TABS"
  };
  libaroma_ctl_tabs_set_texts(
    tabs,tab_texts,10,0);
  */
  int pw = libaroma_px(pager->w);
  LIBAROMA_CONTROLP btn6 = libaroma_ctl_button(
    win2, 5,
    pw, 20, pw, 60,
    "Exit",
    LIBAROMA_CTL_BUTTON_RAISED|LIBAROMA_CTL_BUTTON_COLORED,
    RGB(ffcccc)
  );
  
  LIBAROMA_CONTROLP btn4 = libaroma_ctl_button(
    win2, 7,
    pw*2, 20, pw, 60,
    "Second",
    LIBAROMA_CTL_BUTTON_RAISED|LIBAROMA_CTL_BUTTON_COLORED,
    RGB(ffcccc)
  );
  
  LIBAROMA_CONTROLP progress2 = libaroma_ctl_progress(
    win2, 51,
    pw+20, 80, 48, 48,
    LIBAROMA_CTL_PROGRESS_INDETERMINATE|LIBAROMA_CTL_PROGRESS_CIRCULAR,
    100,
    0
  );
  
  LIBAROMA_CONTROLP btn5 = libaroma_ctl_button(
    win2, 8,
    pw*3, 20, pw, 60,
    "Third",
    LIBAROMA_CTL_BUTTON_RAISED|LIBAROMA_CTL_BUTTON_COLORED,
    RGB(ffcccc)
  );
  
  LIBAROMA_CONTROLP list_test = libaroma_ctl_list(
    win2, 90, /* win, id */
    0, 0, pw, LIBAROMA_SIZE_FULL, /* x,y,w,h */
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
  
  libaroma_window_anishow(win, LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_LEFT, 400);
  
  byte onpool=1;
  do{
    LIBAROMA_MSG msg;
    dword command=libaroma_window_pool(win,&msg);
    byte cmd  = LIBAROMA_CMD(command);
    word id   = LIBAROMA_CMD_ID(command);
    /*
    byte param= LIBAROMA_CMD_PARAM(command);
    */
    if (cmd){
      if (cmd==LIBAROMA_CMD_HOLD){
        if (id==btn6->id){
          printf("Exit Button Pressed...\n");
          onpool = 0;
        }
      }
      
      printf("Window Command = (CMD: %i, ID: %i, Param: %i)\n",
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
  libaroma_window_free(win);
}
