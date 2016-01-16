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
 * Filename    : recovery_libs.c
 * Description : recovery mockup library
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_recovery_libs_c__
#define __libaroma_recovery_libs_c__

/* include recovery header */
#include <recovery.h>
#include <string.h>

/* recovery variable */
static RECOVERY _recovery={0};

/* get recovery variable */
RECOVERYP recovery(){
  return &_recovery;
}

/* stream uri callback */
LIBAROMA_STREAMP recovery_stream_uri_cb(char * uri){
  int n = strlen(uri);
  char kwd[11];
  int i;
  for (i = 0; i < n && i < 10; i++) {
    kwd[i] = uri[i];
    kwd[i + 1] = 0;
    if ((i > 1) && (uri[i] == '/') && (uri[i - 1] == '/')) {
      break;
    }
  }
  /* resource stream */
  if (strcmp(kwd, "res://") == 0) {
    LIBAROMA_STREAMP ret=libaroma_stream_mzip(_recovery.zip, uri + 7);
    if (ret){
      /* change uri */
      snprintf(ret->uri,
        LIBAROMA_STREAM_URI_LENGTH,
        "%s", uri
      );
      return ret;
    }
  }
  return NULL;
}

static byte recovery_statusbar_force_update = 0;
static byte recovery_statusbar_side_opa = 0;
static int recovery_statusbar_side_w = 0;
static LIBAROMA_CANVASP recovery_statusbar_overlay_canvas = NULL;

void recovery_statusbar_sidebar_list_cb(
  LIBAROMA_CONTROLP ctl,LIBAROMA_CANVASP cv,int sy){
  if (recovery_statusbar_overlay_canvas){
    if ((recovery_statusbar_overlay_canvas->w!=cv->w)||
       (recovery_statusbar_overlay_canvas->h!=cv->h)){
      libaroma_canvas_free(recovery_statusbar_overlay_canvas);
    }
  }
  if (recovery_statusbar_overlay_canvas==NULL){
    recovery_statusbar_overlay_canvas=libaroma_canvas(
      cv->w, cv->h
    );
  }
  libaroma_draw(
    recovery_statusbar_overlay_canvas, cv, 0, 0, 0
  );
  if (recovery_statusbar_side_w){
    recovery_statusbar_force_update=1;
  }
}

/* statusbar */
void recovery_statusbar_update(){
  word bgcolor = libaroma_alpha(
    _recovery.status_bgcolor,
    0,51+recovery_statusbar_side_opa
  );
  byte isdark = libaroma_color_isdark(bgcolor);
  word text_color = isdark?0xffff:0;
  
  libaroma_canvas_fillcolor(
    _recovery.status_canvas,
    bgcolor
  );
  
  if (recovery_statusbar_side_w){
    if (recovery_statusbar_overlay_canvas){
      libaroma_draw_rect(
        _recovery.status_canvas,
        0, 0, recovery_statusbar_side_w, _recovery.status_canvas->h,
        0, 0xff
      );
      libaroma_draw_ex(
        _recovery.status_canvas,
        recovery_statusbar_overlay_canvas,
        0, 0,
        recovery_statusbar_overlay_canvas->w-recovery_statusbar_side_w, 0,
        recovery_statusbar_side_w, recovery_statusbar_overlay_canvas->h,
        0, 0xcc
      );
    }
    else{
      libaroma_draw_rect(
        _recovery.status_canvas,
        0, 0, recovery_statusbar_side_w, _recovery.status_canvas->h,
        RGB(cccccc), 0xff
      );
    }
  }
    
  libaroma_draw_text(
    _recovery.status_canvas,
    "AROMA Recovery",
    0,0,text_color,_recovery.status_canvas->w,
    LIBAROMA_FONT(0,3)|
    LIBAROMA_TEXT_SINGLELINE|
    LIBAROMA_TEXT_CENTER,
    140
  );
  libaroma_wm_updatesync(0,0,0,0,1);
}
/* statusbar thread */
byte recovery_statusbar_ui_thread(){
  if (_recovery.status_updatestart!=0){
    float cstate=libaroma_cubic_bezier_swiftout(
      libaroma_duration_state(_recovery.status_updatestart, 200)
    );
    if (cstate<1){
      _recovery.status_bgcolor = 
        libaroma_alpha(
          _recovery.status_prvcolor,
          _recovery.status_reqcolor,
          255 * cstate
        );
    }
    else{
      _recovery.status_updatestart=0;
      _recovery.status_bgcolor=_recovery.status_reqcolor;
    }
    recovery_statusbar_force_update=1;
  }
  if (recovery_statusbar_force_update){
    recovery_statusbar_force_update=0;
    recovery_statusbar_update();
  }
}
void recovery_statusbar_setcolor(word color){
  _recovery.status_reqcolor = color;
  if (_recovery.status_reqcolor!=_recovery.status_bgcolor){
    _recovery.status_prvcolor = _recovery.status_bgcolor;
    _recovery.status_updatestart = libaroma_tick();
  }
}

/* sidebar slide callback */
void recovery_sidebar_onslide(LIBAROMA_WINDOWP sidebar,int x,int w){
  if (sidebar==_recovery.sidebar){
    recovery_statusbar_force_update = 1;
    recovery_statusbar_side_w = x;
    int xs = (x*165)/w;
    if (xs<0){
      xs=0;
    }
    if (xs>165){
      xs=165;
    }
    recovery_statusbar_side_opa=(byte) xs;
  }
}

/* Init UI */
byte recovery_init_ui(){
  /* create window */
  _recovery.win = libaroma_window(
      NULL, 0, 0, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL
    );
  
  if (!_recovery.win){
    RLOG("Cannot init main window");
    return 0;
  }
  
  /* appbar */
  _recovery.appbar = libaroma_ctl_bar(
    _recovery.win, ID_APPBAR, 0, 0, LIBAROMA_SIZE_FULL, 56,
    "AROMA Recovery",
    libaroma_colorget(NULL,_recovery.win)->primary,
    libaroma_colorget(NULL,_recovery.win)->primary_text
  );
  
  if (!_recovery.appbar){
    return 0;
  }
  libaroma_ctl_bar_set_icon_mask(_recovery.appbar,1,0);
  libaroma_ctl_bar_set_textgap(_recovery.appbar,1,0);
  
  /* fragment */
  _recovery.fragment = libaroma_ctl_fragment(
    _recovery.win, ID_FRAGMENT,
    0, 56, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL
  );
  if (!_recovery.fragment){
    return 0;
  }
  
  /* init sidebar */
  _recovery.sidebar = libaroma_window_sidebar(_recovery.win,0);
  if (_recovery.sidebar){
    /* sidebar onslide callback */
    libaroma_window_sidebar_onslide(
      _recovery.sidebar,
      &recovery_sidebar_onslide
    );
    
    word menuflags =
      LIBAROMA_LISTITEM_MENU_INDENT_NOICON|
      LIBAROMA_LISTITEM_MENU_SMALL_ICON|
      LIBAROMA_LISTITEM_MENU_FREE_ICON|
      LIBAROMA_LISTITEM_MENU_SMALL;
    
    /* menu item macro */
    #define _ITEM(id,text,ico,extra) \
      libaroma_listitem_menu(\
        _recovery.sidemenu, id, text, extra, \
        (ico!=NULL)?recovery_load_icon(ico,_recovery.win):NULL, \
        menuflags,-1)
    #define _TITLE(id,text) \
      libaroma_listitem_caption_color(_recovery.sidemenu, id, text, \
        libaroma_colorget(NULL,_recovery.win)->accent, -1)
    #define _DIV(id) \
      libaroma_listitem_divider(_recovery.sidemenu, id, \
        LIBAROMA_LISTITEM_SEPARATOR_TEXTALIGN,-1)
    
    /* create menu list */
    _recovery.sidemenu = libaroma_ctl_list(
      _recovery.sidebar, ID_SIDEMENU,
      0, 0, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL,
      0, 0,
      libaroma_colorget(NULL,_recovery.win)->control_bg,
      0 /*LIBAROMA_CTL_SCROLL_WITH_SHADOW*/
    );
    
    libaroma_ctl_scroll_set_min_scroll(
       _recovery.sidemenu,
       recovery_statusbar_sidebar_list_cb, 
       libaroma_dp(24)
    );
    
    /* sidebar image */
    libaroma_listitem_image(
      _recovery.sidemenu, ID_SIDEMENU_IMAGE,
      libaroma_image_uri("res:///bg/sidebar.jpg"), 150,
      LIBAROMA_LISTITEM_IMAGE_FREE|LIBAROMA_LISTITEM_IMAGE_FILL|
      LIBAROMA_LISTITEM_IMAGE_PROPORTIONAL|LIBAROMA_CTL_LIST_ITEM_RECEIVE_TOUCH,
    -1);
    
    /* ITEMS */
    _TITLE(210,"POWER MENU");
      _ITEM(ID_SIDEMENU_SHUTDOWN,"Shutdown","power",NULL);
      _ITEM(ID_SIDEMENU_REBOOT_SYS,"Reboot System","android",NULL);
      _ITEM(ID_SIDEMENU_REBOOT_REC,"Reboot Recovery","direction",NULL);
      _ITEM(ID_SIDEMENU_REBOOT_BLD,"Reboot Bootloader","apps",NULL);
    _DIV(310);
    _TITLE(211,"SETTINGS");
      _ITEM(ID_SIDEMENU_SETTINGS,"Settings","settings",NULL);
      _ITEM(ID_SIDEMENU_ABOUT,"About","info",NULL);
      _ITEM(ID_SIDEMENU_HELP,"Help","help",NULL);
    
    /*
    _DIV(311);
    
    int u;
    for (u=0;u<20;u++){
      char extraText[100];
      snprintf(extraText,100,"Dummy Sidebar %i",u);
      _ITEM(501+u,"Dummy Sidebar",NULL,extraText);
    }
  */
  
    /* undef menu item macro */
    #undef _DIV
    #undef _TITLE
    #undef _ITEM
  }
  else{
    return 0;
  }
  return 1;
}

/* Release UI */
byte recovery_release_ui(){
  if (_recovery.win){
    libaroma_window_free(_recovery.win);
    _recovery.win=NULL;
    _recovery.sidebar=NULL;
    _recovery.appbar=NULL;
    _recovery.fragment=NULL;
    _recovery.sidemenu=NULL;
    return 1;
  }
  if (recovery_statusbar_overlay_canvas){
    libaroma_canvas_free(recovery_statusbar_overlay_canvas);
  }
  return 0;
}
    
/* init recovery */
byte recovery_init(){
  /* 
    snprintf(libaroma_config()->fb_shm_name,64,"recovery-mainfb");
    libaroma_config()->runtime_monitor = LIBAROMA_START_UNSAFE;
  */
  
  /* disable shared fb */
  libaroma_config()->runtime_monitor = LIBAROMA_START_UNSAFE;
  libaroma_config()->fb_shm_name[0]=0;
  
  /* start libaroma */
  if (!libaroma_start()){
    RLOG("recovery_init: libaroma_start failed");
    return 0;
  }
  
  /*
  LIBAROMA_CANVASP svg1=libaroma_image(
    libaroma_stream(
      "file:///sdcard/23.svg"
    ),
    1
  );
  if (svg1){
    libaroma_draw(libaroma_fb()->canvas,svg1,0,0,1);
    libaroma_sync();
    sleep(4);
  }
  else{
    printf("\n\nSVG RENDER ERROR\n\n\n");
  }
  */
  
  /* set workspace size */
  libaroma_wm_set_workspace(
    0,
    libaroma_dp(24),
    libaroma_fb()->w,
    libaroma_fb()->h-libaroma_dp(24)
  );
  
  /* clean display */
  libaroma_canvas_blank(libaroma_fb()->canvas);
  
  /* create statusbar canvas area */
  _recovery.status_canvas=libaroma_canvas_area(
    libaroma_fb()->canvas,
    0, 0, libaroma_fb()->w, libaroma_dp(24)
  );
  if (!_recovery.status_canvas){
    RLOG("recovery_init: _recovery.status_canvas failed");
    libaroma_end();
    return 0;
  }
  
  /* set wm ui thread */
  libaroma_wm_set_ui_thread(recovery_statusbar_ui_thread);
  recovery_statusbar_setcolor(0);
  
  /* load zip resource */
  _recovery.zip = libaroma_zip("/sdcard/recovery.zip");
  if (!_recovery.zip){
    RLOG("recovery_init: libaroma_zip resource failed");
    libaroma_canvas_free(_recovery.status_canvas);
    libaroma_end();
    return 0;
  }
  
  /* init stream callback */
  libaroma_stream_set_uri_callback(recovery_stream_uri_cb);
  
  /* load font id=0 */
  libaroma_font(0,
    libaroma_stream(
      "res:///fonts/Roboto-Regular.ttf"
    )
  );
  
  if (!recovery_init_ui()){
    recovery_release();
    return 0;
  }
  
  /* cleanup display */
  libaroma_sync();
  
  return 1;
}

/* release recovery */
byte recovery_release(){
  recovery_release_ui();
  libaroma_wm_set_ui_thread(NULL);
  
  if (_recovery.zip){
    libaroma_zip_release(_recovery.zip);
    _recovery.zip=NULL;
  }
  
  return libaroma_end();
}

/* load icon and mask the color */
LIBAROMA_CANVASP recovery_load_icon_ex(const char * icon_name, word color){
  char uri[256];
  if (libaroma_stristr(icon_name,".svg",strlen(icon_name))!=NULL){
    snprintf(uri,256,"file:///sdcard/svg/%s",icon_name);
  }
  else{
    snprintf(uri,256,"res:///ico/%s.png",icon_name);
  }
  LIBAROMA_CANVASP ico = libaroma_image_uri(uri);
  if (ico){
    libaroma_canvas_fillcolor(ico,
      libaroma_colorget(NULL,libaroma_wm_get_active_window())->accent
    );
  }
  return ico;
}
LIBAROMA_CANVASP recovery_load_icon(const char * icon_name,
  LIBAROMA_WINDOWP win){
  return recovery_load_icon_ex(
    icon_name, 
    libaroma_colorget(NULL,win)->accent
  );
}

#endif /* __libaroma_recovery_libs_c__ */
