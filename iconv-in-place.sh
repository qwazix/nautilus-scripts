#!/bin/bash

while [ $# -gt 0 ]; do
	file=$1
	/usr/bin/iconv -f iso8859-7 -t utf-8 "$file" > "$file.utf8"
	touch -r "$file" "$file.utf8"
	mv "$file.utf8" "$file"
	shift
done
