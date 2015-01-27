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
 * Filename    : canvas.c
 * Description : libaroma canvas
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_canvas_c__
#define __libaroma_canvas_c__


/*
 * Structure   : _LIBAROMA_CANVAS_SHMEM_HEADER
 * Typedef     : LIBAROMA_CANVAS_SHMEM_HEADER, * LIBAROMA_CANVAS_SHMEM_HEADERP
 * Descriptions: shared memory canvas header
 */
typedef struct _LIBAROMA_CANVAS_SHMEM_HEADER LIBAROMA_CANVAS_SHMEM_HEADER;
typedef struct _LIBAROMA_CANVAS_SHMEM_HEADER * LIBAROMA_CANVAS_SHMEM_HEADERP;
struct _LIBAROMA_CANVAS_SHMEM_HEADER{
  int w;
  int h;
  byte alpha;
  byte hicolor;
};

/*
 * Structure   : _LIBAROMA_CANVAS_SHMEM
 * Typedef     : LIBAROMA_CANVAS_SHMEM, * LIBAROMA_CANVAS_SHMEMP
 * Descriptions: shared memory extended structure
 */
typedef struct _LIBAROMA_CANVAS_SHMEM LIBAROMA_CANVAS_SHMEM;
typedef struct _LIBAROMA_CANVAS_SHMEM * LIBAROMA_CANVAS_SHMEMP;
struct _LIBAROMA_CANVAS_SHMEM{
  bytep   mmap;
  size_t  sz;
  char    name[LIBAROMA_STREAM_URI_LENGTH];
};

#define LIBAROMA_CANVAS_CHILD   0x01
#define LIBAROMA_CANVAS_SHARED  0x02

/*
 * Function    : libaroma_canvas_blank
 * Return Value: void
 * Descriptions: reset canvas content
 */
void libaroma_canvas_blank(
    LIBAROMA_CANVASP c) {
  if (!c) {
    ALOGW("libaroma_canvas_blank malloc(LIBAROMA_CANVASP) Error");
    return;
  }
  if (c->l == c->w) {
    /* Aligned Canvas */
    memset(c->data, 0, c->sz);
    
    if (c->alpha != NULL) {
      memset(c->alpha, 0xff, c->s);
    }
    
    if (c->hicolor != NULL) {
      memset(c->alpha, 0x00, c->s);
    }
  }
  else {
    /* Unaligned Canvas */
    int y = 0;
    for (y = 0; y < c->h; y++) {
      memset(c->data + (c->l * y), 0, c->w * 2);
      
      if (c->alpha != NULL) {
        memset(c->alpha + (c->l * y), 0xff, c->w);
      }
      
      if (c->hicolor != NULL) {
        memset(c->hicolor + (c->l * y), 0xff, c->w);
      }
    }
  }
} /* End of libaroma_canvas_blank */

/*
 * Function    : libaroma_canvas_setcolor
 * Return Value: void
 * Descriptions: set canvas color
 */
void libaroma_canvas_setcolor(
    LIBAROMA_CANVASP c,
    word color,
    byte alpha) {
  if (!c) {
    ALOGW("libaroma_canvas_setcolor malloc(LIBAROMA_CANVASP) Error");
    return;
  }
  if (c->l == c->w) {
    libaroma_color_set(c->data, color, c->s);
    if (c->alpha != NULL) {
      memset(c->alpha, alpha, c->s);
    }
    if (c->hicolor != NULL) {
      memset(c->hicolor, 0, c->s);
    }
  }
  else {
    int y = 0;
    for (y = 0; y < c->h; y++) {
      libaroma_color_set(c->data + (c->l * y), color, c->w);
      if (c->alpha != NULL) {
        memset(c->alpha + (c->l * y), alpha, c->w);
      }
      if (c->hicolor != NULL) {
        memset(c->hicolor + (c->l * y), 0, c->w);
      }
    }
  }
} /* End of libaroma_canvas_setcolor */

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
    const char * shmemname){
  LIBAROMA_CANVASP c;
  if (shmemname != NULL) {
    /* vars */
    char nm[LIBAROMA_STREAM_URI_LENGTH];
    byte isnew= 0;
    size_t wh_sz, data_sz, alpha_sz, hi_sz, sz = 0;
    size_t head_sz = sizeof(LIBAROMA_CANVAS_SHMEM_HEADER);
    LIBAROMA_CANVAS_SHMEM_HEADERP csh_head = NULL;
    bytep mem = NULL;
    
    /* copy shmem name */
    if (shmemname[0]=='@'){
      snprintf(nm, LIBAROMA_STREAM_URI_LENGTH,
        "%s%s", LIBAROMA_CONFIG_SHMEM_PREFIX, shmemname+1);
    }
    else{
      snprintf(nm, LIBAROMA_STREAM_URI_LENGTH,
        "%s", shmemname);
    }

    /* open shared memory */
    int fd = shm_open(nm, O_RDWR, 0666);
    
    if (fd < 0) {
      /* not exists */
      if ((w < 1) || (h < 1)) {
        ALOGW("CANVAS-SHM-NEW width/height not valid");
        return NULL;
      }
      /* open and create */
      fd = shm_open(nm, O_CREAT | O_TRUNC | O_RDWR, 0666);
      if (fd < 0) {
        ALOGW("CANVAS-SHM-NEW failed to create shmem");
        return NULL;
      }
      /* calculate size */
      wh_sz     = w * h;
      data_sz   = wh_sz * 2;
      alpha_sz  = (useAlpha ? wh_sz : 0);
      hi_sz     = (hiColor ? wh_sz : 0);
      sz        = head_sz + data_sz + alpha_sz + hi_sz;
      /* truncate size */
      if (ftruncate(fd, sz) != 0) {
        ALOGW("CANVAS-SHM-NEW ftruncate error (%s)", nm);
        close(fd);
        return NULL;
      }
      /* mmap */
      ALOGV("CANVAS-SHM-NEW %ibyte (%s)", sz, nm);
      mem = (bytep) mmap(0, sz,
        PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
      close(fd);
      if (mem == MAP_FAILED) {
        ALOGW("CANVAS-SHM-NEW unable to mmap (%s)", nm);
        return NULL;
      }
      /* init header */
      csh_head = (LIBAROMA_CANVAS_SHMEM_HEADERP) mem;
      csh_head->w = w;
      csh_head->h = h;
      csh_head->alpha = (useAlpha?1:0);
      csh_head->hicolor = (hiColor?1:0);
      isnew=1;
    }
    else{
      /* get size */
      struct stat st;
      if (fstat(fd, &st) < 0) {
        ALOGW("CANVAS-SHM-OPEN stat is invalid (%s)", nm);
        close(fd);
        return NULL;
      }
      sz = st.st_size;
      if (sz < 1) {
        ALOGW("CANVAS-SHM-OPEN shmem size invalid (%s)", nm);
        close(fd);
        return NULL;
      }
      /* mmap */
      ALOGV("CANVAS-SHM-OPEN %ibyte (%s)", sz, nm);
      mem = (bytep) mmap(0, sz, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
      close(fd);
      if (mem == MAP_FAILED) {
        ALOGW("CANVAS-SHM-OPEN unable to mmap (%s)", nm);
        return NULL;
      }
      /* read header */
      csh_head = (LIBAROMA_CANVAS_SHMEM_HEADERP) mem;
      
      /* calculate size */
      wh_sz     = csh_head->w * csh_head->h;
      data_sz   = wh_sz * 2;
      alpha_sz  = (csh_head->alpha?wh_sz:0);
      hi_sz     = (csh_head->hicolor?wh_sz:0);
      if (sz!=(head_sz + data_sz + alpha_sz + hi_sz)){
        munmap(mem, sz);
        ALOGW("CANVAS-SHM-OPEN mem size not match with header (%s)", nm);
        return NULL;
      }
    }
    
    /* allocating canvas */
    bytep canvas_mem = (bytep) malloc(
      sizeof(LIBAROMA_CANVAS) + sizeof(LIBAROMA_CANVAS_SHMEM)
    );
    c = (LIBAROMA_CANVASP) canvas_mem;
    LIBAROMA_CANVAS_SHMEMP csh_mem = 
      (LIBAROMA_CANVAS_SHMEMP) (canvas_mem + sizeof(LIBAROMA_CANVAS));
    
    /* set shmem canvas data */
    csh_mem->mmap = mem;
    csh_mem->sz   = sz;
    snprintf(csh_mem->name, LIBAROMA_STREAM_URI_LENGTH, "%s", nm);
    
    /* set canvas data */
    c->w = c->l = csh_head->w;
    c->h      = csh_head->h;
    c->s      = c->w * c->h;
    c->sz     = c->s * 2;
    c->flags  = LIBAROMA_CANVAS_SHARED;
    c->data   = (wordp)
      (mem + head_sz);
    c->alpha  = (bytep)
      (csh_head->alpha?(mem+head_sz+data_sz):NULL);
    c->hicolor  = (bytep)
      (csh_head->hicolor?(mem+head_sz+data_sz+alpha_sz):NULL);
    
    /* cleanup if new canvas */
    if (isnew){
      if (csh_head->alpha){
        memset(c->alpha, 0xff, c->s);
      }
      if (csh_head->hicolor){
        memset(c->hicolor, 0, c->s);
      }
      memset(c->data, 0, c->sz);
    }
    return c;
  }

  /* private memory canvas */
  if ((w < 1) || (h < 1)) {
    ALOGW("CANVAS width/height not valid");
    return NULL;
  }
  c = (LIBAROMA_CANVASP) malloc(sizeof(LIBAROMA_CANVAS));
  if (!c) {
    ALOGW("CANVAS malloc(LIBAROMA_CANVASP) Error");
    return NULL;
  }
  c->l = c->w = w;
  c->h        = h;
  c->s        = w * h;
  c->sz       = (c->s * 2);
  c->flags    = 0;
  c->data     = (wordp) malloc(c->sz);
  if (!c->data) {
    ALOGW("CANVAS malloc(c->data) Error");
    free(c);
    return NULL;
  }
  if (useAlpha) {
    c->alpha  = malloc(c->s);
    if (!c->alpha) {
      ALOGW("CANVAS malloc(c->alpha) Error");
      free(c->data);
      free(c);
      return NULL;
    }
    memset(c->alpha, 0xff, c->s);
  }
  else {
    c->alpha  = NULL;
  }
  if (hiColor) {
    c->hicolor  = malloc(c->s);
    if (!c->hicolor) {
      ALOGW("CANVAS malloc(c->hicolor) Error");
      free(c->hicolor);
      if (c->alpha) {
        free(c->alpha);
      }
      free(c->data);
      free(c);
      return NULL;
    }
    memset(c->hicolor, 0x00, c->s);
  }
  else {
    c->hicolor  = NULL;
  }
  memset(c->data, 0, c->sz);
  return c;
} /* End of libaroma_canvas_new_ex */

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
    int h) {
  if (!parent) {
    ALOGW("libaroma_canvas_area parent is null");
    return NULL;
  }
  
  /* Set Target Positions */
  int x2 = x + w;
  int y2 = y + h;
  
  /* Fix Positions */
  if (x2 > parent->w) {
    x2 = parent->w;
  }
  
  if (y2 > parent->h) {
    y2 = parent->h;
  }
  
  if (x < 0) {
    x = 0;
  }
  
  if (y < 0) {
    y = 0;
  }
  
  /* Set Fixed Size */
  w = x2 - x;
  h = y2 - y;
  
  if ((w < 1) || (h < 1)) {
    ALOGW("libaroma_canvas_area calculated width or height < 1");
    return NULL;
  }
  
  /* Initializing Canvas Memory */
  LIBAROMA_CANVASP c = (LIBAROMA_CANVASP) malloc(sizeof(LIBAROMA_CANVAS));
  
  if (!c) {
    ALOGW("libaroma_canvas_area malloc(LIBAROMA_CANVASP) Error");
    return NULL;
  }
  
  c->w      = w;
  c->h      = h;
  c->s      = w * h;
  c->sz     = ((parent->l * h) * 2);
  c->flags  = LIBAROMA_CANVAS_CHILD;
  
  if (((y * parent->l) + x + c->sz) > parent->sz) {
    c->sz = parent->sz - ((y * parent->l) + x);
  }
  
  c->l      = parent->l;
  c->data   = parent->data + (y * parent->l) + x;
  
  if (parent->alpha != NULL) {
    c->alpha = parent->alpha + (y * parent->l) + x;
  }
  else {
    c->alpha = NULL;
  }
  
  if (parent->hicolor != NULL) {
    c->alpha = parent->alpha + (y * parent->l) + x;
  }
  else {
    c->alpha = NULL;
  }
  
  return c;
} /* End of libaroma_canvas_area */

/*
 * Function    : libaroma_canvas_free_ex1
 * Return Value: void
 * Descriptions: free canvas - extended
 */
void libaroma_canvas_free_ex1(
    LIBAROMA_CANVASP * c,
    byte del) {
  if (c == NULL) {
    ALOGW("CANVAS-FREE LIBAROMA_CANVASP * = NULL");
    return;
  }
  LIBAROMA_CANVASP cv = *c;
  if (cv == NULL) {
    ALOGW("CANVAS-FREE LIBAROMA_CANVASP = NULL");
    goto freec;
  }
  if (cv->flags & LIBAROMA_CANVAS_CHILD) {
    /* It was child canvas, don't free the data */
    free(*c);
    goto freec;
  }
  else if (cv->flags & LIBAROMA_CANVAS_SHARED) {
    LIBAROMA_CANVAS_SHMEMP csh_mem = 
      (LIBAROMA_CANVAS_SHMEMP) (((bytep) cv) + sizeof(LIBAROMA_CANVAS));
    munmap(csh_mem->mmap, csh_mem->sz);
    ALOGV("CANVAS-FREE-SHM mmap free %ibytes (%s)",
      csh_mem->sz,
      csh_mem->name);
    if (del) {
      if (shm_unlink(csh_mem->name) != 0) {
        ALOGW("CANVAS-FREE-SHM shm_unlink failed (%s)", csh_mem->name);
      }
      else{
        ALOGV("CANVAS-FREE-SHM deleted (%s)", csh_mem->name);
      }
    }
    goto freecanvas;
  }
  
  if (cv->data) {
    free(cv->data);
  }
  if (cv->alpha) {
    free(cv->alpha);
  }
  if (cv->hicolor) {
    free(cv->hicolor);
  }

freecanvas:
  free(*c);
freec:
  *c = NULL;
} /* End of libaroma_canvas_free_ex1 */



#endif /* __libaroma_canvas_c__ */
