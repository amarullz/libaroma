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
 * Filename    : canvas.h
 * Description : libaroma canvas
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_canvas_h__
#define __libaroma_canvas_h__

/*
 * Structure   : _LIBAROMA_CANVAS
 * Typedef     : LIBAROMA_CANVAS, * LIBAROMA_CANVASP
 * Descriptions: libaroma graph canvas
 */
typedef struct _LIBAROMA_CANVAS LIBAROMA_CANVAS;
typedef struct _LIBAROMA_CANVAS * LIBAROMA_CANVASP;
struct _LIBAROMA_CANVAS{
  int      w;       /* width */
  int      h;       /* height */
  int      l;       /* line size */
  int      s;       /* width x height */
  wordp    data;    /* color data */
  bytep    alpha;   /* alpha data */
  bytep    hicolor; /* hicolor data */
  byte     flags;   /* flags */
};

/*
 * Function    : libaroma_canvas_blank
 * Return Value: void
 * Descriptions: reset canvas content
 */
void libaroma_canvas_blank(
    LIBAROMA_CANVASP c);

/*
 * Function    : libaroma_canvas_setcolor
 * Return Value: void
 * Descriptions: set canvas color
 */
void libaroma_canvas_setcolor(
    LIBAROMA_CANVASP c,
    word color,
    byte alpha);

/*
 * Function    : libaroma_canvas_fillcolor
 * Return Value: void
 * Descriptions: set canvas color data
 */
void libaroma_canvas_fillcolor(
    LIBAROMA_CANVASP c,
    word color);
    
/*
 * Function    : libaroma_canvas_new_ex
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: create new canvas - extended
 */
LIBAROMA_CANVASP libaroma_canvas_new_ex(
    int w,
    int h,
    byte useAlpha,
    byte hiColor,
    const char * shmemname);

/*
 * Function    : libaroma_canvas_area_update
 * Return Value: byte
 * Descriptions: update child canvas
 */
byte libaroma_canvas_area_update(
    LIBAROMA_CANVASP c,
    LIBAROMA_CANVASP parent,
    int x,
    int y,
    int w,
    int h);
    
/*
 * Function    : libaroma_canvas_area
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: create child canvas
 */
LIBAROMA_CANVASP libaroma_canvas_area(
    LIBAROMA_CANVASP parent,
    int x,
    int y,
    int w,
    int h);

LIBAROMA_CANVASP libaroma_canvas_dup(LIBAROMA_CANVASP c);

/*
 * Function    : libaroma_canvas_free_ex1
 * Return Value: void
 * Descriptions: free canvas - extended
 */
void libaroma_canvas_free_ex1(
    LIBAROMA_CANVASP * c,
    byte del);

/* new canvas aliases */
#define libaroma_canvas_new(w,h,a,c) \
  libaroma_canvas_new_ex(w,h,a,c,NULL)
#define libaroma_canvas_ex(w,h,a) \
  libaroma_canvas_new(w,h,a,0)
#define libaroma_canvas(w,h) \
  libaroma_canvas_ex(w,h,0)
#define libaroma_canvas_alpha(w,h) \
  libaroma_canvas_ex(w,h,1)
#define libaroma_canvas_hicolor(w,h,a) \
  libaroma_canvas_new(w,h,a,1)
#define libaroma_canvas_shmem_ex(w,h,a,c,n) \
  libaroma_canvas_new_ex(w,h,a,c,n)
#define libaroma_canvas_shmem(w,h,a,n) \
  libaroma_canvas_new_ex(w,h,a,0,n)
#define libaroma_canvas_shmem_open(n) \
  libaroma_canvas_new_ex(0,0,0,0,n)

/* free canvas aliases */
#define libaroma_canvas_free_ex(c) \
  libaroma_canvas_free_ex1(c, 0)
#define libaroma_canvas_free(c) \
  libaroma_canvas_free_ex(&(c))
#define libaroma_canvas_delete(c) \
  libaroma_canvas_free_ex1(&(c), 1)

#endif /* __libaroma_canvas_h__ */
