#!/bin/bash

IFS='. ' read -a array <<< "$1"
if [ "$2" == "fix" ];
   echo "its a fix"
   then let array[2]=array[2]+1;
else
    if [ "$2" == "minor" ];
    then let array[1]=array[1]+1; let array[2]="0";
    else let array[0]=array[0]+1; let array[1]="0"; let array[2]="0";
    fi
fi

echo $array[2]

# NEW_TAG=$(join . "${array[@]}")

# echo "New tag: "
# echo $NEW_TAG


