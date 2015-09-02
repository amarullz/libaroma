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
 * Filename    : qnx_hiddi_driver.h
 * Description : qnx hiddi driver header
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 24/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_qnx_hiddi_driver_h__
#define __libaroma_qnx_hiddi_driver_h__
/* qnx hiddi */
#include <errno.h>
#include <sys/hiddi.h>
#include <sys/hidut.h>

/* Device Type */
#define QNX_HIDDI_MAX_DEV     0x0f
#define QNX_HIDDI_DEV_NONE    0x00
#define QNX_HIDDI_DEV_KBD     0x01
#define QNX_HIDDI_DEV_TOUCH   0x02
#define QNX_HIDDI_DEV_MOUSE   0x03

/* Egalax Calibration */
#define QNX_HIDDI_EGALAX_W 1970
#define QNX_HIDDI_EGALAX_H 2000
#define QNX_HIDDI_EGALAX_X 10
#define QNX_HIDDI_EGALAX_Y 70

/* struct */
typedef struct _hid_byte{
  uint8_t HIDB_Length;
  uint8_t HIDB_Type;
  uint8_t HIDB_Tag;
  uint8_t reserved[1];
} hid_byte_t;
typedef struct _hidd_global_item{
  uint16_t usage_page;
  uint16_t logical_min;
  uint16_t logical_max;
  uint16_t physical_min;
  uint16_t physical_max;
  uint16_t unit_expo;
  uint16_t unit;
  uint16_t report_size;
  uint16_t report_id;
  uint16_t report_count;
} hidd_global_item_t;
typedef struct _hidd_local_item{
  uint16_t type;
  uint8_t reserved[2];
  uint32_t value;
  struct _hidd_local_item *next_local;
  struct _hidd_local_item *alt_local;
} hidd_local_item_t;
typedef struct _hidd_local_table{
  hidd_local_item_t *usage_info;
  hidd_local_item_t *designator_info;
  hidd_local_item_t *string_info;
  uint8_t delimiter;
  uint8_t reserved[3];
} hidd_local_table_t;
typedef struct _hidd_field{
  struct hidd_report_instance *report;
  struct hidd_collection *collection;
  uint16_t report_offset;
  uint16_t flags;
  hidd_global_item_t gitem;
  hidd_local_table_t *ltable;
  struct _hidd_field *next_field;
  void *user;
} hidd_field_t;
typedef struct hidd_report_instance{
  uint8_t report_id;
  uint8_t reserved[1];
  uint16_t report_type;
  hidd_field_t *field;
  uint16_t num_field;
  uint16_t byte_len;
  uint16_t bit_len;
  uint8_t reserved2[2];
  struct hidd_collection *collection;
  struct hidd_report_instance *next_col_report;
  struct hidd_report_instance *next_report;
} hidd_report_instance_t;
typedef struct hidd_report{
  TAILQ_ENTRY(hidd_report) link;
  hidd_report_instance_t *rinst;
  hidd_device_instance_t *dev_inst;
  uint32_t flags;
  struct hidd_connection *connection;
  void *user;
} hidd_report_t;
typedef struct hidview_device{
  struct hidd_report_instance *instance;
  struct hidd_report *report;
} hidview_device_t;

/* functions */
byte qnx_hiddi_init();
byte qnx_hiddi_connect();
byte qnx_hiddi_disconnect();

#endif /* __libaroma_qnx_hiddi_driver_h__ */
