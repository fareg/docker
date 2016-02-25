#

dreload()
{
  source ../tools/common.sh
}

dpsa()
{
  docker ps -a
}

getprojectname()
{
  _DIR=`pwd`
  _DIR=`basename $_DIR`
  echo fcolas/$_DIR
}

dbuild()
{
  PROJECT_NAME=`getprojectname`
  if [ ! -f Dockerfile ]; then echo No 'Dockerfile' in this directory; return; fi
  docker build -t ${PROJECT_NAME} .
}

drun()
{
  PROJECT_NAME=`getprojectname`
  if [ ! -f Dockerfile ]; then echo No 'Dockerfile' in this directory; return; fi
  docker run --rm -i -t ${PROJECT_NAME}  $*
}

drunbash()
{
  drun bash
}
