#!/bin/bash

source `dirname $0`/../tools/common.sh

PROJECT_NAME=`getprojectdir`

echo Project:$PROJECT_NAME

docker build -t ${PROJECT_NAME} .
