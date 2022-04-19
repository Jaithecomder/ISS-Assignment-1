#!/bin/bash/
echo > speech.txt
rm speech.txt

while IFS= read -r line;
do
    if [ ! -z "$line" ];
    then
        q=${line%~*}
        a=${line#*~}
        echo "$a once said, \"$q\"" >> speech.txt
    else
        echo >> speech.txt
    fi
done < $1