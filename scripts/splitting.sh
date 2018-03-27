#!/bin/bash

#!/bin/bash

arr=($(seq 0 1 5))
echo "before";
for a in $arr; do
    echo "$a"
done
let arr[0]=arr[0]+1
echo "after";
for a in $arr; do
    echo "$a"
done


mystring="foo:bar baz rab"
for word in $mystring; do
    echo "Word: $word"
done

echo "Now using ':' as a split boundary: "

IFS=:
for word in $mystring; do
    echo "Word: $word"
done

echo "Now splitting a version: "

version="0.0.1"
IFS=.
for p in $version; do
    echo "part: $p"
done

echo "Increase fix part"
version="0.0.1"

# how can we put it in an array instead and increase it and then put it back together
echo "read version into an array"
IFS=. read -ra arr <<< "$version";

function join_by { local IFS="$1"; shift; echo "$*"; }

# need to dynamically determine which number to increase ?
# if arr[1] is 9 -> increase to 1.x
# tofix : not best way of doing it

newversion=""
if [ arr[2] != 9 ];
then let arr[2]=$((arr[2]+1));
else
    if [ arr[1] == 9 ];
       then let arr[0]=arr[0]+1; let arr[1]=0; let arr[2]=0;
       else let arr[1]=arr[1]+1; let arr[2]=0;
    fi
fi

newver=$(join_by . "${arr[@]}")

echo "New Version: ${newver}"
