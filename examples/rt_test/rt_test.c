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
 * Filename    : rt_test.c
 * Description : runtime test program
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_rt_test_c__
#define __libaroma_rt_test_c__
#include <aroma.h>
#include <aromart.h>

#include "libaroma_squirrel.h"
void printfunc(HSQUIRRELVM v,const SQChar *format, ...){
	va_list args;
  va_start(args, format);
  vprintf(format, args);
  va_end(args);
}

int app_run(char * program, char * param){
  int retval = -1;
  HSQUIRRELVM v = sq_open(1024);
	sq_setprintfunc(v, printfunc,printfunc);
	sq_pushroottable(v);
	lasq_register(v);
	
	/* call script */
	char nut_path[256];
	snprintf(nut_path,256,"file:///sdcard/%s.nut",program);
	
	printf("APP PATH: %s\n",nut_path);
	
	char * program_str = libaroma_stream_to_string(libaroma_stream(nut_path),1);
	if (!program_str){
	  goto endit;
	}
	
	printf("CODE:\n%s\n",program_str);
	
  if (SQ_FAILED(sq_compilebuffer(v, _SC(program_str),
       sizeof(SQChar) * strlen(program_str), 
       "program", 
       SQFalse))) {
    goto endit;
  }
  printf("Compiled\n");
	free(program_str);
	
	sq_pushroottable(v);
	if (SQ_FAILED(sq_call(v, 1, SQFalse, SQFalse))) {
	  const SQChar *error;
    sq_getlasterror(v);
    if (SQ_SUCCEEDED(sq_getstring(v, -1, &error))) {
      printf("sqvm error: %s\n", error);
    }
  }
  else{
    printf("Called\n");
  }
	
	/*
	sq_call(v, 1, SQFalse, SQFalse);
	*/
	
endit:
	sq_pop(v,1);
	sq_close(v); 
	return retval;
	
	/*
  
  LIBAROMA_WINDOWP win = libaroma_window(
    NULL, 0, 0, LIBAROMA_SIZE_FULL, LIBAROMA_SIZE_FULL);
  word primary_color = RGB(009385);
  
  if (strcmp(program,"Test2")==0){
    lart_application_set_process_name("com.test2.app");
    primary_color = RGB(446688);
  }
  else if (strcmp(program,"Test3")==0){
    lart_application_set_process_name("com.test3.app");
    primary_color = RGB(666666);
  }
  else{
    lart_application_set_process_name("com.aromadev.recovery");
    
  }
  
  LIBAROMA_CONTROLP bar = libaroma_ctl_bar(
    win, 1,
    0, 0, LIBAROMA_SIZE_FULL, 56,
    program, primary_color, RGB(ffffff)
  );
  libaroma_ctl_bar_set_icon(
    bar,NULL,0,LIBAROMA_CTL_BAR_ICON_DRAWER,0
  );
  libaroma_ctl_bar_set_touchable_title(bar,1);
  
  if (strcmp(program,"Test2")==0){
    libaroma_ctl_button(
      win, 6, 0, 60, LIBAROMA_SIZE_FULL, 60,
      "This is Test 2", LIBAROMA_CTL_BUTTON_RAISED, 0
    );
  }
  else if (strcmp(program,"Test3")==0){
    libaroma_ctl_button(
      win, 6, 0, 60, LIBAROMA_SIZE_FULL, 60,
      "This is Test 3", LIBAROMA_CTL_BUTTON_RAISED, 0
    );
  }
  else{
    libaroma_ctl_button(
      win, 6, 0, 60, LIBAROMA_SIZE_FULL, 60,
      "Start Test App 3", LIBAROMA_CTL_BUTTON_RAISED, 0
    );
    
    libaroma_ctl_button(
      win, 7, 0, 120, LIBAROMA_SIZE_FULL, 60,
      "Start Test App 2", LIBAROMA_CTL_BUTTON_RAISED, 0
    );
  }
  
  
  libaroma_window_show(win);
  lart_application_set_foreground();
  lart_application_set_primary_color(primary_color);
  
  printf("APP ==> POOL\n");
  byte onpool=1;
  do{
    LIBAROMA_MSG msg;
    dword command=libaroma_window_pool(win,&msg);
    byte cmd  = LIBAROMA_CMD(command);
    word id   = LIBAROMA_CMD_ID(command);
    byte param = LIBAROMA_CMD_PARAM(command);
    
    if (cmd==1){
      if (id==1){
        if (param==1){
          printf("Drawer touch exit\n");
          onpool=0;
        }
      }
      else if (id==6){
        if (strcmp(program,"Test1")==0){
          lart_application_start("Test3", "");
        }
      }
      else if (id==7){
        if (strcmp(program,"Test1")==0){
          lart_application_start("Test2", "");
        }
      }
    }
  }while(onpool&&lart_application_is_run());
  
  return 1;*/
}

int sysui_handler(){
  printf("STARTING SYSUI HANDLER\n");
  int newapp=lart_application_start("main","");
  printf("New app id: %i\n",newapp);
  while(lart_sysui_isactive()){
    sleep(5);
    lart_sysui_print_running_apps();
  }
  return 1;
}

void statusbar_ondraw(LIBAROMA_CANVASP cv,word fgcolor){
}


/*
 * Function    : main
 * Return Value: int
 * Descriptions: main executable function
 */
int main(int argc, char **argv){
  FILE * fd = fopen("/dev/kmsg","a+");
  if (fd){
    printf("FD OK\n");
    libaroma_debug_set_output(fd);
  }
  else{
    printf("FD FAILED\n");
  }
  
  return
    lart_start(
      argv,
      app_run,
      sysui_handler,
      statusbar_ondraw
    );
  return 0;
} /* End of main */

#endif /* __libaroma_rt_test_c__ */
