#!/bin/bash


read -p "Enter word for search:  " search_word

read -p "Enter path:  " file_path

#if [ ! -f $file_path ]; then
#	echo "Error file '$file_path' doesnt exist." >&2
#	exit 1
#fi


if grep -qi $search_word $file_path;
then
	echo "Word $search_word was found. Deleting $file_path..."
	rm -f "$file_path"
	echo "File was deleted"
else
	echo "Word '$search_word' wasnt found in the file. File saved"
fi
