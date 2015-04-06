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
 * Filename    : array.c
 * Description : array
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_array_c__
#define __libaroma_array_c__
#include <aroma_internal.h>

/*
 * Function    : libaroma_iarray
 * Return Value: LIBAROMA_IARRAYP
 * Descriptions: new iarray
 */
LIBAROMA_IARRAYP libaroma_iarray(
    LIBAROMA_ARRAY_FREE_CB cb){
  /* Allocating Memory */
  LIBAROMA_IARRAYP a = (LIBAROMA_IARRAYP) malloc(sizeof(LIBAROMA_IARRAY));
  a->first  = NULL;
  a->last   = NULL;
  a->n      = 0;
  a->cb     = cb;
  return a;
} /* End of libaroma_iarray */

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
    byte unshift) {

  if (!a || !val || (sz == 0)) {
    return 0;
  }
  LIBAROMA_IARRAY_ITEMP item = a->first;
  while (item != NULL) {
    if (item->key == key) {
      break;
    }
    item = item->next;
  }
  if (item != NULL) {
    if (use_freecb) {
      if (a->cb != NULL) {
        a->cb(item->val);
      }
    }
    
    free(item->val);
    item->val = malloc(strlen(val) + 1);
    strcpy(item->val, val);
    return 1;
  }
  item      = malloc(sizeof(LIBAROMA_IARRAY_ITEM));
  item->key = key;
  item->val = malloc(sz);
  if (unshift) {
    item->next = a->first;
  }
  else {
    item->next = NULL;
  }
  memcpy(item->val, val, sz);
  a->n++;
  if (a->first == NULL) {
    a->first  = item;
    a->last   = item;
    return 1;
  }
  if (unshift) {
    a->first  = item;
  }
  else {
    a->last->next = item;
    a->last       = item;
  }
  return 1;
} /* End of libaroma_iarray_set_ex */

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
    byte use_freecb) {
  return libaroma_iarray_set_ex(a, key, val, sz, use_freecb, 1);
} /* End of libaroma_iarray_unshift */

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
    byte use_freecb) {
  return libaroma_iarray_set_ex(a, key, val, sz, use_freecb, 0);
} /* End of libaroma_iarray_set */

/*
 * Function    : libaroma_iarray_set_string
 * Return Value: byte
 * Descriptions: set string value
 */
byte libaroma_iarray_set_string(
    LIBAROMA_IARRAYP a, 
    int key, 
    char * val) {
  return libaroma_iarray_set(a, key, (voidp) val, strlen(val) + 1, 0);
} /* End of libaroma_iarray_set_string */


/*
 * Function    : libaroma_iarray_get
 * Return Value: voidp
 * Descriptions: get value
 */
voidp libaroma_iarray_get(
    LIBAROMA_IARRAYP a, 
    int key) {
  if (!a) {
    return NULL;
  }
  /* Find Key */
  LIBAROMA_IARRAY_ITEMP item = a->first;
  
  while (item != NULL) {
    if (item->key == key) {
      return item->val;
    }
    
    item = item->next;
  }
  
  return NULL;
} /* End of libaroma_iarray_get */

/*
 * Function    : libaroma_iarray_get_string
 * Return Value: char *
 * Descriptions: get string value
 */
char * libaroma_iarray_get_string(
    LIBAROMA_IARRAYP a, 
    int key) {
  return (char *) libaroma_iarray_get(a, key);
} /* End of libaroma_iarray_get_string */

/*
 * Function    : libaroma_iarray_delete
 * Return Value: byte
 * Descriptions: delete value
 */
byte libaroma_iarray_delete(
    LIBAROMA_IARRAYP a,
    int key) {
  if (!a) {
    return 0;
  }
  /* Find Key */
  LIBAROMA_IARRAY_ITEMP item = a->first;
  LIBAROMA_IARRAY_ITEMP prev = NULL;
  while (item != NULL) {
    if (item->key == key) {
      if (prev != NULL) {
        prev->next = item->next;
        
        if (item->next == NULL) {
          a->last   = prev;
        }
      }
      else if (item->next != NULL) {
        a->first  = item->next;
      }
      else {
        a->first  = NULL;
        a->last   = NULL;
      }
      
      a->n--;
      
      /* Free item */
      if (a->cb != NULL) {
        a->cb(item->val);
      }
      
      free(item->val);
      free(item);
      return 1;
    }
    
    prev = item;
    item = item->next;
  }
  return 0;
} /* End of libaroma_iarray_delete */

/*
 * Function    : libaroma_iarray_free
 * Return Value: byte
 * Descriptions: free iarray
 */
byte libaroma_iarray_free(
    LIBAROMA_IARRAYP a) {
  if (!a) {
    return 0;
  }
  /* Loop items */
  LIBAROMA_IARRAY_ITEMP item = a->first;
  LIBAROMA_IARRAY_ITEMP tmp_item;
  while (item != NULL) {
    if (a->cb != NULL) {
      a->cb(item->val);
    }
    free(item->val);
    tmp_item = item;
    item = item->next;
    free(tmp_item);
  }
  free(a);
  return 1;
} /* End of libaroma_iarray_free */

/*
 * Function    : libaroma_sarray
 * Return Value: LIBAROMA_SARRAYP
 * Descriptions: new sarray
 */
LIBAROMA_SARRAYP libaroma_sarray(
    LIBAROMA_ARRAY_FREE_CB cb) {
  LIBAROMA_SARRAYP a = (LIBAROMA_SARRAYP) malloc(sizeof(LIBAROMA_SARRAY));
  a->first  = NULL;
  a->last   = NULL;
  a->n      = 0;
  a->cb     = cb;
  return a;
} /* End of libaroma_sarray */

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
    byte use_freecb) {
  if (!a || !val || !key || (sz == 0)) {
    return 0;
  }
  /* Calculate Hash */
  dword hash = libaroma_hash(key);
  LIBAROMA_SARRAY_ITEMP item = a->first;
  while (item != NULL) {
    /* Fast Search With Hash */
    if (hash == item->hash) {
      /* Make Sure The Key is Identical */
      if (strcmp(item->key, key) == 0) {
        break;
      }
    }
    item = item->next;
  }
  if (item != NULL) {
    if (use_freecb) {
      if (a->cb != NULL) {
        a->cb(item->val);
      }
    }
    free(item->val);
    item->val = malloc(strlen(val) + 1);
    strcpy(item->val, val);
    return 1;
  }
  /* Allocating New Item */
  item      = malloc(sizeof(LIBAROMA_SARRAY_ITEM));
  item->key = malloc(strlen(key) + 1);
  item->hash = hash;
  item->val = malloc(sz);
  item->next = NULL;
  strcpy(item->key, key);
  memcpy(item->val, val, sz);
  a->n++;
  /* If array is empty */
  if (a->first == NULL) {
    a->first  = item;
    a->last   = item;
    return 1;
  }
  /* Save in last stack */
  a->last->next = item;
  a->last       = item;
  return 1;
} /* End of libaroma_sarray_set */

/*
 * Function    : libaroma_sarray_set_string
 * Return Value: byte
 * Descriptions: set string value
 */
byte libaroma_sarray_set_string(
    LIBAROMA_SARRAYP a,
    char * key,
    char * val) {
  return libaroma_sarray_set(a, key, (voidp) val, strlen(val) + 1, 0);
} /* End of libaroma_sarray_set_string */

/*
 * Function    : libaroma_sarray_get
 * Return Value: voidp
 * Descriptions: get value
 */
voidp libaroma_sarray_get(
    LIBAROMA_SARRAYP a,
    char * key) {
  if (!a || !key) {
    return NULL;
  }
  dword hash = libaroma_hash(key);
  LIBAROMA_SARRAY_ITEMP item = a->first;
  while (item != NULL) {
    /* Fast Search With Hash */
    if (hash == item->hash) {
      /* Make Sure The Key is Identical */
      if (strcmp(item->key, key) == 0) {
        return item->val;
      }
    }
    item = item->next;
  }
  return NULL;
} /* End of libaroma_sarray_get */

/*
 * Function    : libaroma_sarray_get_string
 * Return Value: char *
 * Descriptions: get string value
 */
char * libaroma_sarray_get_string(
    LIBAROMA_SARRAYP a,
    char * key) {
  return (char *) libaroma_sarray_get(a, key);
} /* End of libaroma_sarray_get_string */

/*
 * Function    : libaroma_sarray_delete
 * Return Value: byte
 * Descriptions: delete value
 */
byte libaroma_sarray_delete(
    LIBAROMA_SARRAYP a,
    char * key) {
  if (!a || !key) {
    return 0;
  }
  
  dword hash = libaroma_hash(key);
  LIBAROMA_SARRAY_ITEMP item = a->first;
  LIBAROMA_SARRAY_ITEMP prev = NULL;
  while (item != NULL) {
    /* Fast Search With Hash */
    if (hash == item->hash) {
      /* Make Sure The Key is Identical */
      if (strcmp(item->key, key) == 0) {
        if (prev != NULL) {
          prev->next = item->next;
          
          if (item->next == NULL) {
            a->last   = prev;
          }
        }
        else if (item->next != NULL) {
          a->first  = item->next;
        }
        else {
          a->first  = NULL;
          a->last   = NULL;
        }
        a->n--;
        /* Free item */
        if (a->cb != NULL) {
          a->cb(item->val);
        }
        free(item->val);
        free(item->key);
        free(item);
        return 1;
      }
    }
    prev = item;
    item = item->next;
  }
  return 0;
} /* End of libaroma_sarray_delete */

/*
 * Function    : libaroma_sarray_free
 * Return Value: byte
 * Descriptions: free sarray
 */
byte libaroma_sarray_free(
    LIBAROMA_SARRAYP a) {
  if (!a) {
    return 0;
  }
  LIBAROMA_SARRAY_ITEMP item = a->first;
  LIBAROMA_SARRAY_ITEMP tmp_item;
  while (item != NULL) {
    if (a->cb != NULL) {
      a->cb(item->val);
    }
    free(item->val);
    free(item->key);
    tmp_item = item;
    item = item->next;
    free(tmp_item);
  }
  free(a);
  return 1;
} /* End of libaroma_sarray_free */

/*
 * Function    : libaroma_stack
 * Return Value: LIBAROMA_STACKP
 * Descriptions: new stack
 */
LIBAROMA_STACKP libaroma_stack(
    LIBAROMA_ARRAY_FREE_CB cb) {
  LIBAROMA_STACKP a = (LIBAROMA_STACKP) malloc(sizeof(LIBAROMA_STACK));
  a->first  = NULL;
  a->last   = NULL;
  a->n      = 0;
  a->cb     = cb;
  return a;
} /* End of libaroma_stack */

/*
 * Function    : libaroma_stack_push
 * Return Value: byte
 * Descriptions: push item
 */
byte libaroma_stack_push(
    LIBAROMA_STACKP a,
    voidp val,
    size_t sz) {
  if (!a || !val || (sz == 0)) {
    return 0;
  }
  LIBAROMA_STACK_ITEMP item = malloc(sizeof(LIBAROMA_STACK_ITEM));
  item->val = malloc(sz);
  item->next = NULL;
  item->prev = a->last;
  memcpy(item->val, val, sz);
  a->n++;
  if (a->first == NULL) {
    a->first = item;
    a->last = item;
    return 1;
  }
  a->last->next = item;
  a->last       = item;
  return 1;
} /* End of libaroma_stack_push */

/*
 * Function    : libaroma_stack_shift
 * Return Value: voidp
 * Descriptions: shift item
 */
voidp libaroma_stack_shift(
    LIBAROMA_STACKP a) {
  if (!a) {
    return NULL;
  }
  
  LIBAROMA_STACK_ITEMP first = a->first;
  
  if (first == NULL) {
    return NULL;
  }
  
  if (first == a->last) {
    a->first = NULL;
    a->last = NULL;
  }
  else {
    a->first          = first->next;
  }
  
  a->n--;
  voidp ret           = first->val;
  free(first);
  return ret;
} /* End of libaroma_stack_shift */

/*
 * Function    : libaroma_stack_shift_string
 * Return Value: char *
 * Descriptions: shift item as string
 */
char * libaroma_stack_shift_string(
    LIBAROMA_STACKP a) {
  return (char *) libaroma_stack_shift(a);
} /* End of libaroma_stack_shift_string */

/*
 * Function    : libaroma_stack_pop
 * Return Value: voidp
 * Descriptions: pop item
 */
voidp libaroma_stack_pop(
    LIBAROMA_STACKP a) {
  if (!a) {
    return NULL;
  }
  LIBAROMA_STACK_ITEMP  last  = a->last;
  if (last == NULL) {
    return NULL;
  }
  if (a->first == last) {
    a->first = NULL;
    a->last = NULL;
  }
  else {
    a->last           = last->prev;
  }
  voidp ret           = last->val;
  a->n--;
  free(last);
  return ret;
} /* End of libaroma_stack_pop */

/*
 * Function    : libaroma_stack_pop_string
 * Return Value: char *
 * Descriptions: pop item
 */
char * libaroma_stack_pop_string(
    LIBAROMA_STACKP a) {
  return (char *) libaroma_stack_pop(a);
} /* End of libaroma_stack_pop_string */

/*
 * Function    : libaroma_stack_push_string
 * Return Value: byte
 * Descriptions: push string item
 */
byte libaroma_stack_push_string(
    LIBAROMA_STACKP a,
    char * val) {
  return libaroma_stack_push(a, (voidp) val, strlen(val) + 1);
} /* End of libaroma_stack_push_string */

/*
 * Function    : libaroma_stack_unshift
 * Return Value: byte
 * Descriptions: unshift item
 */
byte libaroma_stack_unshift(
    LIBAROMA_STACKP a,
    voidp val,
    size_t sz) {
  if (!a || !val || (sz == 0)) {
    return 0;
  }
  
  /* Init Item */
  LIBAROMA_STACK_ITEMP item = malloc(sizeof(LIBAROMA_STACK_ITEM));
  item->val = malloc(sz);
  item->next = a->first;
  item->prev = NULL;
  memcpy(item->val, val, sz);
  a->n++;
  if (a->first == NULL) {
    a->first = item;
    a->last = item;
    return 1;
  }
  a->first = item;
  return 1;
} /* End of libaroma_stack_unshift */

/*
 * Function    : libaroma_stack_unshift_string
 * Return Value: byte
 * Descriptions: unshift string item
 */
byte libaroma_stack_unshift_string(
    LIBAROMA_STACKP a,
    char * val) {
  return libaroma_stack_unshift(a, (voidp) val, strlen(val) + 1);
} /* End of libaroma_stack_unshift_string */

/*
 * Function    : libaroma_stack_first
 * Return Value: LIBAROMA_STACK_ITEMP
 * Descriptions: first item
 */
LIBAROMA_STACK_ITEMP libaroma_stack_first(
    LIBAROMA_STACKP a) {
  if (!a) {
    return NULL;
  }
  return a->first;
} /* End of libaroma_stack_first */

/*
 * Function    : libaroma_stack_last
 * Return Value: LIBAROMA_STACK_ITEMP
 * Descriptions: last item
 */
LIBAROMA_STACK_ITEMP libaroma_stack_last(
    LIBAROMA_STACKP a) {
  if (!a) {
    return NULL;
  }
  return a->last;
} /* End of libaroma_stack_last */

/*
 * Function    : libaroma_stack_next
 * Return Value: LIBAROMA_STACK_ITEMP
 * Descriptions: next item
 */
LIBAROMA_STACK_ITEMP libaroma_stack_next(
    LIBAROMA_STACK_ITEMP a) {
  if (!a) {
    return NULL;
  }
  return a->next;
} /* End of libaroma_stack_next */

/*
 * Function    : libaroma_stack_prev
 * Return Value: LIBAROMA_STACK_ITEMP
 * Descriptions: previous item
 */
LIBAROMA_STACK_ITEMP libaroma_stack_prev(
    LIBAROMA_STACK_ITEMP a) {
  if (!a) {
    return NULL;
  }
  return a->prev;
} /* End of libaroma_stack_prev */

/*
 * Function    : libaroma_stack_item_val
 * Return Value: voidp
 * Descriptions: item value
 */
voidp libaroma_stack_item_val(
    LIBAROMA_STACK_ITEMP a) {
  if (!a) {
    return NULL;
  }
  return a->val;
} /* End of libaroma_stack_item_val */

/*
 * Function    : libaroma_stack_item_val_string
 * Return Value: char *
 * Descriptions: string item value
 */
char * libaroma_stack_item_val_string(
    LIBAROMA_STACK_ITEMP a) {
  return (char *) libaroma_stack_item_val(a);
} /* End of libaroma_stack_item_val_string */

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
    byte use_freecb) {
  if (!a || !val || (sz == 0)) {
    return 0;
  }
  if (use_freecb) {
    if (ag->cb != NULL) {
      ag->cb(a->val);
    }
  }
  free(a->val);
  a->val = malloc(sz);
  memcpy(a->val, val, sz);
  return 1;
} /* End of libaroma_stack_item_set */

/*
 * Function    : libaroma_stack_item_set_string
 * Return Value: byte
 * Descriptions: set item string value
 */
byte libaroma_stack_item_set_string(
    LIBAROMA_STACKP ag,
    LIBAROMA_STACK_ITEMP a,
    char * val) {
  return libaroma_stack_item_set(ag, a, (voidp) val, strlen(val) + 1, 0);
} /* End of libaroma_stack_item_set_string */

/*
 * Function    : libaroma_stack_item_delete
 * Return Value: byte
 * Descriptions: delete item
 */
byte libaroma_stack_item_delete(
    LIBAROMA_STACKP a,
    LIBAROMA_STACK_ITEMP ai) {
  if (!a || !ai) {
    return 0;
  }
  LIBAROMA_STACK_ITEMP afist = a->first;
  LIBAROMA_STACK_ITEMP alast = a->last;
  if (ai->prev == NULL) {
    if (afist == ai) {
      afist = ai->next;
    }
    else {
      return 0;
    }
  }
  else {
    LIBAROMA_STACK_ITEMP prev = ai->prev;
    prev->next = ai->next;
  }
  if (ai->next == NULL) {
    if (alast == ai) {
      alast = ai->prev;
    }
    else {
      return 0;
    }
  }
  else {
    LIBAROMA_STACK_ITEMP next = ai->next;
    next->prev = ai->prev;
  }
  a->first = afist;
  a->last  = alast;
  a->n--;
  
  if (a->cb != NULL) {
    a->cb(ai->val);
  }
  free(ai->val);
  free(ai);
  return 1;
} /* End of libaroma_stack_item_delete */

/*
 * Function    : libaroma_stack_get_pos
 * Return Value: int
 * Descriptions: get item position
 */
int libaroma_stack_get_pos(
    LIBAROMA_STACKP a,
    LIBAROMA_STACK_ITEMP ai) {
  if (!a || !ai) {
    return -1;
  }
  int pos = 0;
  LIBAROMA_STACK_ITEMP item = a->first;
  while (item != NULL) {
    if (item == ai) {
      return pos;
    }
    
    item = item->next;
    pos++;
  }
  return -1;
} /* End of libaroma_stack_get_pos */

/*
 * Function    : libaroma_stack_at
 * Return Value: LIBAROMA_STACK_ITEMP
 * Descriptions: get item at position
 */
LIBAROMA_STACK_ITEMP libaroma_stack_at(
    LIBAROMA_STACKP a,
    int pos) {
  if (!a || (pos < 0)) {
    return NULL;
  }
  if (pos >= a->n) {
    return NULL;
  }
  /* Find Faster Loop */
  int half = a->n << 1;
  LIBAROMA_STACK_ITEMP find = NULL;
  int posfind = 0;
  if (pos <= half) {
    /* first to last */
    find = a->first;
    posfind = 0;
    while (find != NULL) {
      if (posfind == pos) {
        return find;
      }
      find = find->next;
      posfind++;
    }
  }
  else {
    /* last to first */
    find = a->last;
    posfind = a->n - 1;
    while (find != NULL) {
      if (posfind == pos) {
        return find;
      }
      find = find->prev;
      posfind--;
    }
  }
  return NULL;
} /* End of libaroma_stack_at */

/*
 * Function    : libaroma_stack_get
 * Return Value: voidp
 * Descriptions: get item value at position
 */
voidp libaroma_stack_get(
    LIBAROMA_STACKP a,
    int pos) {
  LIBAROMA_STACK_ITEMP item = libaroma_stack_at(a, pos);
  if (!item) {
    return NULL;
  }
  return item->val;
} /* End of libaroma_stack_get */

/*
 * Function    : libaroma_stack_get_string
 * Return Value: char *
 * Descriptions: get string item value at position
 */
char * libaroma_stack_get_string(
    LIBAROMA_STACKP a,
    int pos) {
  return (char *) libaroma_stack_get(a, pos);
} /* End of libaroma_stack_get_string */

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
    byte use_freecb) {
  LIBAROMA_STACK_ITEMP item = libaroma_stack_at(a, pos);
  if (!item) {
    return 0;
  }
  return libaroma_stack_item_set(a, item, val, sz, use_freecb);
} /* End of libaroma_stack_set */

/*
 * Function    : libaroma_stack_set_string
 * Return Value: byte
 * Descriptions: set string item value at position
 */
byte libaroma_stack_set_string(
    LIBAROMA_STACKP a,
    int pos,
    char * val) {
  return libaroma_stack_set(a, pos, val, strlen(val) + 1, 0);
} /* End of libaroma_stack_set_string */

/*
 * Function    : libaroma_stack_delete
 * Return Value: byte
 * Descriptions: delete item at position
 */
byte libaroma_stack_delete(
    LIBAROMA_STACKP a,
    int pos) {
  LIBAROMA_STACK_ITEMP item = libaroma_stack_at(a, pos);
  if (!item) {
    return 0;
  }
  return libaroma_stack_item_delete(a, item);
} /* End of libaroma_stack_delete */

/*
 * Function    : libaroma_stack_add_at
 * Return Value: byte
 * Descriptions: add item at position
 */
byte libaroma_stack_add_at(
    LIBAROMA_STACKP a,
    int pos,
    voidp val,
    size_t sz) {
  if (!a || !val || (sz == 0) || (pos < 0)) {
    return 0;
  }
  else if (pos > a->n) {
    return 0;
  }
  else if (pos == a->n) {
    return libaroma_stack_push(a, val, sz);
  }
  else if (pos == 0) {
    return libaroma_stack_unshift(a, val, sz);
  }
  LIBAROMA_STACK_ITEMP find = libaroma_stack_at(a, pos);
  if (find == NULL) {
    /* Playing Safe */
    return 0;
  }
  /* Init Item */
  LIBAROMA_STACK_ITEMP prev = find->prev;
  LIBAROMA_STACK_ITEMP item = malloc(sizeof(LIBAROMA_STACK_ITEM));
  item->val = malloc(sz);
  item->next = find;
  item->prev = find->prev;
  find->prev = item;
  prev->next = item;
  memcpy(item->val, val, sz);
  a->n++;
  return 1;
} /* End of libaroma_stack_add_at */

/*
 * Function    : libaroma_stack_add_at_string(
 * Return Value: byte
 * Descriptions: add string item at position
 */
byte libaroma_stack_add_at_string(
    LIBAROMA_STACKP a,
    int pos,
    char * val) {
  return libaroma_stack_add_at(a, pos, val, strlen(val) + 1);
} /* End of libaroma_stack_add_at_string */

/*
 * Function    : libaroma_stack_free
 * Return Value: byte
 * Descriptions: free stack
 */
byte libaroma_stack_free(
    LIBAROMA_STACKP a) {
  if (!a) {
    return 0;
  }
  LIBAROMA_STACK_ITEMP item = a->first;
  LIBAROMA_STACK_ITEMP tmp_item;
  while (item != NULL) {
    if (a->cb != NULL) {
      a->cb(item->val);
    }
    
    free(item->val);
    tmp_item = item;
    item = item->next;
    free(tmp_item);
    a->n--;
  }
  free(a);
  return 1;
} /* End of libaroma_stack_free */

#endif /* __libaroma_array_c__ */

