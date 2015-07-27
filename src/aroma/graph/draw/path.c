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
 * Filename    : path.c
 * Description : path drawing
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_path_c__
#define __libaroma_path_c__
#include <aroma_internal.h>


/*
 * Function    : libaroma_path
 * Return Value: LIBAROMA_PATHP
 * Descriptions: create new path
 */
LIBAROMA_PATHP libaroma_path(float x, float y){
  LIBAROMA_PATHP path = (LIBAROMA_PATHP) calloc(sizeof(LIBAROMA_PATH),1);
  if (!path){
    ALOGW("libaroma_path alloc LIBAROMA_PATHP failed");
    return NULL;
  }
  path->p=(LIBAROMA_PATH_POINTP) malloc(sizeof(LIBAROMA_PATH_POINT)*32);
  if (!path->p){
    free(path);
    ALOGW("libaroma_path alloc path->p failed");
    return NULL;
  }
  path->p[0].x=x;
  path->p[0].y=y;
  path->max.x=path->min.x=x;
  path->max.y=path->min.y=y;
  path->n=1;
  return path;
} /* End of libaroma_path */

/*
 * Function    : libaroma_path_free
 * Return Value: byte
 * Descriptions: free path
 */
byte libaroma_path_free(LIBAROMA_PATHP path){
  if (!path){
    return 0;
  }
  if (path->p){
    free(path->p);
  }
  free(path);
  return 1;
} /* End of libaroma_path_free */

/*
 * Function    : libaroma_path_add
 * Return Value: byte
 * Descriptions: add point into path
 */
byte libaroma_path_add(LIBAROMA_PATHP path, float x, float y){
  if (!path){
    return 0;
  }
  if (!path->p){
    return 0;
  }
  if (path->n%32==0){
    LIBAROMA_PATH_POINTP newp = (LIBAROMA_PATH_POINTP) realloc(
      path->p,sizeof(LIBAROMA_PATH_POINT)*(path->n+32)
    );
    if (!newp){
      ALOGW("libaroma_path_add cannot realloc path->p");
      return 0;
    }
    path->p = newp;
  }
  path->p[path->n].x=x;
  path->p[path->n].y=y;
  path->max.x=MAX(path->max.x,x);
  path->max.y=MAX(path->max.y,y);
  path->min.x=MIN(path->min.x,x);
  path->min.y=MIN(path->min.y,y);
  path->n++;
  return 1;
} /* End of libaroma_path_add */

/*
 * Function    : libaroma_path_curve_calc
 * Return Value: void
 * Descriptions: calculating bezier curve
 */
void libaroma_path_curve_calc(
  float t,
  float *x, float *y,
  float x0, float y0,
  float x1, float y1,
  float x2, float y2,
  float x3, float y3){
  float u = 1-t;
  float tt = t*t;
  float uu = u*u;
  float uuu = uu * u;
  float ttt = tt * t;
  
  /* calculating */
  *x = uuu * x0;
  *x += 3 * uu * t * x1;
  *x += 3 * u * tt * x2;
  *x += ttt * x3;
  *y = uuu * y0;
  *y += 3 * uu * t * y1;
  *y += 3 * u * tt * y2;
  *y += ttt * y3;
} /* End of libaroma_path_curve_calc */

/*
 * Function    : _libaroma_path_curve_findpoint
 * Return Value: byte
 * Descriptions: find curve path points
 */
byte _libaroma_path_curve_findpoint(
  LIBAROMA_PATHP path,
  float t0, float t1,
  float x0, float y0,
  float x1, float y1,
  float x2, float y2,
  float x3, float y3,
  float xt0, float yt0,
  float xt1, float yt1
  ){
  if (t0==t1){
    return 0;
  }
  float thalf = t0 + ((t1 - t0) / 2);
  float xt, yt;
  libaroma_path_curve_calc(thalf, &xt, &yt,x0,y0,x1,y1,x2,y2,x3,y3);
  
  if ((abs(xt-xt0)>=2)||(abs(yt-yt0)>=2)) {
    _libaroma_path_curve_findpoint(
      path,t0,thalf,x0,y0,x1,y1,x2,y2,x3,y3,xt0,yt0,xt,yt);
  }
  libaroma_path_add(path, xt, yt);
  
  if ((abs(xt-xt1)>=2)||(abs(yt-yt1)>=2)) {
    _libaroma_path_curve_findpoint(
      path,thalf,t1,x0,y0,x1,y1,x2,y2,x3,y3,xt,yt,xt1,yt1);
  }
  libaroma_path_add(path, xt1, yt1);
  return 1;
} /* End of _libaroma_path_curve_findpoint */

/*
 * Function    : libaroma_path_curve
 * Return Value: byte
 * Descriptions: add curve point
 */
byte libaroma_path_curve(
  LIBAROMA_PATHP path,
  int resolution,
  float x1, float y1,
  float x2, float y2,
  float x3, float y3
){
  if (!path){
    return 0;
  }
  if (!path->p){
    return 0;
  }
  if (resolution<1){
    /* dynamic hi res curve calculation */
    float x0 = path->p[path->n-1].x;
    float y0 = path->p[path->n-1].y;
    _libaroma_path_curve_findpoint(
      path,0,1,x0,y0,x1,y1,x2,y2,x3,y3,x0,y0,x3,y3);
  }
  else{
    /* fixed resolution */
    int i;
    float x0 = path->p[path->n-1].x;
    float y0 = path->p[path->n-1].y;
    int px = round(x0);
    int py = round(y0);
    for(i=0;i<resolution;i++){
      float x, y;
      float t = i / ((float) (resolution-1));
      libaroma_path_curve_calc(t,&x,&y,x0,y0,x1,y1,x2,y2,x3,y3);
      int rx = round(x);
      int ry = round(y);
      if ((px!=rx)||(py!=ry)){
        libaroma_path_add(path, x, y);
      }
    }
  }
  return 1;
} /* End of libaroma_path_curve */

/*
 * Function    : libaroma_path_draw
 * Return Value: byte
 * Descriptions: draw path
 */
byte libaroma_path_draw(
  LIBAROMA_CANVASP dest,
  LIBAROMA_PATHP path,
  word color,
  byte alpha,
  byte is_mask,
  float aliasing){
  if (!dest){
    dest=libaroma_fb()->canvas;
  }
  if ((is_mask)&&(dest->alpha==NULL)){
    return 0;
  }
  if (!path){
    return 0;
  }
  if ((!is_mask)&&(alpha<1)){
    return 1;
  }
  
  if (aliasing<=0){
    aliasing=1;
  }
  if (aliasing>1){
    aliasing=1;
  }
  
  /* fill */
  if (path->n>1){
    int  miny   = MAX(0,floor(path->min.y));
    int  maxy   = MIN(dest->h-1,ceil(path->max.y));
    int  minx   = MAX(0,floor(path->min.x));
    int  dwidth = MIN(dest->w,ceil(path->max.x))-minx;
    if (dwidth<1){
      return 1;
    }
    float alias_sz = 1/aliasing;
    byte alphaaa=alpha*aliasing;
    if (is_mask==2){
      alphaaa=255*aliasing;
    }
    int py=0;
    
    /* loop through the rows of the image. */
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (py=miny;py<=maxy;py++) {
      bytep line=NULL;
      if (is_mask){
        line = dest->alpha + py * dest->l + minx;
      }
      else{
        line = calloc(dwidth,1);
      }
      float * nodes = (float *) malloc(sizeof(float) * path->n);
      int pyn;
      for (pyn=0;pyn<alias_sz;pyn++){
        float fy = ((float) py)+(((float) pyn)*aliasing);
        int i, n=0, j=path->n-1;
        
        /* find nodes */
        for (i=0;i<path->n;i++){
          if (
            ((path->p[i].y<fy)&&(path->p[j].y>=fy))||
            ((path->p[j].y<fy)&&(path->p[i].y>=fy))
          ){
            nodes[n++] = (
                (path->p[i].x+(fy-path->p[i].y)/(path->p[j].y-path->p[i].y)*
                (path->p[j].x-path->p[i].x))) - ((float) minx);
          }
          j = i;
        }
        
        /* there is nodes */
        if (n>1){
          i=0;
          while (i<n-1){
            if (nodes[i]>nodes[i+1]){
              float tmp=nodes[i];
              nodes[i]=nodes[i+1];
              nodes[i+1]=tmp;
              if (i>0){
                i--;
              }
            }
            else{
              i++;
            }
          }
          
          /* process alpha values */
          for (i=0;i<n;i+=2){
            if (nodes[i]>=dwidth){
              break;
            }
            if (nodes[i+1]>0){
              if (nodes[i]<0){
                nodes[i]=0;
              }
              if (nodes[i+1]>dwidth){
                nodes[i+1]=dwidth;
              }
            }
            else{
              continue;
            }
            if (nodes[i+1]-nodes[i]<1){
              continue;
            }
            
            if (aliasing==1){
              int linex=(int) floor(nodes[i]);
              int linew=((int) floor(nodes[i+1]))-linex;
              memset(line+linex,alpha,linew);
            }
            else{
              int px;
              
              /* left & right aliasing */
              int linex=floor(nodes[i]);
              int linerx=floor(nodes[i+1]);
              if (is_mask!=2){
                line[linex]=
                  MIN(255,line[linex]+(1.0-fmod(nodes[i],1))*alphaaa);
                line[linerx]=
                  MIN(255,line[linerx]+fmod(nodes[i+1],1)*alphaaa);
              }
              else{
                line[linex]=
                  MAX(0,((int) line[linex])-(1.0-fmod(nodes[i],1))*alphaaa);
                line[linerx]=
                  MAX(0,((int) line[linerx])-fmod(nodes[i+1],1)*alphaaa);
              }
              
              linex++;
              int linew=linerx-linex;
              if (linew<1){
                continue;
              }
              bytep cline=line+linex;
              int left=linew;
#ifdef __ARM_NEON__
              left=linew%8;
              if (linew>=8){
                uint8x8_t ro = vmov_n_u8(alphaaa);
                if (is_mask!=2){
                  uint16x8_t v255 = vdupq_n_u16(alpha);
                  for (px=0;px<linew-left;px+=8) {
                    uint8x8_t op = vld1_u8(cline+px);
                    vst1_u8(cline+px, 
                      vmovn_u16(vminq_u16(vaddl_u8(op, ro),v255)));
                  }
                }
                else{
                  uint8x8_t v0 = vmov_n_u8(0);
                  for (px=0;px<linew-left;px+=8) {
                    uint8x8_t op = vld1_u8(cline+px);
                    vst1_u8(cline+px, vmax_u8(vsub_u8(op,ro),v0));
                  }
                }
              }
#endif
              if (is_mask!=2){
                for (px=linew-left;px<linew;px++){
                  cline[px]=MIN(alpha,cline[px]+alphaaa);
                }
              }
              else{
                for (px=linew-left;px<linew;px++){
                  cline[px]=MAX(0,((int) cline[px])-alphaaa);
                }
              }
            }
          }
        }
      }
      free(nodes);
      if (!is_mask){
        /* process */
        if (line!=NULL){
          wordp color_line = dest->data + py * dest->l + minx;
          libaroma_alpha_mono(dwidth,color_line,color_line,color,line);
          free(line);
        }
      }
    }
  }
  
  return 1;
} /* End of libaroma_path_draw */


#endif /* __libaroma_path_c__ */

