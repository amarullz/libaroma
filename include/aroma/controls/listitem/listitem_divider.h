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
 * Filename    : listitem_divider.h
 * Description : item divider
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 25/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_listitem_divider_h__
#define __libaroma_listitem_divider_h__

#define LIBAROMA_LISTITEM_DIVIDER_SUBSCREEN   0x0100

/*
 * Function    : libaroma_listitem_isdivider
 * Return Value: byte
 * Descriptions: is list item divider
 */
byte libaroma_listitem_isdivider(LIBAROMA_CTL_LIST_ITEMP item);

/*
 * Function    : libaroma_listitem_divider
 * Return Value: LIBAROMA_CTL_LIST_ITEMP
 * Descriptions: create divider item
 */
LIBAROMA_CTL_LIST_ITEMP libaroma_listitem_divider(
    LIBAROMA_CONTROLP ctl,
    int id,
    word flags,
    int at_index);



#endif /* __libaroma_listitem_divider_h__ */
