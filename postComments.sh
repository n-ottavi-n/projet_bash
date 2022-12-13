#!/bin/bash/env sh

website_dir=`cat config.txt`
if [ -d "$website_dir" ]
then
	if [ $# -ne 2 ] || [ -z "$1" ] || [ -z "$1" ]
	then
		echo "please provide a nonempty username and comment of the form postComment.sh {username} {comment}"
	else
		pseudo=$1
		comment=$2
		echo $pseudo>>$website_dir/comments.txt
		echo $comment>>$website_dir/comments.txt
	fi
else
	echo "website folder does not exist"
	echo "please run genereSite.sh first"
fi

sh ./refresh_site.sh
