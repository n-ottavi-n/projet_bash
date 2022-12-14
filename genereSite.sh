#!/bin/bash/env sh
source ./help.sh

if [ -z $1 ]; then
    Help
    exit 1
fi

while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
done

dir_target=$1
cp -R images $dir_target
dir_images=$dir_target"/images"

if [ -w "$dir_target" ]
then
	mkdir -p $dir_target
	touch config.txt
	echo "$(cd "$(dirname "$dir_target")"; pwd -P)"/$dir_target>config.txt #write absolute path
else
	echo "$dir_target does not have writing rights, build canceled"
        exit 1
fi
touch website/comments.txt

touch website/index.html
echo "<h1>Titre du site</h1>">$dir_target/index.html

for entry in "$dir_images"/*
do
	src="$(basename "$entry")"
	echo "<img src='../images/$src'>">>$dir_target/index.html
done
echo "<h1>Commentaires</h1>">>$dir_target/index.html

open "$dir_target/index.html"


