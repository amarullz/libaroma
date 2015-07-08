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
 * Filename    : libaroma_squirrel.h
 * Description : libaroma squirrel wrapper header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 09/07/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_libaroma_squirrel_h__
#define __libaroma_libaroma_squirrel_h__
#include <aroma.h>
#include <squirrel.h>
#include <sqstdblob.h>
#include <sqstdsystem.h>
#include <sqstdio.h>
#include <sqstdmath.h>	
#include <sqstdstring.h>
#include <sqstdaux.h>
#include <string.h>
#include <stdarg.h>

/* register libaroma squirrel wrapper */
void lasq_register(HSQUIRRELVM v);

#endif /* __libaroma_libaroma_squirrel_h__ */
