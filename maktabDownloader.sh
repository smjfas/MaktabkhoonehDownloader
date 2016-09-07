#!/bin/bash 
pageBaseURL="${1/course/video}"
dash="-"
file="data.txt"

#remove old files
if [ -f "$file" ]; then 
	rm "$file"
fi

#download just one file
if [ ! -z "$4" ] && [ -z "$5" ]; then 
	pageAddress=$pageBaseURL$dash$4
	if [ "$2" == "hq" ]; then
		result=$(mech-dump --links $pageAddress | grep "videos/hq")
	else 
		result=$(mech-dump --links $pageAddress | grep "videos" | grep -v "hq")
	fi
	echo "hi"
		wget --progress=bar -P $3 $result

#download some files
elif [ ! -z "$4" ] && [ ! -z "$5" ]; then
	pageBaseURL=$pageBaseURL$dash
	for ((index=$4;index<=$5;index++)) do
		pageAddress=$pageBaseURL$index
		if [ "$2" == "hq" ]; then 
			result=$(mech-dump --links $pageAddress | grep "videos" | grep "hq")
		else 
			result=$(mech-dump --links $pageAddress | grep "videos" | grep -v "hq")
		fi
		echo "$result" >> $file
	done	
	wget --progress=bar -i $file -P $3
fi

