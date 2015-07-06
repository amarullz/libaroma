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

/* start runtime */
int lart_start(
    LART_APP_RUN_HANDLER run_handler,
    LART_SYSTEM_UI_HANDLER sysui_handler
  ){
  byte process_type = lart_init_runtime();
  if (process_type==2){
    /* sys ui */
    int ret=lart_sysui(sysui_handler);
    exit(ret);
    return 0;
  }
  else if (process_type==1){
    /* app manager */
    return lart_app_manager(run_handler);
  }
  return 0;
}


#endif /* __libaromart_core_c__ */
