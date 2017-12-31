#!/bin/sh
set -ev

mkdir cmake-build
cd cmake-build

cmake .. -DBUILD_TUTORIALS=OFF
make -j3 precross

set +e
make cross$1

RET=$?
if [ $RET -ne 0 ]; then
  cat test/log/unexpected_failures.log
fi

exit $RET
