#!/bin/bash

#!/bin/bash

arr=( t1 t2 t3 t4 t5 t6 t7)

echo ${arr[0]}
echo ${arr:0}

echo ${arr[@]}
echo ${arr[@]:0}

echo ${arr[@]:1}

echo ${arr[@]:2:4}

echo "length of arr: ${#arr[*]} or ${#arr[@]}"
