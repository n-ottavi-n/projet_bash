#!/bin/bash

dir_target=$1
dir_images=$dir_target"/images"

cd $dir_target

rights=$(ls -ld .)

if [ -w "$dir_target" ]
then
	mkdir -p website
else
	echo "$dir_target does not have writing rights, build canceled"
        exit 1
fi

touch website/index.html
echo "<h1>Titre du site</h1>">website/index.html

for entry in "$dir_images"/*
do
	src="$(basename "$entry")"
	echo "<img src='../images/$src'>">>website/index.html
done

#echo "<img src='../images/img1.jpg'>">>website/index.html
#echo "<img src='../images/img2.jpg'>">>website/index.html
#echo "<img src='../images/img3.jpg'>">>website/index.html
#echo "<img src='../images/img4.jpg'>">>website/index.html
