


version="0.0.1"
IFS=. read -ra arr <<< $version;

echo "${arr[1]}"


