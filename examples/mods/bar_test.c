byte dialog_demo(LIBAROMA_WINDOWP parent){
  int res=libaroma_dialog_list(
    "Dialog Demo",
    "OK",
    "CANCEL",
    NULL,
    LIBAROMA_DIALOG_DIM_PARENT|LIBAROMA_DIALOG_WITH_SHADOW|
    LIBAROMA_DIALOG_ACCENT_BUTTON|LIBAROMA_DIALOG_CANCELABLE
  );
  printf("DIALOG RESULT: %i\n",res);
  libaroma_window_anishow(parent,0,0);
}

void bar_test(){
  
  LIBAROMA_WINDOWP win = libaroma_window(
    NULL, 0, 0, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL);
  
  int _y = 0;
  LIBAROMA_CONTROLP bar = libaroma_ctl_bar(
    win, 1,
    0, _y, LIBAROMA_SIZE_FULL, 56,
    "Libaroma Test", RGB(009385), RGB(ffffff)
  );
  
  libaroma_ctl_bar_set_icon_mask(bar,1,1);
  
  _y+=56;
  LIBAROMA_CONTROLP tabs=libaroma_ctl_tabs(
    win, 2,
    0, _y, LIBAROMA_SIZE_FULL, 48,
    RGB(009385), RGB(ffffff), 0, 0
  );
  
  _y+=48;
  LIBAROMA_CONTROLP pager=libaroma_ctl_pager(
    win, 3, 5,
    0, _y, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL
  );
  
  /* set pager & tab text */
  char * tab_texts[5]={ "FIRST TABS", "SECOND TABS", "THIRD TABS", "FOURTH TABS", "FIFTH TABS" };
  libaroma_ctl_tabs_set_texts(tabs,tab_texts,5,0);
  libaroma_ctl_tabs_set_pager(tabs,pager);
  
  /* pager window */
  LIBAROMA_WINDOWP win2 = libaroma_ctl_pager_get_window(pager);
  int pw = libaroma_px(pager->w);
  
  LIBAROMA_CONTROLP button_exit = libaroma_ctl_button(
    win2, 5, pw, 0, pw, 60,
    "Exit Libaroma", LIBAROMA_CTL_BUTTON_COLORED|LIBAROMA_CTL_BUTTON_RAISED,
    RGB(880000)
  );
  
  LIBAROMA_CONTROLP button_style = libaroma_ctl_button(
    win2, 6, pw, 60, pw, 60,
    "Update App Bar", LIBAROMA_CTL_BUTTON_RAISED, 0
  );
  
  LIBAROMA_CONTROLP button_gapstyle = libaroma_ctl_button(
    win2, 7, pw, 120, pw, 60,
    "Change App Bar Text Gap", LIBAROMA_CTL_BUTTON_RAISED, 0
  );
  
  LIBAROMA_CONTROLP button_2 = libaroma_ctl_button(
    win2, 8, pw*2, 0, pw, 60,
    "Second Button", LIBAROMA_CTL_BUTTON_COLORED|LIBAROMA_CTL_BUTTON_RAISED, RGB(008800)
  );
  
  LIBAROMA_CONTROLP buttonx_2 = libaroma_ctl_button(
    win2, 181, pw*2, 60, 72, 72,
    "X", LIBAROMA_CTL_BUTTON_COLORED|LIBAROMA_CTL_BUTTON_RAISED|LIBAROMA_CTL_BUTTON_CIRCLE,
    RGB(44688)
  );
  
  LIBAROMA_CONTROLP buttonx_3 = libaroma_ctl_button(
    win2, 182, pw*2+72, 60, 72, 72,
    "A", LIBAROMA_CTL_BUTTON_COLORED|LIBAROMA_CTL_BUTTON_RAISED|LIBAROMA_CTL_BUTTON_CIRCLE,
    RGB(ffffff)
  );
  
  
  
  LIBAROMA_CONTROLP progress2 = libaroma_ctl_progress(
    win2, 51,
    (pw*3.5)-24, 48, 48, 48,
    LIBAROMA_CTL_PROGRESS_INDETERMINATE|LIBAROMA_CTL_PROGRESS_CIRCULAR,
    100,
    0
  );
  
  /* list */
  LIBAROMA_CONTROLP list = libaroma_ctl_list(
    win2, 77, /* win, id */
    0, 0, pw, LIBAROMA_SIZE_FULL, /* x,y,w,h */
    0, 0 /*8*/, /* horiz, vert padding */
    RGB(ffffff), /* bgcolor */
    LIBAROMA_CTL_SCROLL_WITH_SHADOW
    |LIBAROMA_CTL_SCROLL_WITH_HANDLE
  );
  
  libaroma_listitem_image(
    list,1,
    libaroma_image_uri("file:///sdcard/wall2.jpg"),
    120,
    LIBAROMA_LISTITEM_IMAGE_FREE|LIBAROMA_LISTITEM_WITH_SEPARATOR|
    LIBAROMA_LISTITEM_IMAGE_FILL|LIBAROMA_LISTITEM_IMAGE_PROPORTIONAL|
    LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH,
    -1);
  
  
  LIBAROMA_CANVASP list_icon =
    libaroma_image_uri("file:///sdcard/card.png");
  LIBAROMA_CANVASP list_icon2 =
    libaroma_image_uri("file:///sdcard/gesture.png");
  LIBAROMA_CANVASP list_icon3 =
    libaroma_image_uri("file:///sdcard/inbox.png");
  
  /* fill color */
  libaroma_canvas_fillcolor(list_icon,libaroma_colorget(NULL,NULL)->primary);
  libaroma_canvas_fillcolor(list_icon2,libaroma_colorget(NULL,NULL)->primary);
  libaroma_canvas_fillcolor(list_icon3,libaroma_colorget(NULL,NULL)->primary);
    
  char main_text[256];
  char extra_text[256];
  int itm=0;
  int kdv=0;
  for (itm=0;itm<50;itm++){
    if (itm==10){
      libaroma_listitem_image(
        list,1,
        libaroma_image_uri("file:///sdcard/wall1.jpg"),
        150,
        LIBAROMA_LISTITEM_IMAGE_FREE|LIBAROMA_LISTITEM_WITH_SEPARATOR|
        LIBAROMA_LISTITEM_IMAGE_FILL|LIBAROMA_LISTITEM_IMAGE_PROPORTIONAL|
        LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH|LIBAROMA_LISTITEM_IMAGE_PARALAX,
      -1);
    }
    
    if (itm%6==4){
      libaroma_listitem_divider(
        list, 1, (((kdv++)%2)==0)?LIBAROMA_LISTITEM_DIVIDER_SUBSCREEN:
          LIBAROMA_LISTITEM_SEPARATOR_TEXTALIGN, -1);
    }
    
    if (itm%15==0){
      snprintf(main_text,256,"List Caption %i",itm);
      libaroma_listitem_caption(
        list, 200, main_text, -1);
    }
    
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
    if (itm%5==0){
      libaroma_listitem_check(
        list, itm+10, 0,
        main_text,
        (itm%3!=0)?extra_text:NULL,
        NULL,
        LIBAROMA_LISTITEM_WITH_SEPARATOR|
        LIBAROMA_LISTITEM_CHECK_LEFT_CONTROL|
        add_flags,
        -1
      );
    }
    else{
      libaroma_listitem_check(
        list, itm+10, 0,
        main_text,
        (itm%3!=0)?extra_text:NULL,
        ((itm%3==1)?list_icon:(itm%3==2)?list_icon2:list_icon3),
        LIBAROMA_LISTITEM_CHECK_INDENT_NOICON|
        LIBAROMA_LISTITEM_WITH_SEPARATOR|
        LIBAROMA_LISTITEM_CHECK_SHARED_ICON|
        add_flags,
        -1
      );
    }
  }
  
  /* set bar tools */
  LIBAROMA_CTL_BAR_TOOLSP bar_tools=libaroma_ctl_bar_tools(2);
  libaroma_ctl_bar_tools_set(
    bar_tools, 0, 1, "one", list_icon, LIBAROMA_CTL_BAR_TOOL_ICON_SHARED
  );
  libaroma_ctl_bar_tools_set(
    bar_tools, 1, 3, "two", list_icon, 
    LIBAROMA_CTL_BAR_TOOL_SWITCH|LIBAROMA_CTL_BAR_TOOL_ICON_SHARED
  );
  libaroma_ctl_bar_set_tools(
    bar,bar_tools, 0);
  libaroma_ctl_bar_set_icon(
    bar,NULL,0,LIBAROMA_CTL_BAR_ICON_DRAWER, 1
  );

  
  LIBAROMA_WINDOWP sidebar=libaroma_window_sidebar(win,0);
  if (sidebar){
    printf("SIDEBAR INITIALIZED\n");
    
    /* list */
    LIBAROMA_CONTROLP sblist = libaroma_ctl_list(
      sidebar, 88, /* win, id */
      0, 0, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL, /* x,y,w,h */
      0, 0 /*8*/, /* horiz, vert padding */
      RGB(ffffff), /* bgcolor */
      LIBAROMA_CTL_SCROLL_WITH_SHADOW
    );
    
    libaroma_listitem_image(
      sblist,1,
      libaroma_image_uri("file:///sdcard/wall2.jpg"),
      150,
      LIBAROMA_LISTITEM_IMAGE_FREE|LIBAROMA_LISTITEM_WITH_SEPARATOR|
      LIBAROMA_LISTITEM_IMAGE_FILL|LIBAROMA_LISTITEM_IMAGE_PROPORTIONAL|
      LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH|LIBAROMA_LISTITEM_IMAGE_PARALAX,
    -1);
    int r;
    char xtext[256];
    for (r=0;r<20;r++){
      if (r%5==0){
        snprintf(xtext,256,"SIDEBAR CAPTION %i",itm);
        libaroma_listitem_caption_color(
          sblist, 200, xtext, RGB(888888), -1);
      }
      
      if (r%3==0){
        libaroma_listitem_divider(
          sblist, 1, (((kdv++)%2)==0)?LIBAROMA_LISTITEM_DIVIDER_SUBSCREEN:
            LIBAROMA_LISTITEM_SEPARATOR_TEXTALIGN,
            -1);
      }
    
      snprintf(xtext,256,"Sidebar Menu #%i",r);
      libaroma_listitem_menu(
        sblist, r+100,
        xtext, NULL,
        ((r%3==1)?list_icon:(r%3==2)?list_icon2:list_icon3),
        LIBAROMA_LISTITEM_CHECK_INDENT_NOICON|
        LIBAROMA_LISTITEM_CHECK_SHARED_ICON|
        LIBAROMA_LISTITEM_CHECK_SMALL_ICON|
        0,
        -1
      );
    }
    
  }
  else{
    printf("SIDEBAR FAILED\n");
  }
  /*
  LIBAROMA_CONTROLP buttonsidebar = libaroma_ctl_button(
    sidebar, 88, 0, 0, LIBAROMA_SIZE_FULL, 60,
    "Side Button", LIBAROMA_CTL_BUTTON_COLORED, RGB(008800)
  );
  */
  // libaroma_window_layer_init(win);
  
  libaroma_window_anishow(win, LIBAROMA_WINDOW_SHOW_ANIMATION_PAGE_LEFT, 400);
  
  
  
  
  // libaroma_window_layer_init(win);
  
  
  
  byte gap_wide = 1;
  int change_id=0;
  byte onpool=1;
  do{
    LIBAROMA_MSG msg;
    dword command=libaroma_window_pool(win,&msg);
    byte cmd  = LIBAROMA_CMD(command);
    word id   = LIBAROMA_CMD_ID(command);
    byte param = LIBAROMA_CMD_PARAM(command);
    
    if (msg.msg==LIBAROMA_MSG_KEY_SELECT){
      if (msg.state==0){
        printf("Screenshoot... and exit\n");
        libaroma_png_save(libaroma_fb()->canvas,"/sdcard/libaroma_screenshoot.png");
        onpool = 0;
        break;
      }
    }
    else if (cmd){
      if (cmd==LIBAROMA_CMD_HOLD){
        if (id==button_exit->id){
          printf("Exit Button Pressed...\n");
          onpool = 0;
        }
      }
      else if (cmd==1){
        if (id==1){
          if (param==1){
            /* drawer icon touched */
            printf("Open sidebar %i\n",
              libaroma_window_sidebar_show(sidebar, 1)
            );
          }
        }
        else if (id==8){
          dialog_demo(win);
        }
        else if (id==7){
          libaroma_ctl_bar_set_textgap(bar,gap_wide,1);
          gap_wide=gap_wide?0:1;
        }
        else if (id==6){
          if (change_id==0){
            libaroma_ctl_bar_set_tools(
              bar,NULL, 0);
            libaroma_ctl_bar_set_subtitle(
              bar,
              "an embedded ui toolkit", 0
            );
            libaroma_ctl_bar_set_color(
              bar, RGB(9C27B0), RGB(ffffff), 1
            );
            libaroma_ctl_tabs_set_color(
              tabs,RGB(9C27B0), RGB(ffffff),1);
          }
          else if (change_id==1){
            libaroma_ctl_bar_set_subtitle(
              bar,
              NULL, 0
            );
            libaroma_ctl_bar_set_title(
              bar,
              "Inbox", 1
            );
          }
          else if (change_id==2){
            libaroma_ctl_bar_set_touchable_title(bar,1);
            libaroma_ctl_bar_set_subtitle(
              bar,
              "Title now touchable", 0
            );
            libaroma_ctl_bar_set_color(
              bar, RGB(009385), RGB(ffffff), 0
            );
            libaroma_ctl_tabs_set_color(
              tabs,RGB(009385), RGB(ffffff),1);
            libaroma_ctl_bar_set_icon(
              bar,list_icon,0,0,1
            );
          }
          else if (change_id==3){
            libaroma_ctl_bar_set_tools(
              bar,bar_tools, 1);
          }
          else if (change_id==4){
            libaroma_ctl_bar_set_subtitle(
              bar,
              NULL, 0
            );
            libaroma_ctl_bar_set_menuid(bar,50,1);
          }
          else if (change_id==5){
            libaroma_ctl_bar_tools_set(
              bar_tools, 1, 3, "three", list_icon, 
              LIBAROMA_CTL_BAR_TOOL_SWITCH|LIBAROMA_CTL_BAR_TOOL_ICON_SHARED
            );
            libaroma_ctl_bar_set_icon(
              bar,NULL,0,LIBAROMA_CTL_BAR_ICON_DRAWER,1
            );
          }
          else if ((change_id==6)||(change_id==8)){
            libaroma_ctl_bar_tools_set(
              bar_tools, 1, 3, "three", NULL,
              LIBAROMA_CTL_BAR_TOOL_SWITCH|
              LIBAROMA_CTL_BAR_TOOL_SWITCH_CHECKED
            );
            libaroma_ctl_bar_set_icon(
              bar,NULL,0,LIBAROMA_CTL_BAR_ICON_ARROW,1
            );
          }
          else if (change_id==7){
            libaroma_ctl_bar_set_touchable_title(bar,0);
            libaroma_ctl_bar_tools_set(
              bar_tools, 1, 3, "three", NULL,
              LIBAROMA_CTL_BAR_TOOL_SWITCH
            );
            libaroma_ctl_bar_set_title(
              bar,
              "Libaroma Demo", 0
            );
            libaroma_ctl_bar_set_subtitle(
              bar,
              "an embedded ui toolkit...", 0
            );
            libaroma_ctl_bar_set_icon(
              bar,NULL,0,LIBAROMA_CTL_BAR_ICON_DRAWER,1
            );
          }
          else if (change_id==9){
            libaroma_ctl_bar_tools_set(
              bar_tools, 1, 3, "three", list_icon,
              LIBAROMA_CTL_BAR_TOOL_SWITCH|LIBAROMA_CTL_BAR_TOOL_ICON_SHARED
            );
            libaroma_ctl_bar_set_icon(
              bar,list_icon,0,0,1
            );
            libaroma_ctl_bar_set_color(
              bar, RGB(311B92), RGB(ffffff), 1
            );
            libaroma_ctl_tabs_set_color(
              tabs,RGB(311B92), RGB(ffffff),1);
          }
          else if (change_id==10){
            libaroma_ctl_bar_set_subtitle(
              bar,
              NULL, 0
            );
            libaroma_ctl_bar_set_menuid(bar,0,0);
            libaroma_ctl_bar_set_tools(
              bar,NULL, 0);
            libaroma_ctl_bar_set_title(
              bar,
              "Libaroma Test", 0
            );
            libaroma_ctl_bar_set_icon(
              bar,NULL,0,0,1
            );
            change_id=-1;
          }
          change_id++;
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
  
  libaroma_ctl_bar_tools_free(bar_tools);
  
  libaroma_canvas_free(list_icon);
  libaroma_canvas_free(list_icon2);
  libaroma_canvas_free(list_icon3);
  
  printf("Free Window\n");
  libaroma_window_free(win);
  printf("FREED\n");
}
