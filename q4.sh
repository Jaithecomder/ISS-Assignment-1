#!/bin/bash/
IFS=',' read -r -a A <<< "$1"
echo "Original Array : "
echo ${A[*]}
for ((i = 0; i<${#A[@]}; i++))
do
    for((j = 0; j<${#A[@]}-i-1; j++))
    do
        if [ ${A[j]} -gt ${A[$((j+1))]} ]
        then
            temp=${A[j]}
            A[$j]=${A[$((j+1))]}  
            A[$((j+1))]=$temp
        fi
    done
done
echo "Sorted Array : "
echo ${A[*]}