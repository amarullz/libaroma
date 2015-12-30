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
 * Filename    : stream.h
 * Description : stream utility
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_stream_h__
#define __libaroma_stream_h__

/* stream URI max length */
#define LIBAROMA_STREAM_URI_LENGTH  0xff

/*
 * Structure   : _LIBAROMA_STREAM
 * Typedef     : LIBAROMA_STREAM, * LIBAROMA_STREAMP
 * Descriptions: stream structure
 */
typedef struct _LIBAROMA_STREAM LIBAROMA_STREAM;
typedef struct _LIBAROMA_STREAM * LIBAROMA_STREAMP;
struct _LIBAROMA_STREAM{
  bytep   data;
  int     size;
  byte    ismmap;
  byte    ismem;
  char    uri[LIBAROMA_STREAM_URI_LENGTH];
};

/*
 * Structure   : _LIBAROMA_SHMEM
 * Typedef     : LIBAROMA_SHMEM, * LIBAROMA_SHMEMP
 * Descriptions: shared memory structure
 */
typedef struct _LIBAROMA_SHMEM LIBAROMA_SHMEM;
typedef struct _LIBAROMA_SHMEM * LIBAROMA_SHMEMP;
struct _LIBAROMA_SHMEM{
  bytep   data;
  int     size;
  char    name[LIBAROMA_STREAM_URI_LENGTH];
};

/*
 * Typedef     : LIBAROMA_STREAM_URI_CB
 * Descriptions: Stream URI Callback
 */
typedef LIBAROMA_STREAMP (*LIBAROMA_STREAM_URI_CB)(char *);

/*
 * Function    : libaroma_stream_set_uri_callback
 * Return Value: void
 * Descriptions: set stream uri callback
 */
void libaroma_stream_set_uri_callback(
    LIBAROMA_STREAM_URI_CB cb);

/*
 * Function    : libaroma_stream_file
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from file
 */
LIBAROMA_STREAMP libaroma_stream_file(
    char * path);

/*
 * Function    : libaroma_stream_shmem
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from shmem
 */
LIBAROMA_STREAMP libaroma_stream_shmem(
    char * memname);

/*
 * Function    : libaroma_stream_mzip
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from opened zip
 */
LIBAROMA_STREAMP libaroma_stream_mzip(
    LIBAROMA_ZIP zip,
    char * zpath);

/*
 * Function    : libaroma_stream_zip
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from zip file
 */
LIBAROMA_STREAMP libaroma_stream_zip(
    char * zip_path, char * zpath);

/*
 * Function    : libaroma_stream_mem
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from memory range
 */
LIBAROMA_STREAMP libaroma_stream_mem(
    bytep mem, int mem_sz);

/*
 * Function    : libaroma_stream
 * Return Value: LIBAROMA_STREAMP
 * Descriptions: new stream from uri
 */
LIBAROMA_STREAMP libaroma_stream(
    char * uri);

/*
 * Function    : libaroma_stream_close
 * Return Value: byte
 * Descriptions: close stream
 */
byte libaroma_stream_close(
    LIBAROMA_STREAMP a);

/*
 * Function    : libaroma_stream_to_string
 * Return Value: char *
 * Descriptions: convert stream to string
 */
char * libaroma_stream_to_string(
    LIBAROMA_STREAMP a,
    byte free);

/*
 * Function    : libaroma_shmem
 * Return Value: LIBAROMA_SHMEMP
 * Descriptions: new/open shared memory
 */
LIBAROMA_SHMEMP libaroma_shmem(
    const char * name,
    int sz);

/*
 * Function    : libaroma_shmem_close
 * Return Value: byte
 * Descriptions: close/delete shared memory
 */
byte libaroma_shmem_close(
    LIBAROMA_SHMEMP a,
    byte del);

#endif /* __libaroma_stream_h__ */
