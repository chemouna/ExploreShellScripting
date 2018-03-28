
#!/bin/bash

while getopts "a:b:" opt ; do
    case $opt in
        a) a="$OPTARG"
           ;;
        b) b="$OPTARG"
           ;;
        \?) echo "Invalid option -$OPTARG" >&2
            ;;
    esac
done

echo "a: $a"
echo "b: $b"

shift "$((OPTIND-1))"

echo " the rest are: "
echo $@
