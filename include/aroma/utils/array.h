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
 * Filename    : array.h
 * Description : libaroma array
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_array_h__
#define __libaroma_array_h__

/*
 * Typedef     : LIBAROMA_ARRAY_FREE_CB
 * Descriptions: array free callback
 */
typedef void (*LIBAROMA_ARRAY_FREE_CB)(
    void *);

/*
 * Structure   : _LIBAROMA_IARRAY_ITEM
 * Typedef     : LIBAROMA_IARRAY_ITEM, * LIBAROMA_IARRAY_ITEMP
 * Descriptions: integer key array item
 */
typedef struct _LIBAROMA_IARRAY_ITEM LIBAROMA_IARRAY_ITEM;
typedef struct _LIBAROMA_IARRAY_ITEM * LIBAROMA_IARRAY_ITEMP;
struct _LIBAROMA_IARRAY_ITEM{
  int key;
  voidp val;
  LIBAROMA_IARRAY_ITEMP  next;
};

/*
 * Structure   : _LIBAROMA_IARRAY
 * Typedef     : LIBAROMA_IARRAY, * LIBAROMA_IARRAYP
 * Descriptions: integer key array
 */
typedef struct _LIBAROMA_IARRAY LIBAROMA_IARRAY;
typedef struct _LIBAROMA_IARRAY * LIBAROMA_IARRAYP;
struct _LIBAROMA_IARRAY{
  int n;
  LIBAROMA_IARRAY_ITEMP first;
  LIBAROMA_IARRAY_ITEMP last;
  LIBAROMA_ARRAY_FREE_CB cb;
};

/*
 * Structure   : _LIBAROMA_SARRAY_ITEM
 * Typedef     : LIBAROMA_SARRAY_ITEM, * LIBAROMA_SARRAY_ITEMP
 * Descriptions: string key array item
 */
typedef struct _LIBAROMA_SARRAY_ITEM LIBAROMA_SARRAY_ITEM;
typedef struct _LIBAROMA_SARRAY_ITEM * LIBAROMA_SARRAY_ITEMP;
struct _LIBAROMA_SARRAY_ITEM{
  char * key;
  dword hash;
  voidp val;
  LIBAROMA_SARRAY_ITEMP next;
};

/*
 * Structure   : _LIBAROMA_SARRAY
 * Typedef     : LIBAROMA_SARRAY, * LIBAROMA_SARRAYP
 * Descriptions: string key array
 */
typedef struct _LIBAROMA_SARRAY LIBAROMA_SARRAY;
typedef struct _LIBAROMA_SARRAY * LIBAROMA_SARRAYP;
struct _LIBAROMA_SARRAY{
  int n;
  LIBAROMA_SARRAY_ITEMP first;
  LIBAROMA_SARRAY_ITEMP last;
  LIBAROMA_ARRAY_FREE_CB cb;
};

/*
 * Structure   : _LIBAROMA_STACK_ITEM
 * Typedef     : LIBAROMA_STACK_ITEM, * LIBAROMA_STACK_ITEMP
 * Descriptions: stack array item
 */
typedef struct _LIBAROMA_STACK_ITEM LIBAROMA_STACK_ITEM;
typedef struct _LIBAROMA_STACK_ITEM * LIBAROMA_STACK_ITEMP;
struct _LIBAROMA_STACK_ITEM{
  voidp val;
  LIBAROMA_STACK_ITEMP prev;
  LIBAROMA_STACK_ITEMP next;
};

/*
 * Structure   : _LIBAROMA_STACK
 * Typedef     : LIBAROMA_STACK, * LIBAROMA_STACKP
 * Descriptions: stack array
 */
typedef struct _LIBAROMA_STACK LIBAROMA_STACK;
typedef struct _LIBAROMA_STACK * LIBAROMA_STACKP;
struct _LIBAROMA_STACK{
  int n;
  LIBAROMA_STACK_ITEMP first;
  LIBAROMA_STACK_ITEMP last;
  LIBAROMA_ARRAY_FREE_CB cb;
};

/*
 * Function    : libaroma_iarray
 * Return Value: LIBAROMA_IARRAYP
 * Descriptions: new iarray
 */
LIBAROMA_IARRAYP libaroma_iarray(
    LIBAROMA_ARRAY_FREE_CB cb);

/*
 * Function    : libaroma_iarray_set_ex
 * Return Value: byte
 * Descriptions: set value - extended
 */
byte libaroma_iarray_set_ex(
    LIBAROMA_IARRAYP a,
    int key,
    voidp val,
    size_t sz,
    byte use_freecb,
    byte unshift);

/*
 * Function    : libaroma_iarray_unshift
 * Return Value: byte
 * Descriptions: set value - unshift
 */
byte libaroma_iarray_unshift(
    LIBAROMA_IARRAYP a,
    int key,
    voidp val,
    size_t sz,
    byte use_freecb);

/*
 * Function    : libaroma_iarray_set
 * Return Value: byte
 * Descriptions: set value
 */
byte libaroma_iarray_set(
    LIBAROMA_IARRAYP a, 
    int key, 
    voidp val, 
    size_t sz, 
    byte use_freecb);

/*
 * Function    : libaroma_iarray_set_string
 * Return Value: byte
 * Descriptions: set string value
 */
byte libaroma_iarray_set_string(
    LIBAROMA_IARRAYP a, 
    int key, 
    char * val);

/*
 * Function    : libaroma_iarray_get
 * Return Value: voidp
 * Descriptions: get value
 */
voidp libaroma_iarray_get(
    LIBAROMA_IARRAYP a, 
    int key);

/*
 * Function    : libaroma_iarray_get_string
 * Return Value: char *
 * Descriptions: get string value
 */
char * libaroma_iarray_get_string(
    LIBAROMA_IARRAYP a, 
    int key);

/*
 * Function    : libaroma_iarray_delete
 * Return Value: byte
 * Descriptions: delete value
 */
byte libaroma_iarray_delete(
    LIBAROMA_IARRAYP a,
    int key);

/*
 * Function    : libaroma_iarray_free
 * Return Value: byte
 * Descriptions: free iarray
 */
byte libaroma_iarray_free(
    LIBAROMA_IARRAYP a);

/*
 * Function    : libaroma_sarray
 * Return Value: LIBAROMA_SARRAYP
 * Descriptions: new sarray
 */
LIBAROMA_SARRAYP libaroma_sarray(
    LIBAROMA_ARRAY_FREE_CB cb);

/*
 * Function    : libaroma_sarray_set
 * Return Value: byte
 * Descriptions: set value
 */
byte libaroma_sarray_set(
    LIBAROMA_SARRAYP a,
    char * key,
    voidp val,
    size_t sz,
    byte use_freecb);

/*
 * Function    : libaroma_sarray_set_string
 * Return Value: byte
 * Descriptions: set string value
 */
byte libaroma_sarray_set_string(
    LIBAROMA_SARRAYP a,
    char * key,
    char * val);

/*
 * Function    : libaroma_sarray_get
 * Return Value: voidp
 * Descriptions: get value
 */
voidp libaroma_sarray_get(
    LIBAROMA_SARRAYP a,
    char * key);

/*
 * Function    : libaroma_sarray_get_string
 * Return Value: char *
 * Descriptions: get string value
 */
char * libaroma_sarray_get_string(
    LIBAROMA_SARRAYP a,
    char * key);

/*
 * Function    : libaroma_sarray_delete
 * Return Value: byte
 * Descriptions: delete value
 */
byte libaroma_sarray_delete(
    LIBAROMA_SARRAYP a,
    char * key);

/*
 * Function    : libaroma_sarray_free
 * Return Value: byte
 * Descriptions: free sarray
 */
byte libaroma_sarray_free(
    LIBAROMA_SARRAYP a);

/*
 * Function    : libaroma_stack
 * Return Value: LIBAROMA_STACKP
 * Descriptions: new stack
 */
LIBAROMA_STACKP libaroma_stack(
    LIBAROMA_ARRAY_FREE_CB cb);

/*
 * Function    : libaroma_stack_push
 * Return Value: byte
 * Descriptions: push item
 */
byte libaroma_stack_push(
    LIBAROMA_STACKP a,
    voidp val,
    size_t sz);

/*
 * Function    : libaroma_stack_shift
 * Return Value: voidp
 * Descriptions: shift item
 */
voidp libaroma_stack_shift(
    LIBAROMA_STACKP a);

/*
 * Function    : libaroma_stack_shift_string
 * Return Value: char *
 * Descriptions: shift item as string
 */
char * libaroma_stack_shift_string(
    LIBAROMA_STACKP a);

/*
 * Function    : libaroma_stack_pop
 * Return Value: voidp
 * Descriptions: pop item
 */
voidp libaroma_stack_pop(
    LIBAROMA_STACKP a);

/*
 * Function    : libaroma_stack_pop_string
 * Return Value: char *
 * Descriptions: pop item
 */
char * libaroma_stack_pop_string(
    LIBAROMA_STACKP a);

/*
 * Function    : libaroma_stack_push_string
 * Return Value: byte
 * Descriptions: push string item
 */
byte libaroma_stack_push_string(
    LIBAROMA_STACKP a,
    char * val);

/*
 * Function    : libaroma_stack_unshift
 * Return Value: byte
 * Descriptions: unshift item
 */
byte libaroma_stack_unshift(
    LIBAROMA_STACKP a,
    voidp val,
    size_t sz);

/*
 * Function    : libaroma_stack_unshift_string
 * Return Value: byte
 * Descriptions: unshift string item
 */
byte libaroma_stack_unshift_string(
    LIBAROMA_STACKP a,
    char * val);

/*
 * Function    : libaroma_stack_first
 * Return Value: LIBAROMA_STACK_ITEMP
 * Descriptions: first item
 */
LIBAROMA_STACK_ITEMP libaroma_stack_first(
    LIBAROMA_STACKP a);

/*
 * Function    : libaroma_stack_last
 * Return Value: LIBAROMA_STACK_ITEMP
 * Descriptions: last item
 */
LIBAROMA_STACK_ITEMP libaroma_stack_last(
    LIBAROMA_STACKP a);

/*
 * Function    : libaroma_stack_next
 * Return Value: LIBAROMA_STACK_ITEMP
 * Descriptions: next item
 */
LIBAROMA_STACK_ITEMP libaroma_stack_next(
    LIBAROMA_STACK_ITEMP a);

/*
 * Function    : libaroma_stack_prev
 * Return Value: LIBAROMA_STACK_ITEMP
 * Descriptions: previous item
 */
LIBAROMA_STACK_ITEMP libaroma_stack_prev(
    LIBAROMA_STACK_ITEMP a);

/*
 * Function    : libaroma_stack_item_val
 * Return Value: voidp
 * Descriptions: item value
 */
voidp libaroma_stack_item_val(
    LIBAROMA_STACK_ITEMP a);

/*
 * Function    : libaroma_stack_item_val_string
 * Return Value: char *
 * Descriptions: string item value
 */
char * libaroma_stack_item_val_string(
    LIBAROMA_STACK_ITEMP a);

/*
 * Function    : libaroma_stack_item_set
 * Return Value: byte
 * Descriptions: set item value
 */
byte libaroma_stack_item_set(
    LIBAROMA_STACKP ag,
    LIBAROMA_STACK_ITEMP a,
    voidp val,
    size_t sz,
    byte use_freecb);

/*
 * Function    : libaroma_stack_item_set_string
 * Return Value: byte
 * Descriptions: set item string value
 */
byte libaroma_stack_item_set_string(
    LIBAROMA_STACKP ag,
    LIBAROMA_STACK_ITEMP a,
    char * val);

/*
 * Function    : libaroma_stack_item_delete
 * Return Value: byte
 * Descriptions: delete item
 */
byte libaroma_stack_item_delete(
    LIBAROMA_STACKP a,
    LIBAROMA_STACK_ITEMP ai);

/*
 * Function    : libaroma_stack_get_pos
 * Return Value: int
 * Descriptions: get item position
 */
int libaroma_stack_get_pos(
    LIBAROMA_STACKP a,
    LIBAROMA_STACK_ITEMP ai);

/*
 * Function    : libaroma_stack_at
 * Return Value: LIBAROMA_STACK_ITEMP
 * Descriptions: get item at position
 */
LIBAROMA_STACK_ITEMP libaroma_stack_at(
    LIBAROMA_STACKP a,
    int pos);

/*
 * Function    : libaroma_stack_get
 * Return Value: voidp
 * Descriptions: get item value at position
 */
voidp libaroma_stack_get(
    LIBAROMA_STACKP a,
    int pos);

/*
 * Function    : libaroma_stack_get_string
 * Return Value: char *
 * Descriptions: get string item value at position
 */
char * libaroma_stack_get_string(
    LIBAROMA_STACKP a,
    int pos);

/*
 * Function    : libaroma_stack_set
 * Return Value: char *
 * Descriptions: set item value at position
 */
byte libaroma_stack_set(
    LIBAROMA_STACKP a,
    int pos,
    voidp val,
    size_t sz,
    byte use_freecb);

/*
 * Function    : libaroma_stack_set_string
 * Return Value: byte
 * Descriptions: set string item value at position
 */
byte libaroma_stack_set_string(
    LIBAROMA_STACKP a,
    int pos,
    char * val);

/*
 * Function    : libaroma_stack_delete
 * Return Value: byte
 * Descriptions: delete item at position
 */
byte libaroma_stack_delete(
    LIBAROMA_STACKP a,
    int pos);

/*
 * Function    : libaroma_stack_add_at
 * Return Value: byte
 * Descriptions: add item at position
 */
byte libaroma_stack_add_at(
    LIBAROMA_STACKP a,
    int pos,
    voidp val,
    size_t sz);

/*
 * Function    : libaroma_stack_add_at_string(
 * Return Value: byte
 * Descriptions: add string item at position
 */
byte libaroma_stack_add_at_string(
    LIBAROMA_STACKP a,
    int pos,
    char * val);

/*
 * Function    : libaroma_stack_free
 * Return Value: byte
 * Descriptions: free stack
 */
byte libaroma_stack_free(
    LIBAROMA_STACKP a);

#endif /* __libaroma_array_h__ */
