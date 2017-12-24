#!/bin/bash

while getopts “:h:t:r:p:v” OPTION;do
  echo $OPTION
  case $OPTION in
    h)
      echo "hhhhhh"
      ;;
    t)
      echo "tttttt"
      ;;
    ?)
      echo "???"
      ;;
  esac
done
