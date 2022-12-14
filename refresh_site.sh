#!/bin/bash/env sh

#will add comments to index.html
#called automatically from postComments.sh

function refreshSite() {
    website_dir=`cat config.txt`

    input=$website_dir"/comments.txt"
    current_line=1
    while read -r line
    do
    	x=$line
    	if [ $(($current_line%2)) -eq 0 ] #lignes paires=commentaire
    	then
    		echo "<p>"$line"</p>">>$website_dir/index.html
    	else
    		echo "<h3>"$line" a ecrit:</h3>">>$website_dir/index.html
    	fi
    	current_line=$((current_line+1))
    done < "$input"
}
