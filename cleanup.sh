#!/bin/sh

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

topsrcdir="`dirname $0`"
cd "$topsrcdir"

make -k clean >/dev/null 2>&1
make -k distclean >/dev/null 2>&1
find . -name Makefile.in -exec rm -f {} \;
rm -rf \
AUTHORS \
ChangeLog \
INSTALL \
Makefile \
Makefile.in \
Makefile.orig \
aclocal/libtool.m4 \
aclocal/ltoptions.m4 \
aclocal/ltsugar.m4 \
aclocal/ltversion.m4 \
aclocal/lt~obsolete.m4 \
aclocal.m4 \
autom4te.cache \
autoscan.log \
config.guess \
config.h \
config.hin \
config.hin~ \
config.log \
config.status \
config.status.lineno \
config.sub \
configure \
configure.lineno \
configure.scan \
depcomp \
.deps \
install-sh \
.libs \
libtool \
ltmain.sh \
missing \
ylwrap \
if/gen-* \
test/gen-* \
lib/php/ext/.deps \
lib/php/ext/Makefile \
lib/php/ext/Makefile.fragments \
lib/php/ext/Makefile.global \
lib/php/ext/Makefile.objects \
lib/php/ext/acinclude.m4 \
lib/php/ext/aclocal.m4 \
lib/php/ext/autom4te.cache \
lib/php/ext/build \
lib/php/ext/config.guess \
lib/php/ext/config.h \
lib/php/ext/config.h.in \
lib/php/ext/config.log \
lib/php/ext/config.nice \
lib/php/ext/config.status \
lib/php/ext/config.sub \
lib/php/ext/configure \
lib/php/ext/configure.in \
lib/php/ext/include \
lib/php/ext/install-sh \
lib/php/ext/libtool \
lib/php/ext/ltmain.sh \
lib/php/ext/missing \
lib/php/ext/mkinstalldirs \
lib/php/ext/modules \
lib/php/ext/run-tests.php
