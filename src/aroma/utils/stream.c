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
 * Filename    : stream.c
 * Description : stream utility
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_stream_c__
#define __libaroma_stream_c__
#include <aroma_internal.h>

/*
 * Variable    : _libaroma_stream_uri_cb
 * Type        : LIBAROMA_STREAM_URI_CB
 * Descriptions: stream uri callback storage
 */
static LIBAROMA_STREAM_URI_CB _libaroma_stream_uri_cb = NULL;

/*
 * Function    : libaroma_stream_set_uri_callback
 * Return Value: void
 * Descriptions: set stream uri callback
 */
void libaroma_stream_set_uri_callback(
    LIBAROMA_STREAM_URI_CB cb) {
  _libaroma_stream_uri_cb = cb;
} /* End of libaroma_stream_set_uri_callback */

/*
 * Function    : libaroma_stream_file
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from file
 */
LIBAROMA_STREAMP libaroma_stream_file(
    char * path) {
#ifdef LIBAROMA_PLATFORM_HAS_MMAP
  if (!path) {
    ALOGW("libaroma_stream_file path is invalid");
    return NULL;
  }
  LIBAROMA_STREAMP ret;
  /* Read File Stat */
  int filesize=libaroma_filesize(path);
  if (filesize < 0) {
    ALOGI("libaroma_stream_file (%s) not found", path);
    return NULL;
  }
  /* Open File */
  int fd = open(path, O_RDONLY, 0);
  if (fd < 0) {
    ALOGW("libaroma_stream_file unable to open (%s)", path);
    return NULL;
  }
  /* MAP */
  bytep mem = (bytep) mmap(NULL, filesize,
                           PROT_READ, MAP_FILE | MAP_SHARED, fd, 0);
  /* Close FD */
  close(fd);
  if (mem == MAP_FAILED) {
    ALOGW("libaroma_stream_file unable to mmap (%s)", path);
    return NULL;
  }
  /* Return */
  ret           = (LIBAROMA_STREAMP) malloc(sizeof(LIBAROMA_STREAM));
  ret->data     = mem;
  ret->size     = filesize;
  ret->ismmap   = 1;
  snprintf(ret->uri,
      LIBAROMA_STREAM_URI_LENGTH, "file://%s", path);
  return ret;
#else
  if (!path) {
    ALOGW("libaroma_stream_file path is invalid");
    return 0;
  }
  LIBAROMA_STREAMP ret;
  /* Read File Stat */
  int filesize=libaroma_filesize(path);
  if (filesize < 0) {
    ALOGI("libaroma_stream_file (%s) not found", path);
    return NULL;
  }
  
  /* Allocating Memory */
  bytep mem = malloc(filesize);
  FILE * f = fopen(path, "rb");
  if (f == NULL) {
    ALOGW("libaroma_stream_file fopen error (%s)", path);
    goto error;
  }
  
  if (((int) fread(mem, 1, filesize, f)) != filesize) {
    ALOGW("libaroma_stream_file fread error (%s)", path);
    fclose(f);
    goto error;
  }
  fclose(f);
  goto done;
error:
  free(mem);
  return NULL;
done:
  ret           = (LIBAROMA_STREAMP) malloc(sizeof(LIBAROMA_STREAM));
  ret->data     = mem;
  ret->size     = filesize;
  ret->ismmap   = 0;
  ret->ismem    = 0;
  snprintf(ret->uri,
      LIBAROMA_STREAM_URI_LENGTH, "file://%s", path);
  return ret;
#endif
} /* End of libaroma_stream_file */

/*
 * Function    : libaroma_stream_shmem
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from shmem
 */
LIBAROMA_STREAMP libaroma_stream_shmem(
    char * memname) {
#ifdef LIBAROMA_PLATFORM_HAS_SHMEM
  if (!memname) {
    ALOGW("libaroma_stream_shmem memname is invalid");
    return 0;
  }
  /* set name */
  char nm[LIBAROMA_STREAM_URI_LENGTH];
  if (memname[0]=='@'){
    snprintf(nm, LIBAROMA_STREAM_URI_LENGTH,
      "%s%s", LIBAROMA_CONFIG_SHMEM_PREFIX, memname+1);
  }
  else{
    snprintf(nm, LIBAROMA_STREAM_URI_LENGTH,
      "%s", memname);
  }
  
  /* open */
  int fd = shm_open(nm, O_RDWR, 0666);
  if (fd < 0) {
    ALOGW("libaroma_stream_shmem shm_open failed (%s)",memname);
    return 0;
  }
  
  /* read shmem stat */
  int filesize = libaroma_filesize_fd(fd);
  if (filesize < 0) {
    ALOGW("libaroma_stream_shmem stat is invalid (%s)", nm);
    close(fd);
    return 0;
  }

  /* MAP */
  bytep mem = (bytep) mmap(NULL, filesize,
                           PROT_READ, MAP_SHARED, fd, 0);
  /* close fd */
  close(fd);
  
  if (mem == MAP_FAILED) {
    ALOGW("libaroma_stream_shmem unable to mmap (%s)", nm);
    return 0;
  }
  /* Return */
  LIBAROMA_STREAMP ret =
    (LIBAROMA_STREAMP) malloc(sizeof(LIBAROMA_STREAM));
  ret->data     = mem;
  ret->size     = filesize;
  ret->ismmap   = 1;
  ret->ismem    = 0;
  snprintf(ret->uri,
      LIBAROMA_STREAM_URI_LENGTH, "shmem://%s", memname);
  return ret;
#else
  return NULL;
#endif
} /* End of libaroma_stream_shmem */

/*
 * Function    : libaroma_stream_mzip
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from opened zip
 */
LIBAROMA_STREAMP libaroma_stream_mzip(
    LIBAROMA_ZIP zip,
    char * zpath) {
#ifndef LIBAROMA_CONFIG_NOMINZIP
  if ((!zip) || (!zpath)) {
    ALOGW("libaroma_stream_hzip zip/zpath is invalid");
    return 0;
  }
  /* Read From Zip */
  bytep mem;
  int mem_sz = libaroma_zip_read(zip, &mem, zpath, 1);
  /* It's not valid */
  if (mem_sz == 0) {
    return 0;
  }
  LIBAROMA_STREAMP ret  = (LIBAROMA_STREAMP) malloc(sizeof(LIBAROMA_STREAM));
  ret->data     = mem;
  ret->size     = mem_sz;
  ret->ismmap   = 0;
  ret->ismem    = 0;
  snprintf(ret->uri, LIBAROMA_STREAM_URI_LENGTH,
      "memzip://[zip_resource]#%s", zpath);
  return ret;
#else
  return NULL;
#endif
} /* End of libaroma_stream_mzip */

/*
 * Function    : libaroma_stream_zip
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from zip file
 */
LIBAROMA_STREAMP libaroma_stream_zip(
    char * zip_path, char * zpath) {
#ifndef LIBAROMA_CONFIG_NOMINZIP
  if ((!zip_path) || (!zpath)) {
    ALOGW("libaroma_stream_zip zip_path/zpath is invalid");
    return 0;
  }
  /* Init Zip */
  LIBAROMA_ZIP zip = libaroma_zip(zip_path);
  if (!zip) {
    return 0;
  }
  /* Allocating Adapter */
  bytep mem;
  int mem_sz = libaroma_zip_read(zip, &mem, zpath, 1);
  /* Release ZIP */
  libaroma_zip_release(zip);
  /* not valid */
  if (mem_sz == 0) {
    return 0;
  }
  LIBAROMA_STREAMP ret  = (LIBAROMA_STREAMP) malloc(sizeof(LIBAROMA_STREAM));
  ret->data     = mem;
  ret->size     = mem_sz;
  ret->ismmap   = 0;
  ret->ismem    = 0;
  snprintf(ret->uri, LIBAROMA_STREAM_URI_LENGTH,
      "zip://%s#%s", zip_path, zpath);
  return ret;
#else
  return NULL;
#endif
} /* End of libaroma_stream_zip */

/*
 * Function    : libaroma_stream_mem
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from memory range
 */
LIBAROMA_STREAMP libaroma_stream_mem(
    bytep mem, int mem_sz) {
  if (!mem || !mem_sz) {
    ALOGW("libaroma_stream_mem mem/mem_sz is invalid");
    return 0;
  }
  LIBAROMA_STREAMP ret  = (LIBAROMA_STREAMP) malloc(sizeof(LIBAROMA_STREAM));
  ret->data     = mem;
  ret->size     = mem_sz;
  ret->ismmap   = 0;
  ret->ismem    = 1;
  snprintf(ret->uri, LIBAROMA_STREAM_URI_LENGTH,
      "mem://0x%x-0x%x", (unsigned int)mem, mem_sz);
  return ret;
} /* End of libaroma_stream_mem */

/*
 * Function    : libaroma_stream
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from uri
 */
LIBAROMA_STREAMP libaroma_stream(
    char * uri) {
  int n = strlen(uri);
  char kwd[11];
  int i;
  for (i = 0; i < n && i < 10; i++) {
    kwd[i] = uri[i];
    kwd[i + 1] = 0;
    if ((i > 1) && (uri[i] == '/') && (uri[i - 1] == '/')) {
      break;
    }
  }
  if (strcmp(kwd, "file://") == 0) {
    return libaroma_stream_file(uri + 7);
  }
  else if (strcmp(kwd, "shmem://") == 0) {
    return libaroma_stream_shmem(uri + 8);
  }
#ifndef LIBAROMA_CONFIG_NOMINZIP
  else if (strcmp(kwd, "zip://") == 0) {
    char zip_path[256] = {0};
    char zpath[256] = {0};
    int  cpos = 0;
    byte is_zpath = 0;
    for (i = 6; i < n && i < 255; i++) {
      if (is_zpath) {
        zpath[cpos++] = uri[i];
        zpath[cpos] = 0;
      }
      else {
        if (uri[i] == '#') {
          cpos     = 0;
          is_zpath = 1;
        }
        else {
          zip_path[cpos++] = uri[i];
          zip_path[cpos] = 0;
        }
      }
    }
    return libaroma_stream_zip(zip_path, zpath);
  }
#endif
  else if (strcmp(kwd, "mem://") == 0) {
    unsigned int mem;
    int mem_sz;
    int rc;

    rc = sscanf(uri+6, "0x%x-0x%x", &mem, &mem_sz);
    if (rc!=2) {
      ALOGW("libaroma_stream_mem range format is invalid");
      return NULL;
    }

    return libaroma_stream_mem((bytep)mem, mem_sz);
  }
  else if (_libaroma_stream_uri_cb != NULL) {
    return _libaroma_stream_uri_cb(uri);
  }
  return NULL;
} /* End of libaroma_stream */

/*
 * Function    : libaroma_stream_close
 * Return Value: byte
 * Descriptions: close stream
 */
byte libaroma_stream_close(
    LIBAROMA_STREAMP a) {
  if (!a) {
    ALOGW("libaroma_stream_close stream is invalid");
    return 0;
  }
  if (a->ismmap) {
#ifdef LIBAROMA_PLATFORM_HAS_MMAP
    /* File */
    munmap(a->data, a->size);
#endif
  }
  else if (a->data && !a->ismem) {
    free(a->data);
    a->data = NULL;
  }
  free(a);
  return 1;
} /* End of libaroma_stream_close */

/*
 * Function    : libaroma_stream_to_string
 * Return Value: char *
 * Descriptions: convert stream to string
 */
char * libaroma_stream_to_string(
    LIBAROMA_STREAMP a,
    byte free) {
  if (!a) {
    return NULL;
  }
  char * txt = malloc(a->size + 1);
  memcpy(txt, a->data, a->size);
  txt[a->size] = 0;
  if (free) {
    libaroma_stream_close(a);
  }
  return txt;
} /* End of libaroma_stream_to_string */

/*
 * Function    : libaroma_shmem
 * Return Value: LIBAROMA_SHMEMP
 * Descriptions: new/open shared memory
 */
LIBAROMA_SHMEMP libaroma_shmem(
    const char * name,
    int sz) {
#ifdef LIBAROMA_PLATFORM_HAS_SHMEM
  /* Copy Name */
  char nm[LIBAROMA_STREAM_URI_LENGTH];
  if (name[0]=='@'){
    snprintf(nm, LIBAROMA_STREAM_URI_LENGTH,
      "%s%s", LIBAROMA_CONFIG_SHMEM_PREFIX, name+1);
  }
  else{
    snprintf(nm, LIBAROMA_STREAM_URI_LENGTH,
      "%s", name);
  }
  
  /* Open Shared Memory */
  int fd;
  if (sz < 1) {
    fd = shm_open(nm, O_RDWR, 0666);
    if (fd < 0) {
      ALOGW("libaroma_shmem shm_open failed (%s)", nm);
      return 0;
    }
    int filesize=libaroma_filesize_fd(fd);
    if (sz< 0) {
      ALOGW("libaroma_shmem stat is invalid (%s)", nm);
      close(fd);
      return 0;
    }
    sz=filesize;
    if (sz < 1) {
      ALOGW("libaroma_shmem exiting shmem not found (%s)", nm);
      close(fd);
      return 0;
    }
    ALOGV("libaroma_shmem reopen shmem - %ibyte (%s)", sz, nm);
  }
  else {
    fd = shm_open(nm, O_CREAT | O_TRUNC | O_RDWR, 0666);
    if (fd < 0) {
      ALOGW("libaroma_shmem shm_open failed (%s)", nm);
      return 0;
    }
    /* Truncate */
    if (ftruncate(fd, sz) != 0) {
      ALOGW("libaroma_shmem ftruncate error (%s)", nm);
      close(fd);
      return 0;
    }
    ALOGV("libaroma_shmem new - %ibyte (%s)", sz, nm);
  }
  /* mmap */
  bytep mem = (bytep) mmap(0, sz, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
  close(fd);
  /* check memory */
  if (mem == MAP_FAILED) {
    ALOGW("libaroma_shmem unable to mmap (%s)", name);
    return 0;
  }
  /* return data */
  LIBAROMA_SHMEMP ret   = (LIBAROMA_SHMEMP) malloc(sizeof(LIBAROMA_SHMEM));
  ret->data     = mem;
  ret->size     = sz;
  snprintf(ret->name, LIBAROMA_STREAM_URI_LENGTH, "%s", nm);
  return ret;
#else
  return NULL;
#endif
} /* End of libaroma_shmem */

/*
 * Function    : libaroma_shmem_close
 * Return Value: byte
 * Descriptions: close/delete shared memory
 */
byte libaroma_shmem_close(
    LIBAROMA_SHMEMP a,
    byte del) {
#ifdef LIBAROMA_PLATFORM_HAS_SHMEM
  if (!a) {
    ALOGW("libaroma_shmem_close LIBAROMA_SHMEMP not valid");
    return 0;
  }
  if (a->data) {
    munmap(a->data, a->size);
  }
  if (del) {
    if (shm_unlink(a->name) != 0) {
      ALOGW("libaroma_shmem_close shm_unlink failed (%s)", a->name);
    }
  }
  free(a);
  return 1;
#else
  return 0;
#endif
} /* End of libaroma_shmem_close */

#endif /* __libaroma_stream_c__ */
