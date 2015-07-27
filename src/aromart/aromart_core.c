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
 * Filename    : aromart_core.c
 * Description : AROMA Runtime core source
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaromart_core_c__
#define __libaromart_core_c__
#include "aromart_internal.h"

static LART _lart={0};

/* get aroma runtime instance */
LART * lart(){
  return &_lart;
}

/* init runtime */
byte lart_init_runtime(){
  
  system("rm /tmp/.libaromashm*");
  system("rm /tmp/.aromart*");
  
  int host_pipes[2];
  int remote_pipes[2];
  pipe(host_pipes);
  pipe(remote_pipes);
  
  lart()->mpid  = getpid();
  pid_t pid     = fork();
  if (pid==0){
    /* system ui */
    lart()->spid = getpid();
    lart()->rfd  = remote_pipes[0];
    lart()->wfd  = host_pipes[1];
    close(remote_pipes[1]);
    close(host_pipes[0]);
    return 2; /* sysui process */
  }
  else if (pid){
    lart()->spid = pid;
    lart()->rfd  = host_pipes[0];
    lart()->wfd  = remote_pipes[1];
    close(host_pipes[1]);
    close(remote_pipes[0]);
    return 1; /* manager process */
  }
  return 0; /* failed */
}

static char ** _lart_process_argv = NULL;

/* start runtime */
int lart_start(
    char ** argv,
    LART_APP_RUN_HANDLER run_handler,
    LART_SYSTEM_UI_HANDLER sysui_handler,
    LART_SYSTEM_UI_STATUSBAR_DRAW sysui_sb_draw
  ){
  _lart_process_argv = argv;
  byte process_type = lart_init_runtime();
  if (process_type==2){
    /* sys ui */
    lart_set_process_name("aroma.runtime.systemui");
    int ret=lart_sysui(sysui_handler, sysui_sb_draw);
    exit(ret);
    return 0;
  }
  else if (process_type==1){
    /* app manager */
    lart_set_process_name("aroma.runtime.manager");
    return lart_app_manager(run_handler);
  }
  return 0;
}

/* set process name */
void lart_set_process_name(char * new_name){
  if (new_name == NULL){
    return;
  }
  if (_lart_process_argv!=NULL){
    char tagname[256];
    snprintf(tagname,
      256,
      "%s(%i)",
      new_name,
      getpid()
    );
    libaroma_debug_set_tag(tagname);
    snprintf(_lart_process_argv[0],255,"%s",new_name);
    prctl(PR_SET_NAME, (unsigned long) _lart_process_argv[0], 0, 0, 0);
  }
}

#endif /* __libaromart_core_c__ */
