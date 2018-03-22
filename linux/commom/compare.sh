#!/bin/sh
echo $1
up="up"
down="down"
if [ $1 == $up ]
then
    echo "assssss"
elif [ $1 == $down ]
then
    echo down
else
    echo "not equal"
fi
