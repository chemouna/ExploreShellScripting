


function join_by { local IFS="$1"; shift; echo "$*"; }

version="0.0.1"
IFS=. read -ra arr <<< "$version"

let arr[2]=arr[2]+1

newver=$(join_by . "${arr[@]}") 

echo "${newver}"





