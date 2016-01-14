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
 * Filename    : ctl_label.h
 * Description : label control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 28/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_ctl_label_h__
#define __libaroma_ctl_label_h__

int libaroma_ctl_label_height(
  const char * text, int w,
  byte fontid, byte size,
  dword flags, byte lineheight
);

LIBAROMA_CONTROLP libaroma_ctl_label_valign(
  LIBAROMA_WINDOWP win, word id, const char * text,
  int x, int y, int w, int h,
  word color, byte fontid, byte size, dword flags, byte lineheight,
  byte valign
);

#define libaroma_ctl_label_ex(win,i,t,x,y,w,h,c,fn,s,f,l) \
	libaroma_ctl_label_valign(win,i,t,x,y,w,h,c,fn,s,f,l,0)
	
#define libaroma_ctl_label(win,i,t,x,y,w,h,c,s,f,l) \
	libaroma_ctl_label_ex(win,i,t,x,y,w,h,c,0,s,f,l)

byte libaroma_ctl_label_set_flags(
	LIBAROMA_CONTROLP ctl,dword flags,byte update);

byte libaroma_ctl_label_set_size(
	LIBAROMA_CONTROLP ctl,byte size,byte update);

byte libaroma_ctl_label_set_fontid(
	LIBAROMA_CONTROLP ctl,byte fontid,byte update);
	
byte libaroma_ctl_label_set_color(
	LIBAROMA_CONTROLP ctl,word color,byte update);

byte libaroma_ctl_label_set_text(
	LIBAROMA_CONTROLP ctl,const char * text,byte update);

char * libaroma_ctl_label_get_text(LIBAROMA_CONTROLP ctl);

byte libaroma_ctl_label_set_lineheight(
	LIBAROMA_CONTROLP ctl,byte lineheight,byte update);

byte libaroma_ctl_label_set_valign(
	LIBAROMA_CONTROLP ctl,byte valign,byte update);

byte libaroma_ctl_label_set_bgcolor(
	LIBAROMA_CONTROLP ctl,word bgcolor, byte usebg,byte update);

byte libaroma_ctl_label_set_vpos(
	LIBAROMA_CONTROLP ctl,int vpos,byte update);

byte libaroma_ctl_label_hidden(
	LIBAROMA_CONTROLP ctl,byte hidden);
	
#endif /* __libaroma_ctl_label_h__ */
