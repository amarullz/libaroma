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
 * Filename    : libaroma_squirrel.h
 * Description : libaroma squirrel wrapper header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 09/07/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_libaroma_squirrel_internal_h__
#define __libaroma_libaroma_squirrel_internal_h__
#include "libaroma_squirrel.h"

/************************ SQUIRREL REGISTER MACRO *****************************/
#define __LASQ_PUBLIC   lasq
#define __LASQ_         _lasq
#define __LASQ_OBJ      _obj
#define __LASQ_REGISTER _register
#define __LASQ_USC      _
#define __LASQ_FN_      _lasq_fn_
#define LASQ_CONCAT_EX(a,b,c,d) a##b##c##d
#define LASQ_CONCAT(a,b,c,d) LASQ_CONCAT_EX(a,b,c,d)
#define LASQ_OBJ_NAME(cname) LASQ_CONCAT(__LASQ_,__LASQ_OBJ,__LASQ_USC,cname)
#define LASQ_COBJ_NAME() LASQ_OBJ_NAME(_CURR_CLASS_NAME)
#define LASQ_FUNC_NAME(cname,name) LASQ_CONCAT(__LASQ_FN_,cname,__LASQ_USC,name)
#define LASQ_CFUNC_NAME(name) LASQ_FUNC_NAME(_CURR_CLASS_NAME,name)
#define LASQ_FUNC(name) \
  static SQInteger LASQ_CFUNC_NAME(name)(HSQUIRRELVM v)
#define LASQ_DECL(name,nparams,pmask) \
  {_SC(#name),LASQ_CFUNC_NAME(name),nparams,_SC(pmask)}
#define LASQ_DECL_N(name) \
  {_SC(#name),LASQ_CFUNC_NAME(name),1,NULL}
#define LASQ_REG() \
  static SQRegFunction LASQ_OBJ_NAME(_CURR_CLASS_NAME)[]=
  
#define LASQ_REG_FN(className) \
  LASQ_CONCAT(__LASQ_PUBLIC,__LASQ_REGISTER,__LASQ_USC,className)
#define LASQ_REGISTER_FUNC(className) \
  void LASQ_REG_FN(_CURR_CLASS_NAME) \
    (HSQUIRRELVM v){ \
    sq_pushstring(v,_SC(className),-1); \
  	sq_newclass(v,SQFalse); \
  	SQInteger i = 0; \
  	while(LASQ_COBJ_NAME()[i].name != 0) { \
  		sq_pushstring(v,LASQ_COBJ_NAME()[i].name,-1); \
  		sq_newclosure(v,LASQ_COBJ_NAME()[i].f,0); \
  		sq_setparamscheck(v,LASQ_COBJ_NAME()[i].nparamscheck, \
  		  LASQ_COBJ_NAME()[i].typemask); \
  		sq_setnativeclosurename(v,-1,LASQ_COBJ_NAME()[i].name); \
  		sq_newslot(v,-3,SQFalse); \
  		i++; \
  	} \
  	sq_newslot(v,-3,SQFalse); \
  }
#define LASQ_REGISTER_HEADER(className) \
  void LASQ_REG_FN(className)(HSQUIRRELVM v)
    
#ifdef _CURR_CLASS_NAME
  #undef _CURR_CLASS_NAME
#endif

/************************ REGISTER CLASS FUNCTIONS ****************************/
LASQ_REGISTER_HEADER(app); /* Application */
LASQ_REGISTER_HEADER(libaroma); /* Libaroma */

#endif /* __libaroma_libaroma_squirrel_internal_h__ */
