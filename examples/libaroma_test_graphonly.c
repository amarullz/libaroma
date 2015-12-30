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
 * Filename    : libaroma_test_graphonly.c
 * Description : libaroma test file
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 04/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_test_graphonly_c__
#define __libaroma_test_graphonly_c__

/* libaroma header */
#include <aroma.h>

/*
 DUMMY PNG
*/
#include <png.h>
#include <pngstruct.h>
void PNGAPI png_destroy_write_struct(png_structpp png_ptr_ptr, png_infopp info_ptr_ptr){}
void png_free_buffer_list(png_structrp png_ptr, png_compression_bufferp *listp){}


static LIBAROMA_CANVASP dc; /* display canvas */

/* init */
byte init_aroma(){
  /* init graph and font */
  if (!libaroma_fb_init()) {
    printf("cannot init framebuffer\n");
    return 0;
  }
  if (!libaroma_font_init()) {
    printf("Cannot init font\n");
    libaroma_fb_release();
    return 0;
  }
  /* load font */
  libaroma_font(0,
    libaroma_stream(
      "file:///sdcard/Roboto-Regular.ttf"
    )
  );
  
  dc=libaroma_fb()->canvas;
  
  /* clean display */
  libaroma_canvas_blank(dc);
  return 1;
}
/* cleanup */
void release_aroma(){
  libaroma_font_release();
  libaroma_fb_release();
}

/**********************************************************************************
 **
 ** MINIMAL LIST
 **
 **/
#define SCROLL_INDICATOR_WIDTH libaroma_dp(5)
typedef struct{
  LIBAROMA_CANVASP cv;
  LIBAROMA_CANVASP cva;
  int n;  /* item count */
  int w;  /* list width */
  int ih; /* item height */
  word bgcolor;
  word selcolor;
  word textcolor;
  word textselcolor;
} MINLIST;
MINLIST * list_create(int width, int itemheight, word bg, word sl, word tbg, word tsl){
  MINLIST * list = (MINLIST *) calloc(sizeof(MINLIST),1);
  list->w = width;
  list->ih = itemheight;
  list->n = 0;
  list->bgcolor=bg;
  list->selcolor=sl;
  list->textcolor=tbg;
  list->textselcolor=tsl;
  return list;
}
void list_free(MINLIST * list){
  if (list->n>0){
    libaroma_canvas_free(list->cv);
    libaroma_canvas_free(list->cva);
  }
  free(list);
}

#define LIST_ADD_MASK_ICON_COLOR        0x1 /* mask icon with text color */
#define LIST_ADD_WITH_SEPARATOR         0x2 /* add separator below item */
#define LIST_ADD_SEPARATOR_ALIGN_TEXT   0x4 /* align the separator line with text position */
void list_add(MINLIST * list,char * icon, char * title, char * subtitle, byte flags){
  int new_n  = list->n + 1;
  int item_y = list->n * list->ih;
  LIBAROMA_CANVASP cv = libaroma_canvas(list->w, list->ih*new_n);
  LIBAROMA_CANVASP cva= libaroma_canvas(list->w, list->ih*new_n);
  
  /* draw previous */
  if (list->n>0){
    libaroma_draw(cv,list->cv,0,0,0);
    libaroma_draw(cva,list->cva,0,0,0);
    libaroma_canvas_free(list->cv);
    libaroma_canvas_free(list->cva);
  }
  
  /* draw bg */
  libaroma_draw_rect(cv, 0, item_y, list->w, list->ih, list->bgcolor, 0xff);
  
  /* selected bg */
  libaroma_draw_rect(cva, 0, item_y, list->w, list->ih, list->bgcolor, 0xff);
  libaroma_draw_rect(cva, 0, item_y+libaroma_dp(1), list->w, list->ih-libaroma_dp(1), list->selcolor, 0xff);
  
  char text[256];
  if (subtitle!=NULL){
    word scolor = libaroma_alpha(list->bgcolor,list->textcolor,0x66);
    snprintf(text,256,"<b>%s</b>\n<#%02X%02X%02X><size=3>%s</size></#>",title?title:"",
      libaroma_color_r(scolor),
      libaroma_color_g(scolor),
      libaroma_color_b(scolor),
      subtitle);
  }
  else{
    snprintf(text,256,"<b>%s</b>",title?title:"");
  }
  
  /* draw text */
  int left_pad=libaroma_dp(72);
  int right_pad=libaroma_dp(16);
  LIBAROMA_TEXT txt = libaroma_text(
    text,
    list->textcolor, list->w-(left_pad+right_pad),
    LIBAROMA_FONT(0,4),
  	100
  );
  if (txt){
    int txty=item_y + ((list->ih>>1)-((libaroma_text_height(txt)>>1))-libaroma_dp(2));
    libaroma_text_draw(
      cv, txt, left_pad, txty
    );
    libaroma_text_draw_color(
      cva, txt, left_pad, txty, list->textselcolor
    );
    libaroma_text_free(txt);
  }
  
  if (icon!=NULL){
    LIBAROMA_CANVASP ico =libaroma_image_uri(icon);
    if (ico){
      int dpsz=libaroma_dp(40);
      int icoy=item_y + ((list->ih>>1) - (dpsz>>1));
      int icox=libaroma_dp(16);
      byte ismask=(LIST_ADD_MASK_ICON_COLOR&flags)?1:0;
        
      if (ismask){
        libaroma_canvas_fillcolor(ico,libaroma_alpha(list->bgcolor,list->textcolor,0xcc));
      }
      libaroma_draw_scale_smooth(
        cv, ico,
        icox,icoy,
        dpsz, dpsz,
        0, 0, ico->w, ico->h
      );
      if (ismask){
        libaroma_canvas_fillcolor(ico,libaroma_alpha(list->selcolor,list->textselcolor,0xcc));
      }
      libaroma_draw_scale_smooth(
        cva, ico,
        icox,icoy,
        dpsz, dpsz,
        0, 0, ico->w, ico->h
      );
      libaroma_canvas_free(ico);
    }
  }
  
  if (LIST_ADD_WITH_SEPARATOR&flags){
    byte is_dark = libaroma_color_isdark(list->bgcolor);
    int sepxp=0;
    if (flags&LIST_ADD_SEPARATOR_ALIGN_TEXT){
      sepxp=libaroma_dp(72);
    }
    libaroma_draw_rect(
      cv,
      sepxp,
      item_y-libaroma_dp(1),
      cv->w-sepxp,
      libaroma_dp(1),
      is_dark?RGB(555555):RGB(dddddd),
      0xff
    );
  }
  
  list->cv  = cv;
  list->cva = cva;
  list->n   = new_n;
}
void list_show(MINLIST * list, int selectedid, int x, int y, int h){
  /* cleanup */
  libaroma_draw_rect(dc, x, y, list->w, h, list->bgcolor, 0xff);
  if (list->n<1){
    /* forget it */
    goto syncit;
  }
  if ((selectedid<0)||(selectedid>=list->n)){
    /* just blit non active canvas */
    libaroma_draw_ex(
      dc, list->cv, x, y, 0, 0,list->w, h, 0, 0xff
    );
    goto syncit;
  }
  
  int sel_y  = selectedid * list->ih;
  if (list->cv->h<h){
    /* dont need scroll */
    libaroma_draw_ex(
      dc, list->cv, x, y, 0, 0,list->w, h, 0, 0xff
    );
    libaroma_draw_ex(
      dc, list->cva, x, y+sel_y,0,sel_y,list->w, list->ih, 0, 0xff
    );
    goto syncit;
  }
  
  int sel_cy = sel_y + (list->ih>>1);
  int draw_y = (h>>1) - sel_cy;
  draw_y = (draw_y<0)?(0-draw_y):0;
  if (list->cv->h-draw_y<h){
    draw_y = list->cv->h-h;
  }
  libaroma_draw_ex(
    dc, list->cv, x, y, 0, draw_y,list->w, h, 0, 0xff
  );
  libaroma_draw_ex(
    dc, list->cva, x, y+(sel_y-draw_y),0,sel_y,list->w,list->ih, 0, 0xff
  );
  /* draw scroll indicator */
  int si_h = (h * h) / list->cv->h;
  int si_y = draw_y * h;
  if (si_y>0){
    si_y /= list->cv->h;
  }
  int si_w = SCROLL_INDICATOR_WIDTH;
  int pad  = libaroma_dp(1);
  byte is_dark = libaroma_color_isdark(list->bgcolor);
  word indicator_color = is_dark?RGB(cccccc):RGB(666666);
  /* draw indicator */
  libaroma_draw_rect(dc, x+list->w-si_w,  y+si_y, si_w-libaroma_dp(2),
    si_h, indicator_color, 120);
  
syncit:
  /* draw shadow ;) */
  libaroma_gradient_ex1(dc, x, y, list->w,libaroma_dp(5),0,0,0,0,80,0,2);
  libaroma_sync();
}
/**
 **
 ** END OF MINIMAL LIST
 **
 **********************************************************************************/

void appbar_draw(char * text, word bgcolor, word textcolor, int y, int h){
  /* draw appbar */
  libaroma_draw_rect(
    dc, 0, y, dc->w, h, bgcolor, 0xff
  );
  int txt_x = libaroma_dp(16);
  
  LIBAROMA_TEXT txt = libaroma_text(
    text,
    textcolor,
    dc->w-txt_x,
    LIBAROMA_FONT(0,6)|
    LIBAROMA_TEXT_SINGLELINE|
    LIBAROMA_TEXT_LEFT|
    LIBAROMA_TEXT_BOLD|
    LIBAROMA_TEXT_FIXED_INDENT|
    LIBAROMA_TEXT_FIXED_COLOR|
    LIBAROMA_TEXT_NOHR,
    100
  );
  if (txt){
    int txty=y + ((h>>1)-((libaroma_text_height(txt)>>1))-libaroma_dp(2));
    libaroma_text_draw(
      dc, txt, txt_x, txty
    );
    libaroma_text_free(txt);
  }
  libaroma_sync();
}

int main(int argc, char **argv){
  if (init_aroma()){
    int i;
    int statusbar_height = libaroma_dp(24);
    int appbar_height    = libaroma_dp(56);
    int list_y           = statusbar_height + appbar_height;
    int list_height      = dc->h-list_y;
    
    /*
     * DRAW STATUSBAR
     */
    libaroma_draw_rect(
      dc, 0, 0, dc->w, statusbar_height, RGB(335577), 0xff
    );
    libaroma_draw_text(
    	dc,
    	"AROMA Bootloader",
    	0, libaroma_dp(2) ,RGB(ffffff), dc->w,
    	LIBAROMA_FONT(0,3)|LIBAROMA_TEXT_CENTER,
    	100
    );
    
    /*
     * Create List
     */
    MINLIST * list = list_create(
      dc->w,
      libaroma_dp(72),
      RGB(ffffff),
      RGB(cccccc),
      RGB(000000),
      RGB(000000)
    );
    
    /*
     * Add List Items
     */
    for (i=0;i<30;i++){
      char title[64];
      char subtitle[64];
      snprintf(title,64,"Item Number %i", i+1);
      snprintf(subtitle,64,"This is subtitle text number %i", i+1);
      list_add(
        list,
        "file:///sdcard/gesture.png",
        title,
        subtitle,
        LIST_ADD_MASK_ICON_COLOR|LIST_ADD_WITH_SEPARATOR
        /*|LIST_ADD_SEPARATOR_ALIGN_TEXT*/
      );
    }
    
    /* set appbar */
    appbar_draw(
      "Please Select OS",
      RGB(446688),
      RGB(ffffff),
      statusbar_height,
      appbar_height
    );
    
    /* show & change list selection */
    for (i=-1;i<30;i++){
      list_show(list, i, 0, list_y, list_height);
      usleep(200000);
    }
    
    /* change appbar text */
    for (i=0;i<10;i++){
      char txapp[32];
      snprintf(txapp,32,"App Title #%i",i+1);
      appbar_draw(
        txapp,
        RGB(446688),
        RGB(ffffff),
        statusbar_height,
        appbar_height
      );
      usleep(300000);
    }
    
    /* down to up */
    for (i=29;i>=-1;i--){
      list_show(list, i, 0, list_y, list_height);
      usleep(300000);
    }
    
    
    list_free(list);
    release_aroma();
  }
  
  return 0;
} /* End of main */

#endif /* __libaroma_test_graphonly_c__ */
