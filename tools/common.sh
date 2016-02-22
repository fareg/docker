#

function dreload
{
  source ../tools/common.sh
}

function getprojectname
{
  _DIR=`pwd`
  _DIR=`basename $_DIR`
  echo fcolas/$_DIR
}

function dbuild
{
  PROJECT_NAME=`getprojectname`
  if [ ! -f Dockerfile ]; then echo No 'Dockerfile' in this directory; fi
  docker build -t ${PROJECT_NAME} .
}

function drun
{
  PROJECT_NAME=`getprojectname`
  if [ ! -f Dockerfile ]; then echo No 'Dockerfile' in this directory; fi
  docker run --rm -i -t ${PROJECT_NAME} 
}