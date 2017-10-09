/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "php.h"
#include "zend_interfaces.h"
#include "zend_exceptions.h"
#include "php_thrift_protocol.h"

#if PHP_VERSION_ID >= 70000

static zend_function_entry thrift_protocol_functions[] = {
  PHP_FE(thrift_protocol_write_binary, nullptr)
  PHP_FE(thrift_protocol_read_binary, nullptr)
  PHP_FE(thrift_protocol_read_binary_after_message_begin, nullptr)
  PHP_FE(thrift_protocol_write_compact, nullptr)
  PHP_FE(thrift_protocol_read_compact, nullptr)
  PHP_FE(thrift_protocol_read_compact_after_message_begin, nullptr)
  {nullptr, nullptr, nullptr}
};

zend_module_entry thrift_protocol_module_entry = {
  STANDARD_MODULE_HEADER,
  "thrift_protocol",
  thrift_protocol_functions,
  nullptr,
  nullptr,
  nullptr,
  nullptr,
  nullptr,
  "1.0",
  STANDARD_MODULE_PROPERTIES
};

#ifdef COMPILE_DL_THRIFT_PROTOCOL
ZEND_GET_MODULE(thrift_protocol)
#endif

#endif /* PHP_VERSION_ID >= 70000 */
