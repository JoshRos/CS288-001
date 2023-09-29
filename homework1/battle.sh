#1/bin/bash

#include <math.h>

degree=$1
distance=$2

echo "Desert Tank Battle"

for i in {1..5}
do
    echo -n "Direction (-90 to 90)? "
    read degreeGuess
    echo -n "Elevation (0 to 90)? "
    read elevGuess
    rad=`echo "scale=8; 3.14159265 / 180 * $elevGuess" | bc`
    input=`echo "scale=8; 2.0*$rad" | bc`
    distAttempt=`echo "s($input)" | bc -l`

    lowerBound=`awk "BEGIN {print $distance-0.05; exit}"`
    upperBound=`awk "BEGIN {print $distance+0.05; exit}"`

    if [ $degreeGuess -le $(($degree + 1)) ] && [ $degreeGuess -ge $(($degree - 1)) ]  && [ "`echo "$distAttempt<=$upperBound" | bc`" -eq 1 ] && [ "`echo "$distAttempt>=$lowerBound" | bc`" -eq 1 ]; then
        echo "Kaboom! You have done it."
        exit 1
    elif [ $degreeGuess -le $(($degree + 1)) ] && [ $degreeGuess -ge $(($degree - 1)) ]; then     
        if [ "$i" -eq 5 ]; then
            echo "Disaster, you failed! Retreat in disgrace."
            exit 1
        fi
        if [ "`echo "$distAttempt>$upperBound" | bc`" -eq 1 ]; then
            echo "Missile landed and too far."
        else
            echo "Missile landed and not far enough."
        fi
    elif [ "`echo "$distAttempt<=$upperBound" | bc`" -eq 1 ] && [ "`echo "$distAttempt>=$lowerBound" | bc`" -eq 1 ]; then
        if [ "$i" -eq 5 ]; then
            echo "Disaster, you failed! Retreat in disgrace."
            exit 1
        fi
        if [$degreeGuess -gt $(($degree + 1)) ]; then
            echo "Missile landed to the right."
        else   
            echo "Missile landed to the left"
        fi
    else
        if [ "$i" -eq 5 ]; then
            echo "Disaster, you failed! Retreat in disgrace."
            exit 1
        fi
        if [ $degreeGuess -gt $(($degree + 1)) ] && [ "`echo "$distAttempt>$upperBound" | bc`" -eq 1 ]; then
            echo "Missile landed to the right and too far."
        elif [ $degreeGuess -lt $(($degree - 1)) ] && [ "`echo "$distAttempt>$upperBound" | bc`" -eq 1 ]; then
            echo "Missile landed to the left and too far."
        elif [ $degreeGuess -gt $(($degree + 1)) ] && [ "`echo "$distAttempt<$lowerBound" | bc`" -eq 1 ]; then
            echo "Missile landed to the right and not far enough."
        elif [ $degreeGuess -lt $(($degree - 1)) ] && [ "`echo "$distAttempt<$lowerBound" | bc`" -eq 1 ]; then
            echo "Missile landed to the left and not far enough."
        fi
    fi

done