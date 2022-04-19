#!/bin/bash/
file_size=`du -b "$1" | cut -f1`
echo "File Size : $file_size"

echo -n "Line Count : "
wc -l <"$1"

echo -n "Word Count : "
wc -w <"$1"

awk '$0="Line No: "NR" - Count of Words: "NF""' $1

ws=$(tr ' ' '\n' < $1 | sort -u)

while read -r w;
do
    if [[ -n "${w// /}" ]]
    then
        if echo $w | grep -i -q "^[a-z]*$";
        then
            c=$(cat $1 | grep -o $w | wc -w)
            if (( $c > 1 ));
            then
                echo "Word: $w - Count of repetition: $c"
            fi
        fi
    fi
done <<< $ws
