#!/bin/bash

N=5
for i in 1 2 3
do
    echo " - $i "
done

for v in $(seq 1 2 10)
do
    echo " - $v"
done

function join_by { local IFS="$1"; shift; echo "$*"; }

echo "---- start-end -----"
start=(0 0 1)
end=(0 0 5)

for p in $(seq ${start[2]} 1 ${end[2]})
do
    newver="${start[0]}.${start[1]}.$p"
    echo $newver
done

echo "---- start-end with multiple versions variants -----"
start=(1 1 1)
end=(8 4 5)

for major in $(seq ${start[0]} 1 ${end[0]})
do
    for minor in $(seq ${start[1]} 1 ${end[1]})
    do
        for fix in $(seq ${start[2]} 1 ${end[2]})
        do
            newver="$major.$minor.$fix"
            echo $newver
        done
    done
done



