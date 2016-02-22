#!/bin/bash

source ../tools/common.sh

docker run --rm -i -t -p 180:80 `getprojectname`
