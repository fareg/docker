#!/bin/bash

source $(dirname $0)/../tools/common.sh

docker run --rm -i -t -v `pwd`/my_ms01:/my_ms01 `getprojectname` $*

