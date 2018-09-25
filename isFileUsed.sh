#!/usr/bin/env bash

FILE=$1
SCOPE='./'

while getopts d:s:f: option
    do
        case "${option}"
            in
            d) DIR=${OPTARG};;
            s) SCOPE=${OPTARG};;
            f) FILE=${OPTARG};;
        esac
    done

if [ $DIR ];
    then
        if [ -d $DIR ];
            then
                for f in $DIR*
                    do
                        grep -nR --color=auto $f $SCOPE
                    done
            else
                echo $DIR is not a directory
        fi
elif [ -f $FILE ];
    then
        grep -nR --color=auto $FILE $SCOPE
    else
        echo $FILE is not a file
fi
