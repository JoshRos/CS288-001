#!/bin/bash
inputWord=$1
lowVal=34
echo "supercalifragilisticexpialidocious">super.txt
for (( i=0; i<${#inputWord}; i++ )) 
do
    char="${inputWord:i:1}"
    reps=`egrep -o "$char" super.txt|wc -w|cut -c1`
    if (( reps < lowVal ))
    then
        lowVal="$reps"
    fi
done

echo "$lowVal"
