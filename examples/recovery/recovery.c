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
 * Filename    : recovery.c
 * Description : recovery test program
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_recovery_c__
#define __libaroma_recovery_c__

/* include recovery header */
#include <recovery.h>

/*
 * Function    : main
 * Return Value: int
 * Descriptions: main executable function
 */
int main(int argc, char **argv){
  if (!recovery_init()){
    return -1;
  }
  
  /* start mainmenu */
  recovery_mainmenu();
  
  if (!recovery_release()){
    return 1;
  }
  
  return 0;
} /* End of main */

#endif /* __libaroma_recovery_c__ */
