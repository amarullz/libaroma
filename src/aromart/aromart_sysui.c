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
 * Filename    : aromart_sysui.c
 * Description : AROMA Runtime system ui
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaromart_sysui_c__
#define __libaromart_sysui_c__
#include "aromart_internal.h"

/* sysui app structure */
typedef struct{
  int     aid;            /* application id */
  pid_t   pid;            /* application pid */
  int     wfd;            /* write fd - for request */
  int     rfd;            /* read fd - for respond */
  int     efd;            /* event fd */
  LIBAROMA_CANVASP  cfb;  /* app framebuffer canvas */
  LIBAROMA_CANVASP  csb;  /* overflow status bar canvas */
  pthread_t appth;        /* application thread */
  byte    isrun;          /* application is run */
} LARTAPP_SYSUI;

/* sysui structure */
typedef struct{
  LARTAPP_SYSUI **  apps;       /* array of apps */
  int               appn;       /* number of app array */
  int               appid;      /* current appid */
  LARTAPP_SYSUI *   fg_app;     /* foreground app */
  byte              active;     /* is active */
  
  int               dpi;        /* dpi */
  LIBAROMA_ZIP      zip;        /* zip global assets */
  
  int               sb_h;       /* statusbar height */
  LIBAROMA_CANVASP  sb_canvas;  /* statusbar canvas */
  word              sb_prvcolor;
  word              sb_reqcolor;
  word              sb_bgcolor;
  long              sb_updatestart;
  byte              sb_forceupdate;
  byte              sb_side_opa;
  LIBAROMA_CANVASP  sb_overlay_canvas;
  int               sb_side_w;
} LART_SYSUI;

/* sys ui instance */
static LART_SYSUI * _lart_sysui = NULL;
pthread_mutex_t _lart_sysui_mutex = PTHREAD_MUTEX_INITIALIZER;
#define _MLOCK()    pthread_mutex_lock(&_lart_sysui_mutex)
#define _MUNLOCK()  pthread_mutex_unlock(&_lart_sysui_mutex)

/* forward functions */
void _lart_sysui_sb_setcolor(word color);

/* new fifo and return fd */
int _lart_sysui_makefifo(char * path, byte iswrite){
  int ret=-1;
  if (mkfifo(path,0666)==0){
    ret = open(path,iswrite?O_WRONLY:O_RDONLY);
    if (ret<0){
      unlink(path);
    }
  }
  return -1;
}

/* free app structure */
byte lart_sysui_app_free(LARTAPP_SYSUI * app){
  if (!app){
    return 0;
  }
  char stmp[256];
  int appid = app->aid;
  if (app->wfd>0){
    close(app->wfd);
    app->wfd=-1;
    snprintf(stmp,256,LART_NAMED_PIPE_APP_WRITE,appid);
    unlink(stmp);
  }
  if (app->rfd>0){
    close(app->rfd);
    app->rfd=-1;
    snprintf(stmp,256,LART_NAMED_PIPE_APP_READ,appid);
    unlink(stmp);
  }
  if (app->efd>0){
    close(app->efd);
    app->efd=-1;
    snprintf(stmp,256,LART_NAMED_PIPE_APP_EVENT,appid);
    unlink(stmp);
  }
  if (app->csb){
    libaroma_canvas_delete(app->csb);
    app->csb=NULL;
  }
  if (app->cfb){
    libaroma_canvas_delete(app->cfb);
    app->cfb=NULL;
  }
  return 1;
}

/* Application thread */
static void * _lart_sysui_appthread(void * cookie) {
  LARTAPP_SYSUI * app_data = (LARTAPP_SYSUI *) cookie;
  byte isrun=1;
  while ((_lart_sysui->active)&&(isrun)){
    voidp data=NULL;
    size_t len=0;
    dword param=0;
    /* get command request */
    byte status=lart_recv(app_data->rfd,&param,data,&len);
    
    _MLOCK();
    byte isfg=(app_data==_lart_sysui->fg_app);
    switch(status){
      case LART_REQ_CMD_FB_SYNC:
        {
          /* framebuffer sync */
          if (isfg){
            libaroma_fb_start_post();
            libaroma_fb_post(_lart_sysui->sb_canvas,
              0, 0, 0, 0, _lart_sysui->sb_canvas->w, _lart_sysui->sb_canvas->h);
            libaroma_fb_post(
              app_data->cfb,
              0, _lart_sysui->sb_canvas->h, 0, 0, 
              app_data->cfb->w, app_data->cfb->h
            );
            libaroma_fb_end_post();
            lart_send(app_data->wfd,LART_RES_OK,1,NULL,0);
          }
          else{
            lart_send(app_data->wfd,LART_RES_ERR,0,NULL,0);
          }
        }
        break;
      case LART_REQ_CMD_SET_PRIMARY_COLOR:
        {
          if (isfg){
            _lart_sysui_sb_setcolor((word) param);
            lart_send(app_data->wfd,LART_RES_OK,1,NULL,0);
          }
          else{
            lart_send(app_data->wfd,LART_RES_ERR,0,NULL,0);
          }
        }
        break;
      case LART_REQ_CMD_SB_SYNC:
        {
          if (isfg){
            int x = (int) param;
            if (len==sizeof(int)){
              int w = ((int *) data)[0];
              _lart_sysui->sb_forceupdate = 1;
              _lart_sysui->sb_side_w = x;
              int xs = (x*165)/w;
              if (xs<0){
                xs=0;
              }
              if (xs>165){
                xs=165;
              }
              _lart_sysui->sb_side_opa=(byte) xs;
              if (_lart_sysui->sb_overlay_canvas){
                if (_lart_sysui->sb_overlay_canvas->w!=w){
                  libaroma_canvas_free(_lart_sysui->sb_overlay_canvas);
                  _lart_sysui->sb_overlay_canvas=NULL;
                }
              }
              if (!_lart_sysui->sb_overlay_canvas){
                _lart_sysui->sb_overlay_canvas=libaroma_canvas(
                  w, _lart_sysui->sb_h
                );
                if (_lart_sysui->sb_overlay_canvas){
                  libaroma_draw_ex(
                    _lart_sysui->sb_overlay_canvas,
                    app_data->csb,
                    0, 0, 0, 0, w, _lart_sysui->sb_h,
                    0, 0xff
                  );
                }
              }
              lart_send(app_data->wfd,LART_RES_OK,1,NULL,0);
            }
            else{
              lart_send(app_data->wfd,LART_RES_ERR,1,NULL,0);
            }
          }
          else{
            lart_send(app_data->wfd,LART_RES_ERR,0,NULL,0);
          }
        }
        break;
      case LART_REQ_CMD_EXIT:
        {
          lart_send(app_data->wfd,LART_RES_OK,1,NULL,0);
          app_data->isrun=1;
        }
        break;
      case LART_REQ_CMD_READY:
        {
          lart_send(app_data->wfd,LART_RES_OK,1,NULL,0);
        }
        break;
    }
    _MUNLOCK();
    
    /* cleanup data */
    if (len>0){
      if (data){
        free(data);
        data=NULL;
      }
      len=0;
    }
  }
  return NULL;
}

/* request new app */
pid_t lart_sysui_req_new_app(
  char * program,
  char * param){
  pid_t ret_pid = -1;
  _MLOCK();
  if (!_lart_sysui){
    LARTLOGE("lart_sysui_req_new_app: System UI not initialized");
    _MUNLOCK();
    return ret_pid;
  }
  if (!_lart_sysui->active){
    LARTLOGE("lart_sysui_req_new_app: System UI not Active");
    _MUNLOCK();
    return ret_pid;
  }
  byte is_ok = 0;
  byte is_pipes = 0;
  LART_NEW_APP_DATA app;
  app.aid = ++_lart_sysui->appid;
  app.dpi = _lart_sysui->dpi;
  snprintf(app.program,256,"%s",program?program:"");
  snprintf(app.param,256,"%s",param?param:"");
  
  int rfd = -1;
  int wfd = -1;
  int efd = -1;
  LIBAROMA_CANVASP cfb=NULL;
  LIBAROMA_CANVASP csb=NULL;
  
  char stmp[256];
  /* init pipes */
  snprintf(stmp,256,LART_NAMED_PIPE_APP_READ,app.aid);
  wfd = _lart_sysui_makefifo(stmp, 1);
  snprintf(stmp,256,LART_NAMED_PIPE_APP_WRITE,app.aid);
  rfd = _lart_sysui_makefifo(stmp, 0);
  snprintf(stmp,256,LART_NAMED_PIPE_APP_EVENT,app.aid);
  efd = _lart_sysui_makefifo(stmp, 1);
  /* init canvases */
  snprintf(stmp,256,LART_SHMCANVAS_FB,app.aid);
  cfb = libaroma_canvas_shmem(
        libaroma_fb()->w,
        libaroma_fb()->h-_lart_sysui->sb_h,
        0,
        stmp
      );
  snprintf(stmp,256,LART_SHMCANVAS_SB,app.aid);
  csb = libaroma_canvas_shmem(
    libaroma_fb()->w,
    _lart_sysui->sb_h,
    0,
    stmp
  );
  if ((wfd>0)&&(rfd>0)&&(efd>0)&&(cfb!=NULL)&&(csb!=NULL)){
    is_pipes=1;
  }
  if (is_pipes){
    dword paramn = 0;
    voidp data  = NULL;
    size_t len  = 0;
    byte status = lart_rcommand(
      LART_ROOT_MSG_CREATE_APP,0,&app, sizeof(LART_NEW_APP_DATA),
      &paramn, data, &len
    );
    if (status==LART_ROOT_MSG_CREATE_APP_RES){
      if ((len==sizeof(LART_NEW_APP_RES_DATA))&&(paramn==1)){
        /* succesed */
        LART_NEW_APP_RES_DATA * newapp = (LART_NEW_APP_RES_DATA *) data;
        if (newapp->pid>0){
          LARTLOGV("lart_sysui_req_new_app(%i): new app created at pid #%i",
            app.aid, newapp->pid);
          /* calloc app data */
          LARTAPP_SYSUI * app_data = (LARTAPP_SYSUI *)
            calloc(sizeof(LARTAPP_SYSUI),1);
          if (app_data){
            app_data->aid = app.aid;
            app_data->pid = newapp->pid;
            app_data->wfd = wfd;
            app_data->rfd = rfd;
            app_data->efd = efd;
            app_data->cfb = cfb;
            app_data->csb = csb;
            
            LARTAPP_SYSUI ** napps = NULL;
            if (_lart_sysui->appn==0){
              napps=calloc(sizeof(LARTAPP_SYSUI *),1);
              _lart_sysui->appn=1;
            }
            else{
              _lart_sysui->appn++;
              napps=(LARTAPP_SYSUI **) realloc(
                _lart_sysui->apps, sizeof(LARTAPP_SYSUI *) * _lart_sysui->appn
              );
            }
            if (napps){
              napps[_lart_sysui->appn-1]=app_data;
              _lart_sysui->apps = napps;
              is_ok = 1;
              ret_pid = newapp->pid;
              pthread_create(
                &app_data->appth,NULL,
                _lart_sysui_appthread,
                (void *) app_data
              );
            }
            else{
              /* failed */
              free(app_data);
            }
          }
        }
        else{
          LARTLOGV("lart_sysui_req_new_app(%i): appman failed to fork new app",
            app.aid);
        }
      }
      else{
        LARTLOGV("lart_sysui_req_new_app(%i): appman failed create new app",
          app.aid);
      }
    }
    else{
      LARTLOGE("lart_sysui_req_new_app(%i): appman respond status not valid",
        app.aid);
    }
    if (len>0){
      if (data){
        free(data);
        data=NULL;
      }
      len=0;
    }
  }
  
  if (!is_ok){
    if (wfd>0){
      close(wfd);
      wfd=-1;
      snprintf(stmp,256,LART_NAMED_PIPE_APP_WRITE,app.aid);
      unlink(stmp);
    }
    if (rfd>0){
      close(rfd);
      rfd=-1;
      snprintf(stmp,256,LART_NAMED_PIPE_APP_READ,app.aid);
      unlink(stmp);
    }
    if (efd>0){
      close(efd);
      efd=-1;
      snprintf(stmp,256,LART_NAMED_PIPE_APP_EVENT,app.aid);
      unlink(stmp);
    }
    if (csb){
      libaroma_canvas_delete(csb);
    }
    if (cfb){
      libaroma_canvas_delete(cfb);
    }
    _lart_sysui->appid--;
  }
  
  _MUNLOCK();
  return ret_pid;
}

/* sysui update statusbar */
void _lart_sysui_sb_update(){
  word bgcolor = libaroma_alpha(
    _lart_sysui->sb_bgcolor,
    0,51+_lart_sysui->sb_side_opa
  );
  byte isdark = libaroma_color_isdark(bgcolor);
  word text_color = isdark?0xffff:0;
  
  libaroma_canvas_fillcolor(
    _lart_sysui->sb_canvas,
    bgcolor
  );
  
  if (_lart_sysui->sb_side_w){
    if (_lart_sysui->sb_overlay_canvas){
      libaroma_draw_rect(
        _lart_sysui->sb_canvas,
        0, 0, _lart_sysui->sb_side_w, _lart_sysui->sb_canvas->h,
        0, 0xff
      );
      libaroma_draw_ex(
        _lart_sysui->sb_canvas,
        _lart_sysui->sb_overlay_canvas,
        0, 0,
        _lart_sysui->sb_overlay_canvas->w-_lart_sysui->sb_side_w, 0,
        _lart_sysui->sb_side_w, _lart_sysui->sb_overlay_canvas->h,
        0, 0xcc
      );
    }
    else{
      libaroma_draw_rect(
        _lart_sysui->sb_canvas,
        0, 0, _lart_sysui->sb_side_w, _lart_sysui->sb_canvas->h,
        RGB(cccccc), 0xff
      );
    }
  }
    
  libaroma_draw_text(
    _lart_sysui->sb_canvas,
    "AROMA Recovery",
    0,0,text_color,_lart_sysui->sb_canvas->w,
    LIBAROMA_FONT(0,3)|
    LIBAROMA_TEXT_SINGLELINE|
    LIBAROMA_TEXT_CENTER,
    140
  );
  
  if (_lart_sysui->fg_app){
    /* request sync */
    _MLOCK();
    lart_send(_lart_sysui->fg_app->efd,
      LART_EV_NEEDSYNC,0,NULL, 0
    );
    _MUNLOCK();
  }
  else{
    libaroma_wm_updatesync(0,0,0,0,1);
  }
}

/* sysui ui thread */
byte _lart_sysui_ui_thread(){
  if (_lart_sysui->sb_updatestart!=0){
    float cstate=libaroma_cubic_bezier_swiftout(
      libaroma_duration_state(_lart_sysui->sb_updatestart, 200)
    );
    if (cstate<1){
      _lart_sysui->sb_bgcolor = 
        libaroma_alpha(
          _lart_sysui->sb_prvcolor,
          _lart_sysui->sb_reqcolor,
          255 * cstate
        );
    }
    else{
      _lart_sysui->sb_updatestart=0;
      _lart_sysui->sb_bgcolor=_lart_sysui->sb_reqcolor;
    }
    _lart_sysui->sb_forceupdate=1;
  }
  if (_lart_sysui->sb_forceupdate){
    _lart_sysui->sb_forceupdate=0;
    _lart_sysui_sb_update();
    return 1;
  }
  return 0;
}

/* sysui message handler */
byte _lart_sysui_msg_handler(LIBAROMA_WMP wm, LIBAROMA_MSGP msg){
  if (msg->msg==LIBAROMA_MSG_TOUCH){
    if (msg->y>_lart_sysui->sb_h){
      msg->y-=_lart_sysui->sb_h;
      if (_lart_sysui->fg_app){
        _MLOCK();
        lart_send(_lart_sysui->fg_app->efd,
          LART_EV_HID,
          (dword) LIBAROMA_MSG_TOUCH,
          msg,
          sizeof(LIBAROMA_MSG)
        );
        _MUNLOCK();
      }
      return LIBAROMA_WM_MSG_HANDLED;
    }
    else{
      LARTLOGV("Touch On Statusbar: %i - %ix%i",
        msg->state, msg->x, msg->y);
    }
  }
  return 0;
}

/* sysui set statusbar color */
void _lart_sysui_sb_setcolor(word color){
  _lart_sysui->sb_reqcolor = color;
  if (_lart_sysui->sb_reqcolor!=_lart_sysui->sb_bgcolor){
    _lart_sysui->sb_prvcolor = _lart_sysui->sb_bgcolor;
    _lart_sysui->sb_updatestart = libaroma_tick();
  }
}

/* stream uri callback */
LIBAROMA_STREAMP _lart_sysui_stream_uri_cb(char * uri){
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
    LIBAROMA_STREAMP ret=libaroma_stream_mzip(_lart_sysui->zip, uri + 7);
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

/* start sysui */
int lart_sysui(LART_SYSTEM_UI_HANDLER sysui_handler){
  int res=0;
  _MLOCK();
  LARTLOGI("Starting System UI");
  _lart_sysui = (LART_SYSUI *) calloc(sizeof(LART_SYSUI),1);
  if (_lart_sysui!=NULL){
    if (libaroma_start()){
      /* init sysui values */
      _lart_sysui->sb_h = libaroma_dp(LART_SYSUI_STATUSBAR_HEIGHT);
      _lart_sysui->dpi  = libaroma_fb()->dpi;
      
      /* set workspace size */
      libaroma_wm_set_workspace(
        0,
        _lart_sysui->sb_h,
        libaroma_fb()->w,
        libaroma_fb()->h-_lart_sysui->sb_h
      );
      
      /* clean display */
      libaroma_canvas_blank(libaroma_fb()->canvas);
      
      /* create statusbar canvas area */
      _lart_sysui->sb_canvas=libaroma_canvas_area(
        libaroma_fb()->canvas,
        0, 0, libaroma_fb()->w, _lart_sysui->sb_h
      );
      if (_lart_sysui->sb_canvas){
        libaroma_wm_set_ui_thread(_lart_sysui_ui_thread);
        libaroma_wm_set_message_handler(_lart_sysui_msg_handler);
        _lart_sysui_sb_setcolor(0);
        
        /* load zip resource */
        _lart_sysui->zip = libaroma_zip(LART_SYSUI_ZIP_PATH);
        if (_lart_sysui->zip){
          libaroma_stream_set_uri_callback(_lart_sysui_stream_uri_cb);
          libaroma_font(0,libaroma_stream(LART_SYSUI_MAINFONT_URI));
          
          _lart_sysui->active = 1;
          
          if (sysui_handler!=NULL){
            _MUNLOCK();
            sysui_handler();
            _MLOCK();
          }
          
          _lart_sysui->active = 0;
        }
        else{
          LARTLOGE("_lart_sysui->zip init failed");
        }
        
        libaroma_wm_set_message_handler(NULL);
        libaroma_wm_set_ui_thread(NULL);
      }
      else{
        LARTLOGE("_lart_sysui->sb_canvas init failed");
      }
    }
    
    /* cleanup */
    if (_lart_sysui->sb_canvas){
      libaroma_canvas_free(_lart_sysui->sb_canvas);
      _lart_sysui->sb_canvas=NULL;
    }
    if (_lart_sysui->sb_overlay_canvas){
      libaroma_canvas_free(_lart_sysui->sb_overlay_canvas);
      _lart_sysui->sb_overlay_canvas=NULL;
    }
    if (_lart_sysui->zip){
      libaroma_zip_release(_lart_sysui->zip);
      _lart_sysui->zip=NULL;
    }
    libaroma_end();
    
    free(_lart_sysui);
    _lart_sysui=NULL;
    _MUNLOCK();
  }
  else{
    _MUNLOCK();
    res = 200;
  }
  LARTLOGI("System UI Ended: %i",res);
  
  /* terminated message */
  _MLOCK();
  lart_rsend(
    LART_ROOT_MSG_TERMINATED,(dword) res,NULL, 0
  );
  _MUNLOCK();
  return res;
}

#endif /* __libaromart_sysui_c__ */
