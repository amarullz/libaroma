/********************************************************************[libaroma]*
 * Copyright (C) 2011-2016 Ahmad Amarullah (http://amarullz.com/)
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
 * Filename    : dialog.c
 * Description : dialog
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 13/01/16 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_dialog_c__
#define __libaroma_dialog_c__
#include <aroma_internal.h>
#include "ui_internal.h"

/*
 * Function    : libaroma_dialog_data
 * Return Value: LIBAROMA_DIALOG_DATAP
 * Descriptions: Get dialog data
 */
LIBAROMA_DIALOG_DATAP libaroma_dialog_data(LIBAROMA_WINDOWP win){
  if (!win->client_data){
    return NULL;
  }
  return (LIBAROMA_DIALOG_DATAP) win->client_data;
}

/*
 * Function    : libaroma_dialog_updatebg
 * Return Value: void
 * Descriptions: update window bg
 */
void libaroma_dialog_updatebg(LIBAROMA_WINDOWP win, LIBAROMA_CANVASP c){
  LIBAROMA_DIALOG_DATAP cdata = libaroma_dialog_data(win);
  if (!cdata){
    return;
  }
  
  /* draw bg */
  libaroma_draw(c,cdata->bg,0,0,0);
  if (cdata->flags&LIBAROMA_DIALOG_DIM_PARENT){
    libaroma_draw_rect(c,0,0,c->w,c->h,0,0x7c);
  }
  
  if (cdata->flags&LIBAROMA_DIALOG_WITH_SHADOW){
    LIBAROMA_CANVASP ccv=libaroma_canvas_shadow(libaroma_dp(10),libaroma_dp(24),
      (cdata->flags&LIBAROMA_DIALOG_DIM_PARENT)?0x45:0x50);
    libaroma_png9p_draw(
      c,
      ccv,
      cdata->x-libaroma_dp(10),
      cdata->y-libaroma_dp(10),
      cdata->w+libaroma_dp(20),
      cdata->h+libaroma_dp(26),
      libaroma_fb()->dpi,
      NULL
    );
    libaroma_canvas_free(ccv);
  }
  
  word bgcolor = libaroma_colorget(NULL, win)->dialog_bg;
  
  /* draw dialog */
  libaroma_gradient(c,
    cdata->x, cdata->y,
    cdata->w, cdata->h,
    bgcolor,bgcolor,
    libaroma_dp(2),
    0x1111
  );
}

/*
 * Function    : libaroma_dialog_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: Create dialog window
 */
LIBAROMA_WINDOWP libaroma_dialog_window(
  int w, int h, byte flags, LIBAROMA_COLORSETP colorset
){
  int min_sz = libaroma_dp(72);
  int iw=w+libaroma_dp(16);
  int ih=h+libaroma_dp(16);
  
  if ((iw<min_sz)||(ih<min_sz)){
    ALOGW("libaroma_dialog_window: Invalid dialog size");
    return NULL;
  }
  if (iw>libaroma_wm()->w){
    iw=libaroma_wm()->w;
  }
  if (ih>libaroma_wm()->h){
    ih=libaroma_wm()->h;
  }
  
  LIBAROMA_DIALOG_DATAP cdata = (LIBAROMA_DIALOG_DATAP) calloc(sizeof(LIBAROMA_DIALOG_DATA),1);
  if (!cdata){
    ALOGW("libaroma_dialog_window: Cannot init client data");
    return NULL;
  }
  
  /* init values */
  cdata->w = iw-libaroma_dp(16);
  cdata->h = ih-libaroma_dp(16);
  cdata->x = (libaroma_wm()->w>>1) - (cdata->w>>1);
  cdata->y = (libaroma_fb()->h>>1) - (cdata->h>>1) - libaroma_wm()->y;
  cdata->flags = flags;
  
  /* init bg */
  cdata->bg=libaroma_canvas(libaroma_wm()->w,libaroma_wm()->h);
  LIBAROMA_CANVASP wmcv=libaroma_wm_canvas(0,0,libaroma_wm()->w,libaroma_wm()->h);
  libaroma_draw(cdata->bg,wmcv,0,0,0);
  /*
  if (flags&LIBAROMA_DIALOG_DIM_PARENT){
    libaroma_draw_rect(cdata->bg,0,0,libaroma_wm()->w,libaroma_wm()->h,0,0x70);
  }*/
  libaroma_canvas_free(wmcv);
  
  /* create window */
  LIBAROMA_WINDOWP win = libaroma_window(NULL,0,0,libaroma_wm()->w,libaroma_wm()->h);
  win->colorset = colorset;
  win->client_data = (voidp) cdata;
  win->onupdatebg  = libaroma_dialog_updatebg;
  return win;
}

/*
 * Function    : libaroma_dialog_free
 * Return Value: byte
 * Descriptions: Free dialog window
 */
byte libaroma_dialog_free(
  LIBAROMA_WINDOWP win
){
  if (win){
    if (win->client_data){
      LIBAROMA_DIALOG_DATAP cdata = (LIBAROMA_DIALOG_DATAP) win->client_data;
      libaroma_canvas_free(cdata->bg);
      free(win->client_data);
      win->client_data=NULL;
    }
    return libaroma_window_free(win);
  }
  return 0;
}

int libaroma_dialog_confirm(
  const char * title,
  const char * message,
  const char * button1,
  const char * button2,
  LIBAROMA_COLORSETP colorset,
  byte flags){
  if ((!message)||(!title)){
    return -1;
  }
  int dialog_w = libaroma_wm()->w-libaroma_dp(58);
  int text_w = dialog_w-libaroma_dp(48);
  int title_h = 
    libaroma_ctl_label_height(
      title, text_w,
      0, 6,
      LIBAROMA_TEXT_LEFT|
      LIBAROMA_TEXT_FIXED_INDENT|
      LIBAROMA_TEXT_NOHR, 
      100
    );
  int msg_h = 
    libaroma_ctl_label_height(
      message, text_w,
      0, 4,
      LIBAROMA_TEXT_LEFT|
      LIBAROMA_TEXT_FIXED_INDENT|
      LIBAROMA_TEXT_NOHR, 
      120
    );
  
  int dialog_h = libaroma_dp(120)+title_h+msg_h;
  
  LIBAROMA_WINDOWP win=libaroma_dialog_window(
    dialog_w, dialog_h, 
    flags,
    colorset
  );
  
  LIBAROMA_DIALOG_DATAP cdata = libaroma_dialog_data(win);
  
  word title_color = libaroma_colorget(NULL, win)->dialog_primary_text;
  word msg_color = libaroma_colorget(NULL, win)->dialog_secondary_text;
  word btncolor = libaroma_colorget(NULL, win)->dialog_primary_text;
  byte button_style = 0;
  if (flags&LIBAROMA_DIALOG_ACCENT_BUTTON){
    btncolor = libaroma_colorget(NULL, win)->accent;
    button_style=LIBAROMA_CTL_BUTTON_COLORED;
  }
  
  
  libaroma_ctl_label(win,10,title,
    libaroma_px(cdata->x)+24,
    libaroma_px(cdata->y)+24,
    libaroma_px(text_w),libaroma_px(title_h+10),
    title_color,6,
    LIBAROMA_TEXT_LEFT|
    LIBAROMA_TEXT_FIXED_INDENT|
    LIBAROMA_TEXT_NOHR, 
    100
  );
  libaroma_ctl_label(win,11,message,
    libaroma_px(cdata->x)+24,
    libaroma_px(cdata->y)+44+libaroma_px(title_h),
    libaroma_px(text_w),libaroma_px(msg_h+10),
    msg_color,4,
    LIBAROMA_TEXT_LEFT|
    LIBAROMA_TEXT_FIXED_INDENT|
    LIBAROMA_TEXT_NOHR,
    120
  );
  
  int button_y = libaroma_px(cdata->y+cdata->h)-52;
  
  if (button1){
    int button1_w = libaroma_ctl_button_width(button1);
    int button1_x = libaroma_px(cdata->x+cdata->w-button1_w)-16;
    libaroma_ctl_button(
      win,
      1,
      button1_x, 
      button_y, 
      libaroma_px(button1_w), 36,
      button1,
      button_style,
      btncolor
    );
    
    if (button2){
      int button2_w = libaroma_ctl_button_width(button2);
      int button2_x = button1_x-libaroma_px(button2_w);
      
      libaroma_ctl_button(
        win,
        2,
        button2_x, 
        button_y, 
        libaroma_px(button2_w), 36,
        button2,
        button_style,
        btncolor
      );
    }
  }
  
  
  // libaroma_window_anishow(win,LIBAROMA_WINDOW_SHOW_ANIMATION_FADE,200);
  libaroma_window_anishow(win,LIBAROMA_WINDOW_SHOW_ANIMATION_FADE,200);
  
  byte onpool=1;
  LIBAROMA_MSG msg;
  dword command;
  byte cmd;
  word id;
  int retval=-1;
  
  do{
    command=libaroma_window_pool(win,&msg);
    cmd = LIBAROMA_CMD(command);
    id = LIBAROMA_CMD_ID(command);
    if (msg.msg==LIBAROMA_MSG_KEY_BACK){
      if (flags&LIBAROMA_DIALOG_CANCELABLE){
        ALOGV("libaroma_dialog_confirm: Back Button - Cancel");
        onpool=0;
      }
    }
    else if (cmd==LIBAROMA_CMD_CLICK){
      if (id==1){
        ALOGV("libaroma_dialog_confirm: Button 1 Selected");
        retval=1;
        onpool=0;
        libaroma_sleep(300);
      }
      else if (id==2){
        ALOGV("libaroma_dialog_confirm: Button 2 Selected");
        retval=2;
        onpool=0;
        libaroma_sleep(300);
      }
    }
    else if (msg.msg==LIBAROMA_MSG_TOUCH){
      if (flags&LIBAROMA_DIALOG_CANCELABLE){
        if (msg.state==1){
          if ((msg.x<cdata->x)||(msg.y<cdata->y)||(msg.y>cdata->y+cdata->h)||
            (msg.x>cdata->x+cdata->w)){
            ALOGV("libaroma_dialog_confirm: Touch Outside Dialog - Cancel");
            onpool=0;
          }
        }
      }
    }
  }
  while(onpool);
  
  libaroma_dialog_free(win);
  return retval;
}


#endif /* __libaroma_dialog_c__ */


