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
 * Filename    : aromart_messaging.c
 * Description : AROMA Runtime messaging source
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaromart_messaging_c__
#define __libaromart_messaging_c__
#include "aromart_internal.h"

/* message structure */
typedef struct{
  byte    status;   /* respond status */
  dword   param;    /* respond param */
  size_t  len;      /* data length */
} LART_MSG;

/* send event */
byte lart_send(
  int fd,
  byte cmd,
  dword param,
  voidp data,
  size_t data_len
){
  LART_MSG req;
  req.status    = cmd;
  req.param     = param;
  req.len  = data?data_len:0;
  write(fd,&req,sizeof(LART_MSG));
  if (req.len>0){
    write(fd,data,req.len);
  }
  return LART_RES_OK;
}

/* receive event */
byte lart_recv(
  int fd,
  dwordp    res_param,
  voidp  *  res_data,
  size_t *  res_data_len
){
  LART_MSG res={0};
  if (read(fd,&res,sizeof(LART_MSG))==sizeof(LART_MSG)){
    if (res.len>0){
      voidp rd = calloc(res.len,1);
      if (read(fd,rd,res.len)==(ssize_t)res.len){
        if (res_data!=NULL){
          *res_data = rd;
        }
        else{
          free(rd);
          rd=NULL;
        }
      }
      else{
        free(rd);
        rd=NULL;
        res.len=0;
        if (res_data!=NULL){
          *res_data = NULL;
        }
      }
    }
    if (res_data_len != NULL){
      *res_data_len = res.len;
    }
    if (res_param != NULL){
      *res_param = res.param;
    }
    return res.status;
  }
  return LART_RES_ERR;
}

/* send command & retrive result */
byte lart_command(
  int wfd,
  int rfd,
  byte cmd,
  dword param,
  voidp data,
  size_t data_len,
  dwordp    res_param,
  voidp  *  res_data,
  size_t *  res_data_len
){
  lart_send(wfd, cmd, param, data, data_len);
  return lart_recv(rfd,res_param,res_data,res_data_len);
}

#endif /* __libaromart_messaging_c__ */
