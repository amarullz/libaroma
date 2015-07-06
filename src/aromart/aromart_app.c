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

/* run application */
int lart_app_run(char * program, char * param){
  if (_lart_app_run_cb){
    return _lart_app_run_cb(program, param);
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
  return lart_command(
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
    int app_ret = -1;
    _lart_app = (LARTAPP *) calloc(sizeof(LARTAPP),1);
    _lart_app->aid = appid;
    _lart_app->pid = getpid();
    _lart_app->dpi = dpi;
    
    
    {
      /* init pipe */
      char stmp[256];
      snprintf(stmp,256,LART_NAMED_PIPE_APP_WRITE,appid);
      _lart_app->wfd=open(stmp,O_WRONLY);
      snprintf(stmp,256,LART_NAMED_PIPE_APP_READ,appid);
      _lart_app->rfd=open(stmp,O_RDONLY);
      snprintf(stmp,256,LART_NAMED_PIPE_APP_EVENT,appid);
      _lart_app->efd=open(stmp,O_RDONLY);
      
      /* init canvases */
      snprintf(stmp,256,LART_SHMCANVAS_FB,appid);
      _lart_app->cfb = libaroma_canvas_shmem_open(stmp);
      snprintf(stmp,256,LART_SHMCANVAS_SB,appid);
      _lart_app->csb = libaroma_canvas_shmem_open(stmp);
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
      if (lart_libaroma_start()){ /* now init app libaroma */
        /* run application */
        app_ret = lart_app_run(program, param);
      }
      lart_libaroma_end();
    }
    else{
      LARTLOGE("NEW APPLICATION ERROR "
        "(id:%i,pid:%i,program:%s)",
        _lart_app->aid, _lart_app->pid, program?program:""
      );
    }
    
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
    
    /* send exit message */
    lart_app_command(LART_REQ_CMD_EXIT,0,NULL,0,NULL,NULL,NULL);
    
    /* exit log */
    LARTLOGV(
      "APPLICATION EXITED (id:%i,pid:%i,path:%s)",
      _lart_app->aid, _lart_app->pid, _lart_app->program
    );
    
    /* free application instance */
    free(_lart_app);
    _lart_app=NULL;
    exit(app_ret);
  }
  return apid;
}

/* start app manager */
int lart_app_manager(
  LART_APP_RUN_HANDLER run_handler
){
  byte running = 1;
  int res=0;
  _lart_app_run_cb = run_handler;
  LARTLOGI("Starting application manager");
  
  while (running){
    dword param = 0;
    voidp data  = NULL;
    size_t len  = 0;
    byte status = lart_rrecv(&param, data, &len);
    
    switch (status){
      case LART_ROOT_MSG_CREATE_APP:
        {
          LART_NEW_APP_RES_DATA res={0};
          res.aid = 0;
          res.pid = -1;
          if ((len==sizeof(LART_NEW_APP_DATA))&&(data)){
            LART_NEW_APP_DATA * reqapp = (LART_NEW_APP_DATA *) data;
            res.aid = reqapp->appid;
            res.pid = lart_app_create(
              reqapp->appid,
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
          res = (int) param;
        }
        break;
    }
    
    if (len>0){
      free(data);
      data=NULL;
      len=0;
    }
  }
  
  LARTLOGI("Application manager stopped: %i",res);
  return res;
}

#endif /* __libaromart_app_c__ */
