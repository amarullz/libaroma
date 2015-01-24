/********************************************************************[libaroma]*
 * Copyright (c) 2009 Dave Gamble
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 * 
 * cJSON
 * JSON parser in C.
 *______________________________________________________________________________
 *
 * Filename    : json.h
 * Description : json utility
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + cJSON - Dave Gamble
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_json_h__
#define __libaroma_json_h__

/* cJSON - Headers */
#define cJSON_False 0
#define cJSON_True 1
#define cJSON_NULL 2
#define cJSON_Number 3
#define cJSON_String 4
#define cJSON_Array 5
#define cJSON_Object 6
#define cJSON_IsReference 256
typedef struct cJSON {
  struct cJSON * next, *prev;
  struct cJSON * child;  
  int type;
  char * valuestring;	
  int valueint;
  double valuedouble;
  char * string;
} cJSON;
typedef struct cJSON_Hooks {
  void * (*malloc_fn)(size_t sz);
  void (*free_fn)(void * ptr);
} cJSON_Hooks;
extern void cJSON_InitHooks(cJSON_Hooks * hooks);
extern cJSON * cJSON_Parse(const char * value);
extern char * cJSON_Print(cJSON * item);
extern char * cJSON_PrintUnformatted(cJSON * item);
extern void   cJSON_Delete(cJSON * c);
extern int	  cJSON_GetArraySize(cJSON * array);
extern cJSON * cJSON_GetArrayItem(cJSON * array, int item);
extern cJSON * cJSON_GetObjectItem(cJSON * object, const char * string);
extern const char * cJSON_GetErrorPtr(void);
extern cJSON * cJSON_CreateNull(void);
extern cJSON * cJSON_CreateTrue(void);
extern cJSON * cJSON_CreateFalse(void);
extern cJSON * cJSON_CreateBool(int b);
extern cJSON * cJSON_CreateNumber(double num);
extern cJSON * cJSON_CreateString(const char * string);
extern cJSON * cJSON_CreateArray(void);
extern cJSON * cJSON_CreateObject(void);
extern cJSON * cJSON_CreateIntArray(const int * numbers, int count);
extern cJSON * cJSON_CreateFloatArray(const float * numbers, int count);
extern cJSON * cJSON_CreateDoubleArray(const double * numbers, int count);
extern cJSON * cJSON_CreateStringArray(const char ** strings, int count);
extern void cJSON_AddItemToArray(cJSON * array, cJSON * item);
extern void	cJSON_AddItemToObject(cJSON * object, const char * string, cJSON * item);
extern void cJSON_AddItemReferenceToArray(cJSON * array, cJSON * item);
extern void	cJSON_AddItemReferenceToObject(cJSON * object, const char * string, cJSON * item);
extern cJSON * cJSON_DetachItemFromArray(cJSON * array, int which);
extern void   cJSON_DeleteItemFromArray(cJSON * array, int which);
extern cJSON * cJSON_DetachItemFromObject(cJSON * object, const char * string);
extern void   cJSON_DeleteItemFromObject(cJSON * object, const char * string);
extern void cJSON_ReplaceItemInArray(cJSON * array, int which, cJSON * newitem);
extern void cJSON_ReplaceItemInObject(cJSON * object, const char * string, cJSON * newitem);
extern cJSON * cJSON_Duplicate(cJSON * item, int recurse);
extern cJSON * cJSON_ParseWithOpts(const char * value, const char ** return_parse_end, int require_null_terminated);
extern void cJSON_Minify(char * json);
#define cJSON_AddNullToObject(object,name)		cJSON_AddItemToObject(object, name, cJSON_CreateNull())
#define cJSON_AddTrueToObject(object,name)		cJSON_AddItemToObject(object, name, cJSON_CreateTrue())
#define cJSON_AddFalseToObject(object,name)		cJSON_AddItemToObject(object, name, cJSON_CreateFalse())
#define cJSON_AddBoolToObject(object,name,b)	cJSON_AddItemToObject(object, name, cJSON_CreateBool(b))
#define cJSON_AddNumberToObject(object,name,n)	cJSON_AddItemToObject(object, name, cJSON_CreateNumber(n))
#define cJSON_AddStringToObject(object,name,s)	cJSON_AddItemToObject(object, name, cJSON_CreateString(s))
#define cJSON_SetIntValue(object,val)			((object)?(object)->valueint=(object)->valuedouble=(val):(val))

/*
 * LIBAROMA WRAPPER
 */
typedef cJSON LIBAROMA_JSON;
typedef cJSON * LIBAROMA_JSONP;
#define libaroma_json(x)          cJSON_Parse(x)
#define libaroma_json_free(x)      cJSON_Delete(x)
#define libaroma_json_is_object(x)  ((x)->type==cJSON_Object)
#define libaroma_json_is_array(x)   ((x)->type==cJSON_Array)
#define libaroma_json_is_string(x)  ((x)->type==cJSON_String)
#define libaroma_json_is_number(x)  ((x)->type==cJSON_Number)
#define libaroma_json_is_null(x)    ((x)->type==cJSON_NULL)
#define libaroma_json_is_true(x)    ((x)->type==cJSON_True)
#define libaroma_json_is_false(x)   ((x)->type==cJSON_False)
#define libaroma_json_array(x,n)   cJSON_GetArrayItem((x),(n))
#define libaroma_json_array_size(x) cJSON_GetArraySize(x)
#define libaroma_json_object(x,n)  cJSON_GetObjectItem((x),(n))
#define libaroma_json_string(x)    ((x)->valuestring)
#define libaroma_json_int(x)       ((x)->valueint)
#define libaroma_json_float(x)     ((x)->valuedouble)
#define libaroma_json_bool(x)      (!libaroma_json_is_false(x)&&!libaroma_json_is_null(x))

#endif /* __libaroma_json_h__ */
