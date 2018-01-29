#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements. See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership. The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License. You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied. See the License for the
# specific language governing permissions and limitations
# under the License.
#


if WITH_TESTS
SUBDIRS = test
endif

if WITH_PHP_EXTENSION
%.so:
	cd ext/ && $(MAKE)

phpconfdir=$(PHP_CONFIG_PREFIX)
phpconf_DATA=thrift_protocol.ini

phpmoduledir = `php-config --extension-dir`
phpmodule_SCRIPTS = ext/modules/thrift_protocol.so

distclean-local:
	cd $(phpmodule_SCRIPTS) && $(PHPIZE) --clean

endif

phpdir = $(PHP_PREFIX)/
php_DATA = \
  src/TMultiplexedProcessor.php

phpbasedir = $(phpdir)/Base
phpbase_DATA = \
  src/Base/TBase.php

phpclassloaderdir = $(phpdir)/ClassLoader
phpclassloader_DATA = \
  src/ClassLoader/ThriftClassLoader.php

phpexceptiondir = $(phpdir)/Exception
phpexception_DATA = \
  src/Exception/TApplicationException.php \
  src/Exception/TException.php \
  src/Exception/TProtocolException.php \
  src/Exception/TTransportException.php

phpfactorydir = $(phpdir)/Factory
phpfactory_DATA = \
  src/Factory/TBinaryProtocolFactory.php \
  src/Factory/TCompactProtocolFactory.php \
  src/Factory/TJSONProtocolFactory.php \
  src/Factory/TProtocolFactory.php \
  src/Factory/TStringFuncFactory.php \
  src/Factory/TTransportFactory.php

phpprotocoldir = $(phpdir)/Protocol
phpprotocol_DATA = \
  src/Protocol/TBinaryProtocolAccelerated.php \
  src/Protocol/TBinaryProtocol.php \
  src/Protocol/TCompactProtocol.php \
  src/Protocol/TJSONProtocol.php \
  src/Protocol/TMultiplexedProtocol.php \
  src/Protocol/TProtocol.php \
  src/Protocol/TProtocolDecorator.php \
  src/Protocol/TSimpleJSONProtocol.php

phpprotocoljsondir = $(phpprotocoldir)/JSON
phpprotocoljson_DATA = \
  src/Protocol/JSON/BaseContext.php \
  src/Protocol/JSON/ListContext.php \
  src/Protocol/JSON/LookaheadReader.php \
  src/Protocol/JSON/PairContext.php

phpprotocolsimplejsondir = $(phpprotocoldir)/SimpleJSON
phpprotocolsimplejson_DATA = \
  src/Protocol/SimpleJSON/CollectionMapKeyException.php \
  src/Protocol/SimpleJSON/Context.php \
  src/Protocol/SimpleJSON/ListContext.php \
  src/Protocol/SimpleJSON/MapContext.php \
  src/Protocol/SimpleJSON/StructContext.php

phpserializerdir = $(phpdir)/Serializer
phpserializer_DATA = \
  src/Serializer/TBinarySerializer.php

phpserverdir = $(phpdir)/Server
phpserver_DATA = \
  src/Server/TServerSocket.php \
  src/Server/TForkingServer.php \
  src/Server/TServer.php \
  src/Server/TServerTransport.php \
  src/Server/TSimpleServer.php

phpstringfuncdir = $(phpdir)/StringFunc
phpstringfunc_DATA = \
  src/StringFunc/Mbstring.php \
  src/StringFunc/Core.php \
  src/StringFunc/TStringFunc.php

phptransportdir = $(phpdir)/Transport
phptransport_DATA = \
  src/Transport/TBufferedTransport.php \
  src/Transport/TCurlClient.php \
  src/Transport/TFramedTransport.php \
  src/Transport/THttpClient.php \
  src/Transport/TMemoryBuffer.php \
  src/Transport/TNullTransport.php \
  src/Transport/TPhpStream.php \
  src/Transport/TSocket.php \
  src/Transport/TSocketPool.php \
  src/Transport/TTransport.php

phptypedir = $(phpdir)/Type
phptype_DATA = \
  src/Type/TMessageType.php \
  src/Type/TType.php \
  src/Type/TConstant.php

EXTRA_DIST = \
  lib \
  src/autoload.php \
  ext/config.m4 \
  ext/config.w32 \
  ext/php_thrift_protocol.cpp \
  ext/php_thrift_protocol.h \
  ext/thrift_protocol.ini \
  ext/run-tests.php \
  src/Thrift.php \
  src/TStringUtils.php \
  coding_standards.md \
  README.apache.md \
  README.md

MAINTAINERCLEANFILES = \
  Makefile \
  Makefile.in

