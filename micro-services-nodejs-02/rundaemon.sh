#!/bin/sh

source $(dirname $0)/../tools/common.sh

source $(dirname $0)/params

RUN_ARGS=-d
RUN_ARGS="$RUN_ARGS -v `pwd`/$MS_NAME_NS02:/microserv-ns"
RUN_ARGS="$RUN_ARGS -p $MS_LOCAL_PORT:$MS_CONT_PORT"

docker run -i -t $RUN_ARGS `getprojectname` $*
