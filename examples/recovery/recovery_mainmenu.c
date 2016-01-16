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
 * Filename    : recovery_mainmenu.c
 * Description : recovery mainmenu mockup
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_recovery_mainmenu_c__
#define __libaroma_recovery_mainmenu_c__

/* include recovery header */
#include <recovery.h>
#include <string.h>

/* control id */
#define ID_APPBAR_POWER         4
#define ID_MENULIST             5
#define ID_MENU_INSTALL         100
#define ID_MENU_BACKUP          101
#define ID_MENU_WIPE            102
#define ID_MENU_USB             103
#define ID_MENU_FILEMANAGER     104
#define ID_MENU_TERMINAL        105
#define ID_MENU_MORE_TOOLS      106
#define ID_MENU_LOGGING         107
#define ID_MENU_PARTITION       108

typedef struct{
  LIBAROMA_CTL_BAR_TOOLSP tools;
  LIBAROMA_CONTROLP       menu;
} MAINMENU;

void recovery_mainmenu_reset_appbar(LIBAROMA_WINDOWP win, MAINMENU * var){
  /* set appbar icon */
  libaroma_ctl_bar_set_icon(
    recovery()->appbar,NULL,0,LIBAROMA_CTL_BAR_ICON_DRAWER, 0
  );
  libaroma_ctl_bar_set_title(
    recovery()->appbar, "Main Menu", 0
  );
  libaroma_ctl_bar_set_subtitle(
    recovery()->appbar, NULL, 0
  );
  libaroma_ctl_bar_set_tools(
    recovery()->appbar,var->tools,0
  );
  libaroma_ctl_bar_update(recovery()->appbar);
}

int libaroma_dialog_list(
  const char * title,
  const char * button1,
  const char * button2,
  LIBAROMA_COLORSETP colorset,
  byte flags);
  
/* test open dialog */
byte recovery_open_dialog(LIBAROMA_WINDOWP parent){
  // libaroma_sleep(700);
  recovery_statusbar_setcolor(libaroma_alpha(libaroma_colorget(NULL,parent)->primary,0,
    0x70));
    /*
  libaroma_dialog_confirm(
    "Unpatched Boot",
    "Do you want to boot without any ramdisk patching?",
    "OK",
    "CANCEL",
    NULL,
    LIBAROMA_DIALOG_DIM_PARENT|LIBAROMA_DIALOG_WITH_SHADOW|
    LIBAROMA_DIALOG_ACCENT_BUTTON|LIBAROMA_DIALOG_CANCELABLE
  );*/
  
  libaroma_dialog_list(
    "Unpatched Boot",
    "OK",
    "CANCEL",
    NULL,
    LIBAROMA_DIALOG_DIM_PARENT|LIBAROMA_DIALOG_WITH_SHADOW|
    LIBAROMA_DIALOG_ACCENT_BUTTON|LIBAROMA_DIALOG_CANCELABLE
  );
  
  libaroma_window_anishow(parent,0,0);
  recovery_statusbar_setcolor(libaroma_colorget(NULL,parent)->primary);
}

/* event loop */
byte recovery_mainmenu_pool(LIBAROMA_WINDOWP win, MAINMENU * var){
  byte onpool=1;
  LIBAROMA_MSG msg;
  dword command;
  byte cmd;
  word id;
  byte param;
  
  do{
    command=libaroma_window_pool(recovery()->win,&msg);
    
    cmd = LIBAROMA_CMD(command);
    id = LIBAROMA_CMD_ID(command);
    param = LIBAROMA_CMD_PARAM(command);
    
    if (msg.msg==LIBAROMA_MSG_KEY_SELECT){
      if (msg.state==0){
        RLOG("SCREENSHOOT AND EXIT");
        libaroma_png_save(
          libaroma_fb()->canvas,
          "/sdcard/recovery_ss.png"
        );
        onpool = 0;
        break;
      }
    }
    else if (cmd==LIBAROMA_CMD_HOLD){
      printf("--- HOLD : %i - %i\n",id,param);
    }
    else if (cmd==LIBAROMA_CMD_CLICK){
      if (id==ID_MENULIST){
        if (msg.key==ID_MENU_USB){
          LIBAROMA_RECT rect={0};
          libaroma_ctl_list_item_position(
            var->menu,
            (LIBAROMA_CTL_LIST_ITEMP) msg.d,
            &rect,
            0
          );
          recovery_usb(ID_MAINMENU_FRAGMENT,&rect);
          recovery_mainmenu_reset_appbar(win,var);
        }
        else if (msg.key==ID_MENU_INSTALL){
          recovery_open_dialog(recovery()->win);
        }
        else{
          /*
          printf("ITEM POSITION: \n");
          libaroma_ctl_list_item_position(
            var->menu,
            (LIBAROMA_CTL_LIST_ITEMP) msg.d
          );
          */
        }
      }
      else if (id==ID_APPBAR){
        printf("--- APPBAR: p:%i, k:%i, y:%i\n",param,msg.key,msg.y);
      }
      else{
        printf("--- CLICK: %i - %i\n",id,param);
      }
    }
  }
  while(onpool);
}

/* init controls */
byte recovery_mainmenu_init(LIBAROMA_WINDOWP win, MAINMENU * var){
  /* create menu list */
  var->menu = libaroma_ctl_list(
    win, ID_MENULIST,
    0, 0, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL,
    0, 0,
    libaroma_colorget(NULL,win)->control_bg,
    LIBAROMA_CTL_SCROLL_WITH_SHADOW
  );
  
  /* menu flags */
  word menuflags =
    LIBAROMA_LISTITEM_MENU_INDENT_NOICON|
    LIBAROMA_LISTITEM_MENU_SMALL_ICON|
    LIBAROMA_LISTITEM_MENU_FREE_ICON|
    LIBAROMA_LISTITEM_WITH_SEPARATOR|
    LIBAROMA_LISTITEM_SEPARATOR_TEXTALIGN;
  word menuflagsb =
    LIBAROMA_LISTITEM_MENU_INDENT_NOICON|
    LIBAROMA_LISTITEM_MENU_FREE_ICON|
    LIBAROMA_LISTITEM_WITH_SEPARATOR|
    LIBAROMA_LISTITEM_SEPARATOR_TEXTALIGN;
    
  /* menu item macro */
  #define _ITEM(id,text,ico,extra) \
    libaroma_listitem_menu(\
      var->menu, id, text, extra, (ico!=NULL)?recovery_load_icon(ico,win):NULL, \
      menuflags,-1)
  #define _ITEMB(id,text,ico,extra) \
    libaroma_listitem_menu(\
      var->menu, id, text, extra, (ico!=NULL)?recovery_load_icon(ico,win):NULL, \
      menuflagsb,-1)
  #define _TITLE(id,text) \
    libaroma_listitem_caption_color(var->menu, id, text, \
      libaroma_colorget(NULL,win)->accent, -1)
  #define _DIV(id) \
    libaroma_listitem_divider(var->menu, id, \
      LIBAROMA_LISTITEM_DIVIDER_SUBSCREEN,-1)
  
  
  LIBAROMA_CANVASP cphoto=libaroma_image_uri("file:///data/system/users/0/photo.png");
  if (cphoto){
    LIBAROMA_CANVASP dcphoto=libaroma_canvas(
      libaroma_fb()->w, libaroma_dp(320)
    );
    libaroma_canvas_setcolor(dcphoto,RGB(333333),0xff);
    LIBAROMA_CANVASP bgside=libaroma_image_uri("file:///sdcard/wall1.jpg");
    if (bgside){
      libaroma_draw_scale_smooth(
        dcphoto, bgside,
        0,0,dcphoto->w, dcphoto->h,
        0, 0, bgside->w, bgside->h
      );
      libaroma_canvas_free(bgside);
    }
    
    libaroma_draw_scale_smooth(
      dcphoto, cphoto,
      libaroma_dp(16),libaroma_dp(56),libaroma_dp(72), libaroma_dp(72), 
      0, 0, cphoto->w, cphoto->h
    );
    
    
    char * namexml=libaroma_stream_to_string(libaroma_stream("file:///data/system/users/0.xml"),1);
    if (namexml){
      char * nametag=libaroma_stristr(namexml, "<name>", strlen(namexml))+6;
      if (nametag){
        char * nexttag=libaroma_stristr(nametag,"</name>",strlen(nametag));
        if (nexttag){
          nexttag[0]=0;
          char myname[256];
          snprintf(myname,256,"Hi %s\n<size=4>Welcome to Recovery",nametag);
          libaroma_draw_text_ex(
            dcphoto,
            myname,
            libaroma_dp(96),
            libaroma_dp(74),
            RGB(ffffff),
            dcphoto->w-libaroma_dp(104),
            LIBAROMA_FONT(0,5)|
            LIBAROMA_TEXT_LEFT|
            LIBAROMA_TEXT_FIXED_INDENT|
            LIBAROMA_TEXT_FIXED_COLOR|
            LIBAROMA_TEXT_NOHR,
            100, 1, 2, 0, 0x80, libaroma_dp(1), libaroma_dp(1)
          );
        }
      }
      free(namexml);
    }
    libaroma_canvas_free(cphoto);
    libaroma_listitem_image(
      var->menu, 400,
      dcphoto,
      140,
      LIBAROMA_LISTITEM_IMAGE_FREE|LIBAROMA_LISTITEM_WITH_SEPARATOR|
      LIBAROMA_LISTITEM_IMAGE_FILL|LIBAROMA_LISTITEM_IMAGE_PROPORTIONAL|
      LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH|LIBAROMA_LISTITEM_IMAGE_PARALAX,
    -1);
  }
  
  /* ITEMS */
  _TITLE(200,"ROM & SYSTEM");
    _ITEM(ID_MENU_INSTALL,"Install ROM","install",NULL);
    _ITEM(ID_MENU_BACKUP,"Backup and Restore","restore",NULL);
    _ITEM(ID_MENU_WIPE,"Wipe","wipe",NULL);
    _ITEM(ID_MENU_USB,"USB Mode","usb","MTP");
  _DIV(300);
  _TITLE(201,"TOOLS");
    _ITEM(ID_MENU_FILEMANAGER,"File Manager","folder",NULL);
    _ITEM(ID_MENU_TERMINAL,"Terminal","terminal",NULL);
    _ITEM(ID_MENU_MORE_TOOLS,"More...",NULL,NULL);
  _DIV(301);
  _TITLE(202,"ADVANCE");
    _ITEM(ID_MENU_LOGGING,"Logging","logs",NULL);
    _ITEM(ID_MENU_PARTITION,"Partition Manager","partition",NULL);
  
  
    libaroma_listitem_image(
      var->menu, 400,
      libaroma_image_uri("file:///sdcard/23.svg"),
      250,
      LIBAROMA_LISTITEM_IMAGE_FREE|LIBAROMA_LISTITEM_WITH_SEPARATOR|
      LIBAROMA_LISTITEM_IMAGE_FILL|LIBAROMA_LISTITEM_IMAGE_PROPORTIONAL|
      LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH|LIBAROMA_LISTITEM_IMAGE_PARALAX,
    -1);
  
  _TITLE(202,"SVG ITEMS");
    _ITEMB(500,"Loyalty","ic_loyalty_48px.svg","ic_loyalty_48px.svg");
    _ITEMB(501,"Motorcycle","ic_motorcycle_48px.svg","ic_motorcycle_48px.svg");
    _ITEMB(502,"ic_note_add_48px.svg","ic_note_add_48px.svg","ic_note_add_48px.svg");
    _ITEMB(503,"ic_opacity_48px.svg","ic_opacity_48px.svg","ic_opacity_48px.svg");
    _ITEMB(504,"ic_open_in_browser_48px.svg","ic_open_with_48px.svg","ic_open_with_48px.svg");
  
  /*
  LIBAROMA_CANVASP cphoto=libaroma_image_uri("file:///data/system/users/0/photo.png");
  if (!cphoto){
    cphoto=libaroma_image_uri("res:///bg/sidebar.jpg");
  }
  
  char * namexml=libaroma_stream_to_string(libaroma_stream("file:///data/system/users/0.xml"),1);
  if (namexml){
    char * nametag=libaroma_stristr(namexml, "<name>", strlen(namexml))+6;
    if (nametag){
      char * nexttag=libaroma_stristr(nametag,"</name>",strlen(nametag));
      if (nexttag){
        nexttag[0]=0;
        char myname[256];
        snprintf(myname,256,"Hi %s",nametag);
        _ITEM(399,myname,"android","To AROMA Recovery MockUp");
      }
    }
    free(namexml);
  }
  
  if (cphoto){
    libaroma_listitem_image(
      var->menu, 400,
      cphoto,
      150,
      LIBAROMA_LISTITEM_IMAGE_FREE|LIBAROMA_LISTITEM_WITH_SEPARATOR|
      LIBAROMA_LISTITEM_IMAGE_FILL|LIBAROMA_LISTITEM_IMAGE_PROPORTIONAL|
      LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH|LIBAROMA_LISTITEM_IMAGE_PARALAX,
    -1);
    _DIV(303);
  }
  */
  /*
  int u;
  for (u=0;u<20;u++){
    char extraText[100];
    snprintf(extraText,100,"Dummy Number %i",u);
    _ITEM(401+u,"Dummy Item",NULL,extraText);
  }
  */
  
  /* undef menu item macro */
  #undef _DIV
  #undef _TITLE
  #undef _ITEM
  #undef _ITEMB
  return 1;
}

/* main menu activity */
void recovery_mainmenu(){
  MAINMENU mainmenu={0};
  
  /* init window */
  LIBAROMA_WINDOWP win = libaroma_ctl_fragment_new_window(
    recovery()->fragment, ID_MAINMENU_FRAGMENT
  );
  
  if (win){
    /* set appbar tools */
    mainmenu.tools=libaroma_ctl_bar_tools(1);
    libaroma_ctl_bar_tools_set(
      mainmenu.tools, 0, ID_APPBAR_POWER,
      "Power",
      recovery_load_icon("power",win),
      LIBAROMA_CTL_BAR_TOOL_ICON_FREE
    );
    
    if (recovery_mainmenu_init(win,&mainmenu)){
      recovery_statusbar_setcolor(libaroma_colorget(NULL,win)->primary);
      
      /* show animated */
      libaroma_window_anishow(
        recovery()->win,
        LIBAROMA_WINDOW_SHOW_ANIMATION_FADE,
        200
      );
      recovery_mainmenu_reset_appbar(win,&mainmenu);
      libaroma_ctl_fragment_set_active_window(
        recovery()->fragment, ID_MAINMENU_FRAGMENT,
        1, 500, 0,
        NULL, NULL, NULL
      );
      
      /*
      libaroma_control_resize(
        mainmenu.menu,
        0, 0, LIBAROMA_SIZE_FULL, 200
      );
      */
      
      printf("Scroll Height: %i\n",libaroma_ctl_scroll_get_height(mainmenu.menu));
      
      recovery_mainmenu_pool(win,&mainmenu);
    }
    else{
      RLOG("recovery_mainmenu: init window control failed");
    }
    
    libaroma_ctl_bar_tools_free(mainmenu.tools);
  }
  else{
    RLOG("recovery_mainmenu: create main window failed");
  }
}

#endif /* __libaroma_recovery_mainmenu_c__ */
