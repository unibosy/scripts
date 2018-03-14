#!/usr/bin/env bash

for i in $(find $1 -name "*.yuv")
do
rm $i
echo "rm $i successfully!"
done
for i in $(find $1 -name "*.pcm")
do
rm $i
echo "rm $i successfully!"
done

