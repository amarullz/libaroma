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
 * Filename    : libaroma_squirrel_utils.c
 * Description : libaroma squirrel wrapper - Utils Class
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 7/24/2015 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_libaroma_squirrel_utils_c__
#define __libaroma_libaroma_squirrel_utils_c__
#include "libaroma_squirrel_internal.h"
#define _CURR_CLASS_NAME libaroma

/************************************ TIME ************************************/
/*
 * void libaroma.sleep(int duration)
 */
LASQ_FUNC(sleep){
  SQInteger i;
  sq_getinteger(v, 2, &i);
  libaroma_extern_sleep((long)i);
	return 0;
}
/*
 * int libaroma.tick()
 */
LASQ_FUNC(tick){
  SQInteger i = (SQInteger) libaroma_extern_tick();
  sq_pushinteger(v, i);
	return 1;
}

/************************************ STREAM **********************************/
/*
 * stream libaroma.stream(str uri)
 */
LASQ_FUNC(stream){
  const SQChar * uri = NULL;
  sq_getstring(v, 2, &uri);
  if (uri){
    LIBAROMA_STREAMP stream = libaroma_stream((char *) uri);
    if (stream){
      sq_pushuserpointer(v, (SQUserPointer) stream);
      return 1;
    }
  }
  sq_pushbool(v, SQFalse);
	return 1;
}
/*
 * bool libaroma.stream_close(stream streamResource)
 */
LASQ_FUNC(stream_close){
  SQUserPointer streamp = NULL;
  sq_getuserpointer(v, 2, &streamp);
  if (streamp){
    if (libaroma_stream_close((LIBAROMA_STREAMP) streamp)){
      sq_pushbool(v, SQTrue);
	    return 1;
    }
  }
  sq_pushbool(v, SQFalse);
	return 1;
}
/*
 * string libaroma.stream_to_string(stream streamResource)
 */
LASQ_FUNC(stream_to_string){
  SQUserPointer streamp = NULL;
  sq_getuserpointer(v, 2, &streamp);
  if (streamp){
    char * out = libaroma_stream_to_string((LIBAROMA_STREAMP) streamp,0);
    if (out){
      sq_pushstring(v, out, -1);
      free(out);
	    return 1;
    }
  }
  sq_pushbool(v, SQFalse);
	return 1;
}

/************************************ SYSTEM **********************************/
/*
 * string libaroma.getprop(str key, stream streamResource)
 */
LASQ_FUNC(getprop){
  SQUserPointer streamp = NULL;
  const SQChar * key = NULL;
  sq_getstring(v, 2, &key);
  sq_getuserpointer(v, 3, &streamp);
  if (streamp&&key){
    char * keyc = strdup(key);
    if (keyc){
      char * out = libaroma_getprop(keyc,(LIBAROMA_STREAMP) streamp,0);
      free(keyc);
      if (out){
        sq_pushstring(v, out, -1);
        free(out);
  	    return 1;
      }
    }
  }
  sq_pushbool(v, SQFalse);
	return 1;
}



/**
 ** METHOD OBJECTS
 **/
LASQ_REG(){
  LASQ_DECL(sleep,2,".i"),
  LASQ_DECL_N(tick),
  
  LASQ_DECL(stream,2,".s"),
  LASQ_DECL(stream_close,2,".p"),
  LASQ_DECL(stream_to_string,2,".p"),
  LASQ_DECL(getprop,3,".sp"),
  
  {0,0}
};

/**
 ** REGISTER FUNCTION
 **/
LASQ_REGISTER_FUNC("libaroma")


#endif /* __libaroma_libaroma_squirrel_utils_c__ */
