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
 * Filename    : qnx_hiddi_driver.c
 * Description : qnx hiddi driver
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 24/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_qnx_hiddi_driver_c__
#define __libaroma_qnx_hiddi_driver_c__
#include "qnx_hiddi_driver.h"

/*******************************************************************************
 *
 * VARIABLES
 *
 ******************************************************************************/

static int qnx_hiddi_touch_x   = -1;
static int qnx_hiddi_touch_y   = -1;
static int qnx_hiddi_screen_w  = 1024;
static int qnx_hiddi_screen_h  = 768;
struct hidd_connection * _qnx_hiddi_connection = NULL;
static byte _qnx_hiddi_dev_type[QNX_HIDDI_MAX_DEV]={0};
static hidd_device_ident_t _qnx_hiddi_devices = {
  HIDD_CONNECT_WILDCARD, HIDD_CONNECT_WILDCARD, HIDD_CONNECT_WILDCARD
};
static hidd_connect_parm_t _qnx_hiddi_params = {
  NULL, HID_VERSION, HIDD_VERSION, 0, 0, &_qnx_hiddi_devices, NULL, 0
};

/*******************************************************************************
 *
 * FUNCTIONS
 *
 ******************************************************************************/

/*
 * Function    : qnx_hiddi_get_device_type
 * Return Value: byte
 * Descriptions: get device type
 */
byte qnx_hiddi_get_device_type(uint8_t * data, uint16_t len){
  hid_byte_t b;
  uint16_t usage_page = 0;
  uint16_t usage = 0;
  uint16_t hidp_data = 0;
  while (len&&!(usage_page&&usage)) {
    if (hidp_analyse_byte(*data, &b)) {}
    hidp_data = hidp_get_data((data + 1), &b);
    if (b.HIDB_Type==1){
      if ((!usage_page)&&(b.HIDB_Tag==0)) {
          usage_page = hidp_data;
      }
    }
    else if (b.HIDB_Type==2){
      if ((!usage)&&(b.HIDB_Tag==0)) {
          usage = hidp_data;
      }
    }
    data += b.HIDB_Length + 1;
    len -= b.HIDB_Length + 1;
  }
  if (usage_page==HIDD_PAGE_DESKTOP){
    if (usage==HIDD_USAGE_POINTER){
      return QNX_HIDDI_DEV_TOUCH;
    }
    else if (usage==HIDD_USAGE_MOUSE){
      return QNX_HIDDI_DEV_MOUSE;
    }
    else if (usage==HIDD_USAGE_KEYBOARD){
      return QNX_HIDDI_DEV_KBD;
    }
  }
  return QNX_HIDDI_DEV_NONE;
} /* End of qnx_hiddi_get_device_type */

/*
 * Function    : qnx_hiddi_init
 * Return Value: byte
 * Descriptions: init available device type
 */
byte qnx_hiddi_init(){
  int i;
  uint8_t *data;
  uint16_t len;
  hidd_device_instance_t instance;
  _qnx_hiddi_params.funcs = NULL;
  
  if (hidd_connect(&_qnx_hiddi_params, &_qnx_hiddi_connection)!=EOK){
    _qnx_hiddi_connection=NULL;
    return 0;
  }
  for (i=0;i<QNX_HIDDI_MAX_DEV;i++) {
    if (hidd_get_device_instance(_qnx_hiddi_connection,i,&instance)!=EOK){
      continue;
    }
    if (hidd_get_report_desc(_qnx_hiddi_connection,&instance,&data, &len)!=EOK){
      continue;
    }
    _qnx_hiddi_dev_type[i] = qnx_hiddi_get_device_type(data, len);
    free(data);
  }
  if (hidd_disconnect(_qnx_hiddi_connection)!=EOK){
    _qnx_hiddi_connection=NULL;
    return 0;
  }
  return 1;
} /* End of qnx_hiddi_init */

/*
 * Function    : qnx_hiddi_register
 * Return Value: void
 * Descriptions: register device
 */
void qnx_hiddi_register(
  struct hidd_collection *col,
  hidd_device_instance_t * instance
){
  uint16_t i,n;
  struct hidd_collection **c;
  struct hidd_report_instance *ri;
  struct hidd_report *rep;
  hidview_device_t *device;
  for (i = 0; i < 10; i++) {
    if (hidd_get_report_instance(col,i,HID_INPUT_REPORT,&ri)==EOK){
      if (hidd_report_attach(_qnx_hiddi_connection,instance,ri,0,
          sizeof(hidview_device_t), &rep)==EOK) {
        device = hidd_report_extra(rep);
        device->report = rep;
        device->instance = ri;
      }
      else{
        break;
      }
    }
    else{
      break;
    }
  }
  hidd_get_collections(NULL, col, &c, &n);
  for (i = 0; i < n; i++) {
    qnx_hiddi_register(c[i], instance);
  }
} /* End of qnx_hiddi_register */

/*
 * Function    : qnx_hiddi_insertion
 * Return Value: void
 * Descriptions: insertion callback
 */
static void qnx_hiddi_insertion(
  struct hidd_connection *connection,
  hidd_device_instance_t * instance
){
  uint16_t i,n;
  struct hidd_collection **c;
  hidd_get_collections(instance, NULL, &c, &n);
  for (i=0;i<n;i++) {
    qnx_hiddi_register(c[i], instance);
  }
} /* End of qnx_hiddi_insertion */

/*
 * Function    : qnx_hiddi_removal
 * Return Value: void
 * Descriptions: removal callback
 */
static void qnx_hiddi_removal(
  struct hidd_connection *connection,
  hidd_device_instance_t * instance
){
  hidd_reports_detach(connection, instance);
} /* End of qnx_hiddi_removal */

/*
 * Function    : qnx_hiddi_report
 * Return Value: void
 * Descriptions: report callback
 */
static void qnx_hiddi_report(
  struct hidd_connection * connection,
  hidd_report_t * report,
  void * repdata,
  uint32_t len,
  uint32_t flags,
  void * user
){
  int devno=report->dev_inst->devno;
  if (devno>=QNX_HIDDI_MAX_DEV){ return; }
  byte type=_qnx_hiddi_dev_type[devno];
  bytep data = (bytep) repdata;
  
  if (type==QNX_HIDDI_DEV_TOUCH){
    /* touch handler */
    if ((len==5)||(len==6)) {
      if (data[0]==0x81){
        /* get x & y */
        int y = (data[2]<<8)|data[1];
        int x = (data[4]<<8)|data[3];
        
        /* calibrate */
        x-= QNX_HIDDI_EGALAX_X;
        y-= QNX_HIDDI_EGALAX_Y;
        if (x<0) x=0;
        if (y<0) y=0;
        if (x>QNX_HIDDI_EGALAX_W) x=QNX_HIDDI_EGALAX_W;
        if (y>QNX_HIDDI_EGALAX_H) y=QNX_HIDDI_EGALAX_H;
        x = (x * qnx_hiddi_screen_w) / QNX_HIDDI_EGALAX_W;
        y = (y * qnx_hiddi_screen_h) / QNX_HIDDI_EGALAX_H;
        x = qnx_hiddi_screen_w-x;
        
        /* process */
        if (len==6){
          qnx_hiddi_touch_x=-1;
          qnx_hiddi_touch_y=-1;
          qnxhid_send_event(QNXHID_EV_TOUCH_UP,x,y);
          return;
        }
        
        if ((qnx_hiddi_touch_x==-1)&&(qnx_hiddi_touch_y==-1)){
          qnx_hiddi_touch_x=x;
          qnx_hiddi_touch_y=y;
          qnxhid_send_event(QNXHID_EV_TOUCH_DOWN,x,y);
          /* send down x,y */
        }
        else if ((qnx_hiddi_touch_x!=x)||(qnx_hiddi_touch_y!=y)){
          qnx_hiddi_touch_x=x;
          qnx_hiddi_touch_y=y;
          qnxhid_send_event(QNXHID_EV_TOUCH_MOVE,x,y);
        }
      }
    }
  }
  
} /* End of qnx_hiddi_report */

/* callback functions */
static hidd_funcs_t _qnx_hiddi_functions={
  _HIDDI_NFUNCS,
  qnx_hiddi_insertion,
  qnx_hiddi_removal,
  qnx_hiddi_report,
  NULL
};

/*
 * Function    : qnx_hiddi_connect
 * Return Value: byte
 * Descriptions: connect hiddi devices
 */
byte qnx_hiddi_connect(){
  /* set callbacks */
  _qnx_hiddi_params.funcs = &_qnx_hiddi_functions;
  if (hidd_connect(&_qnx_hiddi_params, &_qnx_hiddi_connection)!=EOK){
    _qnx_hiddi_connection=NULL;
    return 0;
  }
  return 1;
} /* End of qnx_hiddi_connect */

/*
 * Function    : qnx_hiddi_disconnect
 * Return Value: byte
 * Descriptions: disconnect hiddi devices
 */
byte qnx_hiddi_disconnect(){
  if (_qnx_hiddi_connection!=NULL){
    if (hidd_disconnect(_qnx_hiddi_connection)!=EOK){
      return 0;
    }
    return 1;
  }
  return 0;
} /* End of qnx_hiddi_disconnect */



#endif /* __libaroma_qnx_hiddi_driver_c__ */

