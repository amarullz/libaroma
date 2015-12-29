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

/* MINIMAL LIST */
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

void list_add(MINLIST * list,char * text){
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
  libaroma_draw_rect(cva, 0, item_y, list->w, list->ih, list->selcolor, 0xff);
  
  /* draw text */
  LIBAROMA_TEXT txt = libaroma_text(
    text,
    list->textcolor, list->w,
    LIBAROMA_FONT(0,4)|LIBAROMA_TEXT_CENTER,
  	100
  );
  if (txt){
    int txty=item_y + ((list->ih>>1)-(libaroma_text_height(txt)>>1));
    libaroma_text_draw(
      cv, txt, 0, txty
    );
    libaroma_text_draw_color(
      cva, txt, 0, txty, list->textselcolor
    );
    libaroma_text_free(txt);
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
  int si_y = (selectedid+1) * (h-si_h);
  if (si_y>0){
    si_y /= list->n;
    int si_w = SCROLL_INDICATOR_WIDTH;
    int pad  = libaroma_dp(1);
    
    /* draw indicator */
    libaroma_draw_rect(dc, x+list->w-si_w, 
      y+si_y, si_w, si_h, list->bgcolor, 0xff
    );
    
    libaroma_draw_rect(dc, x+list->w-si_w+pad, 
      y+si_y+pad, si_w-pad*2, si_h-pad*2, list->textcolor, 0xff
    );
  }
  
syncit:
  libaroma_sync();
}


int main(int argc, char **argv){
  
  
  if (init_aroma()){
    MINLIST * list = list_create(
      dc->w-100,
      libaroma_dp(48),
      RGB(000000),
      RGB(446688),
      RGB(ffffff),
      RGB(ffdd88)
    );
    
    int i;
    for (i=0;i<30;i++){
      char txt[64];
      snprintf(txt,64,"Item <b>Num %i</b> <u>%i</u>", i, (i+1) * 10);
      list_add(list,txt);
    }
    
    int list_height = libaroma_dp(48)*8; /* 8 items per page */
    
    /* draw frame */
    libaroma_draw_rect(dc, 40, 290, dc->w-80, list_height+20, RGB(666666), 0xff);
    
    /* up to down */
    for (i=-1;i<30;i++){
      list_show(list, i, 50, 300, list_height);
      usleep(300000);
    }
    
    /* down to up */
    for (i=29;i>=-1;i--){
      list_show(list, i, 50, 300, list_height);
      usleep(300000);
    }
    
    
    list_free(list);
    release_aroma();
  }
  
  return 0;
} /* End of main */

#endif /* __libaroma_test_graphonly_c__ */
