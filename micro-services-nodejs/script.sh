#!/bin/bash

echo Executing $0...

MS_NAME=microserv-ns
MS_HOME=/$MS_NAME

function start
{
  if [ ! -d $MS_HOME ]; then
    echo "$MS_HOME directory doesn't exit"
    exit
  fi

  cd /$MS_NAME
  npm start
}

start
