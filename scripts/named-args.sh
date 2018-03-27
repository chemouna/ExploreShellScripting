
#!/bin/bash

while getopts ":a:b:" opt; do
    case $opt in
        a) a="$OPTARG"
           ;;
        b) b="$OPTARG"
           ;;
        \?) echo "Invalid option -$OPTARG" >&2
            ;;
    esac
done

echo "a : $a"
echo "b : $b"

## check if a and b are both provided
if [ -z $a ];
then
    echo "a is not set";
else
    echo "a is set to $a";
fi

if [ -z $b ];
then
    echo "b is not set";
else
    echo "b is set to $b";
fi

if !([ -z $a ] || [ -z $b ]);
then
    echo "both a and b are set"
else
    echo "one of them is not set "
fi

#printf "Argument a is %s\n" "$a"
#printf "Argument b is %s\n" "$b"




