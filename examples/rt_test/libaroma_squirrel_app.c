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
 * Filename    : libaroma_squirrel.c
 * Description : libaroma squirrel wrapper - Application Class
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 09/07/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_libaroma_squirrel_app_c__
#define __libaroma_libaroma_squirrel_app_c__
#include "libaroma_squirrel_internal.h"
#define _CURR_CLASS_NAME app

/**
 ** FUNCTIONS
 **/
static SQInteger LASQ_CFUNC_NAME(destroy)(SQUserPointer p, SQInteger size)
{
	int * self = ((int *)p);
	if (self){
	  free(self);
	}
	printf("----> aroma release hook\n");
	return 1;
}
LASQ_FUNC(constructor){
  int * me = calloc(sizeof(int),1);
  me[0] = 420;
	sq_setinstanceup(v,1,me);
	sq_setreleasehook(v,1,LASQ_CFUNC_NAME(destroy));
	printf("----> aroma constructor\n");
	return 0;
}

LASQ_FUNC(test){
  int * self = NULL;
  const SQChar * str = NULL;
	sq_getinstanceup(v,1,(SQUserPointer *) &self, 0);
  sq_getstring(v, 2, &str);
  printf("AROMA Test Func Called(%i) -> %s\n",
    (self?self[0]:0),
    (str?str:"UNDEFINED")
  );
	sq_pushstring(v,_SC("aroma test return"),-1);
	return 1;
}

/**
 ** METHOD OBJECTS
 **/
LASQ_REG(){
  LASQ_DECL_N(constructor),
  LASQ_DECL(test,2,"xs"),
  {0,0}
};

/**
 ** REGISTER FUNCTION
 **/
LASQ_REGISTER_FUNC("Application")


#endif /* __libaroma_libaroma_squirrel_app_c__ */
