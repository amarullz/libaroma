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
 * Filename    : listitem_caption.h
 * Description : item caption header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 25/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_listitem_caption_h__
#define __libaroma_listitem_caption_h__

/*
 * Function    : libaroma_listitem_iscaption
 * Return Value: byte
 * Descriptions: is list item caption
 */
byte libaroma_listitem_iscaption(LIBAROMA_CTL_LIST_ITEMP item);

/*
 * Function    : libaroma_listitem_caption_color
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: create check item custom text color
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_listitem_caption_color(
    LIBAROMA_CONTROLP ctl,
    int id,
    const char * text,
    word textcolor,
    int at_index);
    
/*
 * Function    : libaroma_listitem_caption
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: create menu item
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_listitem_caption(
    LIBAROMA_CONTROLP ctl,
    int id,
    const char * text,
    int at_index);

#endif /* __libaroma_listitem_caption_h__ */
