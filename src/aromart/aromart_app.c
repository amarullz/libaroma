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
 * Filename    : aromart_app.c
 * Description : AROMA Runtime application handler
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaromart_app_c__
#define __libaromart_app_c__
#include "aromart_internal.h"

/* application instance */
static LARTAPP * _lart_app = NULL;

/* run callback */
static LART_APP_RUN_HANDLER _lart_app_run_cb=NULL;

/* get application instance */
LARTAPP * lart_app(){
  return _lart_app;
}

/* app mutex */
static pthread_mutex_t _lart_app_mutex = PTHREAD_MUTEX_INITIALIZER;
#define _APPLOCK()    pthread_mutex_lock(&_lart_app_mutex)
#define _APPUNLOCK()  pthread_mutex_unlock(&_lart_app_mutex)
static byte _lart_app_needsync=0;
static byte _lart_app_isrun=0;
static pthread_t _lart_app_eventthread_t;

/* PUBLIC FUNCTIONS */
byte lart_application_syncfb(){
  _lart_app_needsync=1;
  return 1;
}
byte lart_application_set_foreground(){
  byte res=lart_app_command(LART_REQ_CMD_READY,0,NULL,0,NULL,NULL,NULL);
  lart_application_syncfb();
  return res;
}
byte lart_application_set_primary_color(word color){
  return lart_app_command(LART_REQ_CMD_SET_PRIMARY_COLOR,
    (dword) color,NULL,0,NULL,NULL,NULL
  );
}
byte lart_application_set_drawer_overlay(int x, int w){
  return lart_app_command(LART_REQ_CMD_SB_SYNC,
    (dword) x,&w,sizeof(int),NULL,NULL,NULL
  );
}

char _lart_app_process_name[256];
void lart_application_set_process_name(char * name){
  snprintf(_lart_app_process_name,
    256,
    "aroma.app.%i%s%s",
    _lart_app->aid,name?"-":"",name?name:""
   );
  lart_set_process_name(_lart_app_process_name);
}

/* stream uri callback */
static LIBAROMA_ZIP _lart_app_sys_zip=NULL;
static LIBAROMA_ZIP _lart_app_zip=NULL;
void lart_application_set_resource_zip(LIBAROMA_ZIP zip){
  _lart_app_zip = zip;
}
LIBAROMA_STREAMP _lart_app_stream_uri_cb(char * uri){
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
  if ((strcmp(kwd, "res://") == 0)&&(_lart_app_zip!=NULL)) {
    LIBAROMA_STREAMP ret=libaroma_stream_mzip(_lart_app_zip, uri + 7);
    if (ret){
      /* change uri */
      snprintf(ret->uri,
        LIBAROMA_STREAM_URI_LENGTH,
        "%s", uri
      );
      return ret;
    }
  }
  else if (strcmp(kwd, "sys://") == 0) {
    LIBAROMA_STREAMP ret=libaroma_stream_mzip(_lart_app_sys_zip, uri + 7);
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

/* event thread */
static void * _lart_app_eventthread(void * cookie) {
  LARTLOGS("Starting _lart_app_eventthread");
  while (_lart_app_isrun){
    voidp data=NULL;
    size_t len=0;
    dword param=0;
    byte status=lart_recv(_lart_app->efd,&param,&data,&len);
    switch (status){
      case LART_EV_NEEDSYNC:
        {
          _lart_app_needsync=1;
        }
        break;
      case LART_EV_EXIT:
        {
          lart_hid_post(0,0,0,0,0,LIBAROMA_HID_EV_RET_EXIT);
          _APPLOCK();
          _lart_app_isrun=0;
          _APPUNLOCK();
        }
        break;
      case LART_EV_HID:
        {
          if (len==sizeof(LIBAROMA_MSG)){
            LIBAROMA_MSGP msg=(LIBAROMA_MSGP) data;
            if (param==LIBAROMA_MSG_TOUCH){
              /* touch event */
              lart_hid_post(
                LIBAROMA_HID_EV_TYPE_TOUCH,
                msg->key,
                msg->state,
                msg->x,
                msg->y,
                LIBAROMA_HID_EV_RET_TOUCH
              );
            }
          }
        }
        break;
    }
    
    if (len>0){
      if (data){
        free(data);
        data=NULL;
      }
      len=0;
    }
  }
  
  /* send exit message */
  lart_hid_post(0,0,0,0,0,LIBAROMA_HID_EV_RET_EXIT);
  return NULL;
}

/* check if application is running */
byte lart_application_is_run(){
  return _lart_app_isrun;
}

/* sysui ui thread */
byte _lart_app_ui_thread(){
  if (_lart_app_needsync){
    _lart_app_needsync=0;
    libaroma_wm_updatesync(0,0,0,0,1);
    return 1;
  }
  return 0;
}

/* run application */
int lart_app_run(char * program, char * param){
  LARTLOGS("lart_app_run(%s,%s)",program,param);
  if (_lart_app_run_cb){
    _lart_app_isrun=1;
    pthread_create(
      &_lart_app_eventthread_t,
      NULL,
      _lart_app_eventthread,
      NULL
    );
    pthread_detach(_lart_app_eventthread_t);
    libaroma_wm_set_ui_thread(_lart_app_ui_thread);
    int retval=_lart_app_run_cb(program, param);
    libaroma_wm_set_ui_thread(NULL);
    _lart_app_isrun=0;
    return retval;
  }
  LARTLOGE("No Application Callback...");
  return -1;
}

/* application command */
byte lart_app_command(
  byte cmd,
  dword param,
  voidp data,
  size_t data_len,
  dwordp    res_param,
  voidp  *  res_data,
  size_t *  res_data_len
){
  if (!lart_app()){
    return LART_RES_ERR;
  }
  _APPLOCK();
  byte status=lart_command(
    lart_app()->wfd,
    lart_app()->rfd,
    cmd,
    param,
    data,
    data_len,
    res_param,
    res_data,
    res_data_len
  ); 
  _APPUNLOCK();
  return status;
}

/* app pid waiter */
static void * _lart_app_manager_waitforpid_thread(void * cookie) {
  pid_t * pidt = (pid_t *) cookie;
  pid_t pid = pidt[0];
  free(pidt);
  waitpid(pid, NULL, 0);
  LARTLOGV("** WAITPID(%i) Returned",pid);
  return NULL;
}
void _lart_app_manager_waitforpid(pid_t pid){
  pthread_t th;
  pid_t * pidt = (pid_t *) calloc(sizeof(pid_t),1);
  pidt[0]=pid;
  pthread_create(&th,NULL,_lart_app_manager_waitforpid_thread,(void *) pidt);
  pthread_detach(th);
}

/* create new application */
pid_t lart_app_create(
  int appid,
  char * program,
  char * param,
  int dpi
){
  pid_t apid = fork();
  if (apid==0){
    /* close parent pipe */
    close(lart()->rfd);
    close(lart()->wfd);
    lart()->rfd=-1;
    lart()->wfd=-1;
    
    /* ready */
    int app_ret = -1;
    _lart_app = (LARTAPP *) calloc(sizeof(LARTAPP),1);
    _lart_app->aid = appid;
    _lart_app->pid = getpid();
    _lart_app->dpi = dpi;
    
    {
      /* init pipe */
      char stmp[256];
      snprintf(stmp,256,LART_NAMED_PIPE_APP_WRITE,appid);
      _lart_app->wfd=open(stmp,O_WRONLY|O_NOCTTY|O_SYNC);
      
      snprintf(stmp,256,LART_NAMED_PIPE_APP_READ,appid);
      _lart_app->rfd=open(stmp,O_RDONLY|O_NOCTTY|O_SYNC);
      
      snprintf(stmp,256,LART_NAMED_PIPE_APP_EVENT,appid);
      _lart_app->efd=open(stmp,O_RDONLY|O_NOCTTY|O_SYNC);
      
      /* init canvases */
      snprintf(stmp,256,LART_SHMCANVAS_FB,appid);
      _lart_app->cfb = libaroma_canvas_shmem_open(stmp);
      
      snprintf(stmp,256,LART_SHMCANVAS_SB,appid);
      _lart_app->csb = libaroma_canvas_shmem_open(stmp);
      
      /* set process name */
      lart_application_set_process_name(NULL);
    }
    
    if(
        _lart_app->cfb&&
        _lart_app->csb&&
        (_lart_app->wfd>0)&&
        (_lart_app->rfd>0)&&
        (_lart_app->efd>0)
      ){
      LARTLOGV("INIT NEW APPLICATION (id:%i,pid:%i,program:%s)",
        _lart_app->aid, _lart_app->pid, program?program:""
      );
      
      /* load system & app zips */
      _lart_app_sys_zip = libaroma_zip(LART_SYSUI_ZIP_PATH);
      _lart_app_zip     = NULL;
      
      /* now init app libaroma */
      if (lart_libaroma_start()){
        /* set uri callback */
        libaroma_stream_set_uri_callback(_lart_app_stream_uri_cb);
        
        /* load default font */
        libaroma_font(0,libaroma_stream(LART_APP_MAINFONT_URI));
      
        /* run application */
        app_ret = lart_app_run(program, param);
      }
      lart_libaroma_end();
      
      if (_lart_app_sys_zip){
        libaroma_zip_release(_lart_app_sys_zip);
        _lart_app_sys_zip=NULL;
      }
      if (_lart_app_zip){
        libaroma_zip_release(_lart_app_zip);
        _lart_app_zip=NULL;
      }
    }
    else{
      LARTLOGE("NEW APPLICATION ERROR "
        "(id:%i,pid:%i,program:%s)",
        _lart_app->aid, _lart_app->pid, program?program:""
      );
    }
    
    /* send exit message */
    lart_app_command(LART_REQ_CMD_EXIT,0,NULL,0,NULL,NULL,NULL);
    
    /* close canvases */
    if (_lart_app->cfb){
      libaroma_canvas_free(_lart_app->cfb);
    }
    if (_lart_app->csb){
      libaroma_canvas_free(_lart_app->csb);
    }
    
    /* close pipes */
    if (_lart_app->wfd>0){
      close(_lart_app->wfd);
    }
    if (_lart_app->rfd>0){
      close(_lart_app->rfd);
    }
    if (_lart_app->efd>0){
      close(_lart_app->efd);
    }
    
    /* exit log */
    LARTLOGV(
      "APPLICATION EXITED (id:%i,pid:%i,path:%s)",
      _lart_app->aid, _lart_app->pid, program
    );
    
    /* free application instance */
    free(_lart_app);
    _lart_app=NULL;
    exit(app_ret);
  }
  else if (apid>0){
    _lart_app_manager_waitforpid(apid);
  }
  return apid;
}

/* start app manager */
int lart_app_manager(
  LART_APP_RUN_HANDLER run_handler
){
  byte running = 1;
  int retval=0;
  _lart_app_run_cb = run_handler;
  LARTLOGI("Starting application manager");
  
  while (running){
    dword param = 0;
    voidp data  = NULL;
    size_t len  = 0;
    byte status = lart_rrecv(&param, &data, &len);
    
    switch (status){
      case LART_ROOT_MSG_CREATE_APP:
        {
          LARTLOGI("Create APP Command Received len=%i",len);
          LART_NEW_APP_RES_DATA res={0};
          res.aid = 0;
          res.pid = -1;
          if ((len==sizeof(LART_NEW_APP_DATA))&&(data)){
            LARTLOGI("LART_NEW_APP_DATA Init");
            LART_NEW_APP_DATA * reqapp = (LART_NEW_APP_DATA *) data;
            res.aid = reqapp->aid;
            res.pid = lart_app_create(
              reqapp->aid,
              reqapp->program,
              reqapp->param,
              reqapp->dpi
            );
            lart_rsend(
              LART_ROOT_MSG_CREATE_APP_RES,
              1 /* processed */,  &res, sizeof(LART_NEW_APP_RES_DATA)
            );
          }
          else{
            LARTLOGI("LART_NEW_APP_DATA Corrupt");
            lart_rsend(
              LART_ROOT_MSG_CREATE_APP_RES,
              0, NULL, 0 /* failed - bad message */
            );
          }
        }
        break;
      case LART_ROOT_MSG_TERMINATED:
        {
          /* terminate runtime */
          running = 0;
          retval = (int) param;
        }
        break;
    }
    
    if (len>0){
      free(data);
      data=NULL;
      len=0;
    }
  }
  
  LARTLOGI("Application manager stopped: %i",retval);
  sleep(2);
  return retval;
}

#endif /* __libaromart_app_c__ */
