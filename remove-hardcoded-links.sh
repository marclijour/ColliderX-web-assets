#!/bin/bash
#grep -r 'href="http[s]*://www\.collider-x\.org' www.collider-x.org/
./find-hardcoded-links.sh | cut -f1 -d: | sort -u > _tempfile
while read file; do
	echo Removing hardcoded links in $file
	sed -i 's|https://www.collider-x.org||g' $file
done < _tempfile
rm _tempfile


