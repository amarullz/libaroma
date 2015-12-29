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

#define _QNX_EGALAX_CONFIG_FILE "/cfg/touchscreen.calib.data"

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
static hidd_connect_parm_t _qnx_hiddi_params_checknum = {
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
    _qnx_hiddi_dev_type[i]=0;
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

int qnx_hiddi_getdevnum(){
  int i;
  uint8_t *data;
  uint16_t len;
  hidd_device_instance_t instance;
  _qnx_hiddi_params_checknum.funcs = NULL;
  struct hidd_connection * vconn = NULL;
  int gotnum=0;
  if (hidd_connect(&_qnx_hiddi_params_checknum, &vconn)!=EOK){
    vconn=NULL;
    return 0;
  }
  for (i=0;i<QNX_HIDDI_MAX_DEV;i++) {
    if (hidd_get_device_instance(vconn,i,&instance)!=EOK){
      continue;
    }
    if (hidd_get_report_desc(vconn,&instance,&data, &len)!=EOK){
      continue;
    }
    gotnum++;
    free(data);
  }
  if (hidd_disconnect(vconn)!=EOK){
    vconn=NULL;
    return 0;
  }
  return gotnum;
}

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

static byte __qnxhiddi_lastkey=0;
static long __qnxhiddi_lastkey_tick=0;


/*****************************************************************************
 * CALIBRATING
 */
static byte __qnxhiddi_calibrated=0;
typedef struct {
  float An;     /* A = An/Divider */
  float Bn;     /* B = Bn/Divider */
  float Cn;     /* C = Cn/Divider */
  float Dn;     /* D = Dn/Divider */
  float En;     /* E = En/Divider */
  float Fn;     /* F = Fn/Divider */
  float Divider;
} AW_CALIBMATRIX, *AW_CALIBMATRIXP;
typedef struct{
  float x;
  float y;
} AW_CALIBPOINT, *AW_CALIBPOINTP;
AW_CALIBMATRIX  atouch_calib_matrix={0};
byte aw_calibmatrix(AW_CALIBPOINTP displayPtr, AW_CALIBPOINTP screenPtr, AW_CALIBMATRIXP matrixPtr){  
  byte retValue = 1;
  matrixPtr->Divider = ((screenPtr[0].x - screenPtr[2].x) * (screenPtr[1].y - screenPtr[2].y)) -   
                       ((screenPtr[1].x - screenPtr[2].x) * (screenPtr[0].y - screenPtr[2].y)) ;  
  if( matrixPtr->Divider == 0 ) {  
      retValue = 0;  
  }  
  else{  
      matrixPtr->An = ((displayPtr[0].x - displayPtr[2].x) * (screenPtr[1].y - screenPtr[2].y)) -   
                      ((displayPtr[1].x - displayPtr[2].x) * (screenPtr[0].y - screenPtr[2].y)) ;
      matrixPtr->Bn = ((screenPtr[0].x - screenPtr[2].x) * (displayPtr[1].x - displayPtr[2].x)) -   
                      ((displayPtr[0].x - displayPtr[2].x) * (screenPtr[1].x - screenPtr[2].x)) ;
      matrixPtr->Cn = (screenPtr[2].x * displayPtr[1].x - screenPtr[1].x * displayPtr[2].x) * screenPtr[0].y +  
                      (screenPtr[0].x * displayPtr[2].x - screenPtr[2].x * displayPtr[0].x) * screenPtr[1].y +  
                      (screenPtr[1].x * displayPtr[0].x - screenPtr[0].x * displayPtr[1].x) * screenPtr[2].y ;
      matrixPtr->Dn = ((displayPtr[0].y - displayPtr[2].y) * (screenPtr[1].y - screenPtr[2].y)) -   
                      ((displayPtr[1].y - displayPtr[2].y) * (screenPtr[0].y - screenPtr[2].y)) ;
      matrixPtr->En = ((screenPtr[0].x - screenPtr[2].x) * (displayPtr[1].y - displayPtr[2].y)) -   
                      ((displayPtr[0].y - displayPtr[2].y) * (screenPtr[1].x - screenPtr[2].x)) ;
      matrixPtr->Fn = (screenPtr[2].x * displayPtr[1].y - screenPtr[1].x * displayPtr[2].y) * screenPtr[0].y +  
                      (screenPtr[0].x * displayPtr[2].y - screenPtr[2].x * displayPtr[0].y) * screenPtr[1].y +  
                      (screenPtr[1].x * displayPtr[0].y - screenPtr[0].x * displayPtr[1].y) * screenPtr[2].y ;
  } 
  return retValue;
}
void atouch_translate_raw(int * x, int * y){
  if ((atouch_calib_matrix.Divider!=0)&&(__qnxhiddi_calibrated)){
    if ((*x!=0)&&(*y!=0)){
      float fevtouch_rx = ((float) *x)/2;
      float fevtouch_ry = ((float) *y)/2;
      *x = round((((atouch_calib_matrix.An * fevtouch_rx) +   
                        (atouch_calib_matrix.Bn * fevtouch_ry) +   
                         atouch_calib_matrix.Cn   
                      ) / atouch_calib_matrix.Divider) * 2) ;  
      *y = round((( (atouch_calib_matrix.Dn * fevtouch_rx) +   
                        (atouch_calib_matrix.En * fevtouch_ry) +   
                         atouch_calib_matrix.Fn   
                      ) / atouch_calib_matrix.Divider)*2) ;
      if (*x<=0) *x=1;
      if (*y<=0) *y=1;
    }
  }
}
void atouch_matrix_calibrate(AW_CALIBMATRIXP matrix){
  memcpy(&atouch_calib_matrix,matrix,sizeof(AW_CALIBMATRIX));
  FILE * fp = fopen(_QNX_EGALAX_CONFIG_FILE,"w+");
  fwrite(&atouch_calib_matrix,sizeof(AW_CALIBMATRIX),1,fp);
  fclose(fp);
  __qnxhiddi_calibrated = 1;
}
byte libaroma_msg_runstate();
byte __qnx_hiddi_config(LIBAROMA_HIDP me, const char * name, const char * val, dword vl){
  if (strcmp("calibrate",name)==0){
    LIBAROMA_CANVASP cv=libaroma_fb()->canvas;
    LIBAROMA_CANVASP tmp_canvas = libaroma_canvas(cv->w,cv->h);
    libaroma_draw(tmp_canvas,cv,0,0,0);
    
    /* prepare */
    byte prev_runstate=libaroma_msg_runstate();
    if (prev_runstate==2){
      libaroma_msg_stop();
    }
    
    int dp10    = 150;
    int xpos[3] = {
      dp10, cv->w-dp10, cv->w/2
    };
    int ypos[3] = {
      dp10, cv->h/2, cv->h-dp10
    };
    int xtch[3] = { 0,0,0 };
    int ytch[3] = { 0,0,0 };
    AW_CALIBPOINT dPoint[3];
    AW_CALIBPOINT tPoint[3];
    int i;
    int sz=48;
    int szh=sz/2;
    byte restart_calib=0;
    byte is_test=(strcmp(val,"test")==0)?1:0;
    
    do{ /* restart calib */
      byte onpool=1;
      
      /* points */
      if (!is_test){
        __qnxhiddi_calibrated=0;
        for (i=0;i<3;i++){
          int x  = xpos[i];
          int y  = ypos[i];
          int rx     = x-szh;
          int ry     = y-szh;
          
          /* cleanup */
          libaroma_draw_rect(cv,0,0,cv->w,cv->h,0,0xff);
          libaroma_gradient_ex(cv,
            rx,ry,sz,sz,0xffff,0xffff,szh,0x1111,0xff,0xff
          );
          libaroma_draw_text(
            cv,
            "<b>KALIBRASI TOUCHSCREEN</b>\n"
            "Silahkan <u>TAP</u> Pada Point yang Diminta\n"
            "<u>Backspace/Delete</u> Untuk Mengulangi Kalibrasi\n"
            "<u>ESC</u> Untuk Membatalkan",
            0, (cv->h/2)-80,
            0xffff,
            1024,
            LIBAROMA_TEXT_CENTER|LIBAROMA_FONT(0,8),
            120
          );
          libaroma_fb_sync();
          
          onpool=1;
          libaroma_msg_start();
          int now_x = -1;
          int now_y = -1;
          do{
            LIBAROMA_MSG msg;
            byte mv=libaroma_msg(&msg);
            if (mv==LIBAROMA_MSG_TOUCH){
              if (msg.state==0){
                xtch[i]=now_x;
                ytch[i]=now_y;
                onpool=0;
              }
              else{
                now_x=msg.x;
                now_y=msg.y;
                libaroma_draw_rect(cv,rx,rx,sz,sz,0,0xff);
                libaroma_gradient_ex(cv,
                  rx,ry,sz,sz,RGB(88ff88),RGB(55cc55),szh,0x1111,0xff,0xff
                );
                libaroma_fb_sync();
              }
            }
            else if (mv==LIBAROMA_MSG_WIN_DIRECTMSG){
              byte cmd  = LIBAROMA_CMD(((dword) msg.x));
              word id   = LIBAROMA_CMD_ID(((dword) msg.x));
              byte param = LIBAROMA_CMD_PARAM(((dword) msg.x));
              if (id==1){
                onpool=2;
              }
              else if ((id==8)||(id==9)){
                onpool=4;
              }
            }
          }while(onpool==1);
          libaroma_msg_stop();
          if (onpool!=2){
            dPoint[i].x = ((float) xpos[i])/2;
            dPoint[i].y = ((float) ypos[i])/2;
            tPoint[i].x = ((float) xtch[i])/2;
            tPoint[i].y = ((float) ytch[i])/2;
          }
          else{
            break;
          }
          if (onpool==4){
            i=-1;
            onpool=0;
          }
        }
      }
      
      if ((onpool!=2)||(is_test)){
        AW_CALIBMATRIX matrix;
        byte is_calib_ok=0;
        if (!is_test){
          if (aw_calibmatrix(dPoint,tPoint, &matrix)){    
            atouch_matrix_calibrate(&matrix);
            is_calib_ok=1;
          }
        }
        if (is_calib_ok||is_test){
          LIBAROMA_CANVASP bgcv=libaroma_canvas(cv->w,cv->h);
          libaroma_draw_rect(bgcv,0,0,cv->w,cv->h,0,0xff);
          if (is_test){
            libaroma_draw_text(
              bgcv,
              "<b>TEST KALIBRASI TOUCHSCREEN</b>\n"
              "Silahkan <u>TAP</u> Pada Touchscreen Untuk Melakukan Test\n"
              "<u>ESC</u> Untuk Selesai"
              ,
              0, (cv->h/2)-40,
              0xffff,
              1024,
              LIBAROMA_TEXT_CENTER|LIBAROMA_FONT(0,8),
              120
            );
          }
          else{
            libaroma_draw_text(
              bgcv,
              "<b>TEST HASIL KALIBRASI TOUCHSCREEN</b>\n"
              "Silahkan <u>TAP</u> Pada Touchscreen Untuk Melakukan Test\n"
              "<u>Delete/Backspace</u> Untuk Mengulangi Kalibrasi\n"
              "<u>ESC</u> Untuk Selesai dan Menyimpan Hasil Kalibrasi"
              ,
              0, (cv->h/2)-80,
              0xffff,
              1024,
              LIBAROMA_TEXT_CENTER|LIBAROMA_FONT(0,8),
              120
            );
          }
          libaroma_draw(cv,bgcv,0,0,0);
          libaroma_fb_sync();
          int now_x=0;
          int now_y=0;
        
          onpool=1;
          libaroma_msg_start();
          long last_tick=0;
          do{
            LIBAROMA_MSG msg;
            byte mv=libaroma_msg(&msg);
            if (mv==LIBAROMA_MSG_TOUCH){
              byte drawit=0;
              if (msg.state==1) drawit=1;
              else if (msg.state==2){
                if (last_tick<libaroma_tick()-20){
                  drawit=1;
                }
              }
              else if (msg.state==0){
                libaroma_draw_ex(cv,bgcv,now_x,now_y,now_x,now_y,sz,sz,0,0xff);
                libaroma_gradient_ex(cv,
                  now_x,now_y,sz,sz,0xffff,0xffff,
                  szh,0x1111,0xff,0xff
                );
                libaroma_fb_sync();
              }
              if (drawit){
                libaroma_draw_ex(cv,bgcv,now_x,now_y,now_x,now_y,sz,sz,0,0xff);
                now_x=msg.x-szh;
                now_y=msg.y-szh;
                if (now_x<0) now_x=0;
                if (now_y<0) now_y=0;
                if (now_x>cv->w-sz) now_x=cv->w-sz;
                if (now_y>cv->h-sz) now_y=cv->h-sz;
                libaroma_gradient_ex(cv,
                  now_x,now_y,sz,sz,RGB(88ff88),RGB(55cc55),szh,0x1111,0xff,0xff
                );
                libaroma_fb_sync();
                last_tick=libaroma_tick();
              }
            }
            else if (mv==LIBAROMA_MSG_WIN_DIRECTMSG){
              byte cmd  = LIBAROMA_CMD(((dword) msg.x));
              word id   = LIBAROMA_CMD_ID(((dword) msg.x));
              byte param = LIBAROMA_CMD_PARAM(((dword) msg.x));
              if (id==1){
                onpool=0;
                restart_calib=0;
              }
              else if (((id==8)||(id==9))&&(!is_test)){
                onpool=0;
                restart_calib=1;
              }
            }
          }while(onpool);
          libaroma_msg_stop();
          libaroma_canvas_free(bgcv);
        }
        else{
          ALOGW("CALIBRATION DATA FAILED");
        }
      }
    }while(restart_calib);
    
    libaroma_draw(cv,tmp_canvas,0,0,0);
    libaroma_fb_sync();
    libaroma_canvas_free(tmp_canvas);
    
    if (prev_runstate==2){
      libaroma_msg_start();
    }
  }
}


/*****************************************************************************
 * END CALIBRATING
 */
/*
 * Function    : qnx_hiddi_takescreenshoot
 * Return Value: void
 * Descriptions: Take screenshoot
 */
static long _qnx_hiddi_takescreenshoot_last=0;
void qnx_hiddi_takescreenshoot(){
  if (_qnx_hiddi_takescreenshoot_last+1000<libaroma_tick()){
    time_t ltime  = time(NULL);
    struct tm *Tm = localtime(&ltime);
    mkdir("/data/screenshoot/",0755);
    char sspath[256];
    snprintf(sspath,256,"/data/screenshoot/%i%02i%02i%02i%02i%02i.png",
      Tm->tm_year,
      Tm->tm_mon+1,
      Tm->tm_mday,
      Tm->tm_hour, Tm->tm_min, Tm->tm_sec
    );
    ALOGI("Save Screenshoot To : %s",sspath);
    libaroma_png_save(LIBAROMA_FB_CANVAS,sspath);
    _qnx_hiddi_takescreenshoot_last=libaroma_tick();
  }
}

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
      //printf("TOUCH: %i %i %i %i %i\n",data[0],data[1],data[2],data[3],data[4]);
      if ((data[0]==0x81)||(data[0]==0x80)){
        /* get x & y */
        int y = (data[2]<<8)|data[1];
        int x = (data[4]<<8)|data[3];
        
        atouch_translate_raw(&x,&y);
        
        /* calibrate */
        /*
        x-= QNX_HIDDI_EGALAX_X;
        y-= QNX_HIDDI_EGALAX_Y;
        if (x<0) x=0;
        if (y<0) y=0;
        if (x>QNX_HIDDI_EGALAX_W) x=QNX_HIDDI_EGALAX_W;
        if (y>QNX_HIDDI_EGALAX_H) y=QNX_HIDDI_EGALAX_H;
        x = (x * qnx_hiddi_screen_w) / QNX_HIDDI_EGALAX_W;
        y = (y * qnx_hiddi_screen_h) / QNX_HIDDI_EGALAX_H;
        x = qnx_hiddi_screen_w-x;
        */
        
        
        /* process */
        if ((len==6)||(data[0]==0x80)){
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
  else if (type==QNX_HIDDI_DEV_KBD) {
    if (len==8){
      if (__qnxhiddi_lastkey_tick<libaroma_tick()-100){
        __qnxhiddi_lastkey=0;
      }
      if (__qnxhiddi_lastkey!=data[2]){
        if (data[2]==0){
          if (__qnxhiddi_lastkey_tick<libaroma_tick()-100){
            __qnxhiddi_lastkey=0;
          }
          return;
        }
        
        __qnxhiddi_lastkey=data[2];
        __qnxhiddi_lastkey_tick=libaroma_tick();
        
        // printf("KEYBOARD: %i\n",__qnxhiddi_lastkey);
        //ALOGI("KEYBOARD KEY CODE: %i",__qnxhiddi_lastkey);
        /* SCREEN SHOOT */
        if (__qnxhiddi_lastkey==70){
          qnx_hiddi_takescreenshoot();
          return;
        }
        
        qnxhid_send_event(QNXHID_EV_TOUCH_RAW_KBD, __qnxhiddi_lastkey,devno);
        
        if ((data[2]==41)||(data[2]==86)){
          /* esc */
          qnxhid_send_event(QNXHID_EV_TOUCH_KBD, 1/* id */,1 /* param */);
        }
        else if ((data[2]==42)||(data[2]==99)){
          /* backspace */
          qnxhid_send_event(QNXHID_EV_TOUCH_KBD, 8, 0);
        }
        else if (data[2]==76){
          /* delete */
          qnxhid_send_event(QNXHID_EV_TOUCH_KBD, 9, 0);
        }
        else if ((data[2]>=30)&&(data[2]<=38)){
          /* 1 - 9 */
          qnxhid_send_event(QNXHID_EV_TOUCH_KBD, data[2]-19,0);
        }
        else if ((data[2]>=89)&&(data[2]<=97)){
          /* 1 - 9 */
          qnxhid_send_event(QNXHID_EV_TOUCH_KBD, data[2]-78,0);
        }
        else if ((data[2]==39)||(data[2]==98)){
          /* 0 */
          qnxhid_send_event(QNXHID_EV_TOUCH_KBD, 10,0);
        }
      }
    }
    // qnxhid_send_event(QNXHID_EV_TOUCH_KBD,/* id */,0 /* param */);
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
  if (libaroma_file_exists(_QNX_EGALAX_CONFIG_FILE)){
    FILE * fp = fopen(_QNX_EGALAX_CONFIG_FILE,"r");
    fread(&atouch_calib_matrix,sizeof(AW_CALIBMATRIX),1,fp);
    fclose(fp);
    __qnxhiddi_calibrated = 1;
  }
  else{
    __qnxhiddi_calibrated = 0;
  }
  
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

