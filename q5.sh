#!/bin/bash/
echo "Enter string : "
read str
n=${#str}
for ((i = n-1; i>=0; i--))
    do
    out="$out${str:$i:1}"
    done
echo "The reversed string is : "
echo $out
alpha=abcdefghijklmnopqrstuvwxyza
calpha=ABCDEFGHIJKLMNOPQRSTUVWXYZA
echo "The string with subsequent letters (after reverse) is : "
echo $out | tr "${alpha:0:26}" "${alpha:1:26}" | tr "${calpha:0:26}" "${calpha:1:26}"
for ((i = (n/2)-1; i>=0; i--))
    do
    hout="$hout${str:$i:1}"
    done
hout="$hout${str:$n/2:$n/2}"
echo "The half reversed string is : "
echo $hout