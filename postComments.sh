#!/bin/bash/env sh

source ./help.sh

if [ -z $1 ]; then
    CommentHelp
fi

while getopts ":h" option; do
   case $option in
      h) # display Help
         CommentHelp
         exit;;
   esac
done

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

    source ./refresh_site.sh
    refreshSite
	fi
else
	echo "website folder does not exist"
	echo "please run genereSite.sh first"
fi



