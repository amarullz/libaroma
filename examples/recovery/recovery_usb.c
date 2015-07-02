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
 * Filename    : recovery_usb.c
 * Description : recovery usb mockup
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_recovery_usb_c__
#define __libaroma_recovery_usb_c__

/* include recovery header */
#include <recovery.h>

/* control id */
#define ID_MENULIST             2
#define ID_MENU_MTP             100
#define ID_MENU_MASS            101
#define ID_MENU_NONE            102

typedef struct{
  LIBAROMA_CONTROLP menu;
} USBMENU;

/* reset appbar */
void recovery_usb_reset_appbar(LIBAROMA_WINDOWP win, USBMENU * var){
  /* set appbar icon */
  libaroma_ctl_bar_set_icon(
    recovery()->appbar,NULL,0,LIBAROMA_CTL_BAR_ICON_ARROW, 0
  );
  libaroma_ctl_bar_set_title(
    recovery()->appbar, "USB Mode", 0
  );
  libaroma_ctl_bar_set_subtitle(
    recovery()->appbar, NULL, 0
  );
  libaroma_ctl_bar_set_tools(
    recovery()->appbar,NULL,0
  );
  libaroma_ctl_bar_update(recovery()->appbar);
}

/* event loop */
byte recovery_usb_pool(LIBAROMA_WINDOWP win, USBMENU * var){
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
        printf("--- MENU: %i - %08X\n",msg.key,msg.d);
        onpool = 0;
      }
      else if (id==ID_APPBAR){
        printf("--- APPBAR: p:%i, k:%i, y:%i\n",param,msg.key,msg.y);
        onpool = 0;
      }
      else{
        printf("--- CLICK: %i - %i\n",id,param);
      }
    }
  }
  while(onpool);
}

/* init controls */
byte recovery_usb_init(LIBAROMA_WINDOWP win, USBMENU * var){
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
  
  /* menu item macro */
  #define _ITEM(id,text,ico,extra) \
    libaroma_listitem_menu(\
      var->menu, id, text, extra, (ico!=NULL)?recovery_load_icon(ico,win):NULL, \
      menuflags,-1)
  #define _TITLE(id,text) \
    libaroma_listitem_caption_color(var->menu, id, text, \
      libaroma_colorget(NULL,win)->accent, -1)
  #define _DIV(id) \
    libaroma_listitem_divider(var->menu, id, \
      LIBAROMA_LISTITEM_DIVIDER_SUBSCREEN,-1)
  
  /* ITEMS */
  _TITLE(200,"SELECT USB MODE");
    _ITEM(ID_MENU_MTP,"MTP","usb",NULL);
    _ITEM(ID_MENU_MASS,"Mass Storage","usb",NULL);
    _ITEM(ID_MENU_NONE,"None","delete",NULL);
  
  /* undef menu item macro */
  #undef _DIV
  #undef _TITLE
  #undef _ITEM
  
  return 1;
}




void recovery_usb_transition_cb(
  LIBAROMA_CANVASP dst,
  LIBAROMA_CANVASP bottom,
  LIBAROMA_CANVASP top,
  float state,
  LIBAROMA_RECTP r1,
  LIBAROMA_RECTP r2
){
  if (r2){
    r1=r2;
    LIBAROMA_CANVASP top2 = top;
    top = bottom;
    bottom=top2;
    state=1-state;
  }
  if (!r1){
    return;
  }
  state=libaroma_motion_fluid(state);
  libaroma_canvas_fillcolor(dst,
    libaroma_colorget(NULL,libaroma_wm_get_active_window())->window_bg
  );
  int y1 = r1->y * (1-state);
  int y3 = r1->y+r1->h;
  int y4 = ((dst->h - y3) * state) + y3;
  int y2 = y4 - y1;
  byte vopa=255-(220*state);
  libaroma_draw_ex(
    dst, bottom,
    0, 0, 
    0, r1->y-y1,
    dst->w, y3,
    0,
    vopa
  );
  libaroma_draw_ex(
    dst, bottom,
    0, y4,
    0, y3,
    dst->w, dst->h-y4,
    0,
    vopa
  );
  float statef = state;
  if (statef>1){
    statef=1;
  }
  libaroma_draw_ex(
    dst, top,
    0, y1, 0, 0, dst->w, y2,
    0, 255 * statef
  );
  
}




/* main menu activity */
void recovery_usb(int parent_id,LIBAROMA_RECTP rect){
  USBMENU var={0};
  
  /* init window */
  LIBAROMA_WINDOWP win = libaroma_ctl_fragment_new_window(
    recovery()->fragment, ID_USB_FRAGMENT
  );
  
  if (win){
    if (recovery_usb_init(win,&var)){
      libaroma_ctl_fragment_set_active_window(
        recovery()->fragment, ID_USB_FRAGMENT,
        1, 300, 0,
        recovery_usb_transition_cb, rect, NULL
      );
      libaroma_ctl_bar_set_color(
        recovery()->appbar, 
        RGB(555555),
        RGB(ffffff),
        0
      );
      recovery_usb_reset_appbar(win,&var);
      recovery_statusbar_setcolor(RGB(555555));
      
      recovery_usb_pool(win,&var);
      
      /* restore parent and delete usb fragment */
      libaroma_ctl_fragment_set_active_window(
        recovery()->fragment, parent_id,
        1, 300, 1,
        recovery_usb_transition_cb, NULL, rect
      );
      
      libaroma_ctl_bar_set_color(
        recovery()->appbar, 
        libaroma_colorget(NULL,recovery()->win)->primary,
        libaroma_colorget(NULL,recovery()->win)->primary_text,
        0
      );
      recovery_statusbar_setcolor(libaroma_colorget(NULL,win)->primary);
    }
    else{
      RLOG("recovery_usb: init window control failed");
      libaroma_ctl_fragment_del_window(recovery()->fragment,ID_USB_FRAGMENT);
    }
  }
  else{
    RLOG("recovery_usb: create main window failed");
  }
}

#endif /* __libaroma_recovery_usb_c__ */
