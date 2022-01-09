#!/bin/bash

read -p "What is your name? " name
echo "Hello $name, nice to meet you!"

if [ $name == "John" ]; then
    echo "John is a nice name"
elif [ $name == "Paul" ]; then
    echo "Paul is a nice name"
else
    echo "You have a nice name"
fi

platform=$(uname -m)
if [ $platform == "arm64" ];
then
    echo "You are running on a M1 chip"
else
    echo "You are running on Intel chip"
fi

NUM1=10
NUM2=20

echo "The sum of $NUM1 and $NUM2 is $(($NUM1 + $NUM2))"
if [ $NUM1 -gt $NUM2 ]; then # -gt is greater than
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi

if [ $NUM1 -ge $NUM2 ]; then # -ge is greater than or equal to
    echo "$NUM1 is greater than or equal to $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi

if [ $NUM1 -eq $NUM2 ]; then # -eq is equal to
    echo "$NUM1 is equal to $NUM2"
else
    echo "$NUM1 is not equal to $NUM2"
fi

if [ $NUM1 -ne $NUM2 ]; then # -ne is not equal to
    echo "$NUM1 is not equal to $NUM2"
else
    echo "$NUM1 is equal to $NUM2"
fi

if [ $NUM1 -le $NUM2 ]; then # -le is less than or equal to
    echo "$NUM1 is less than or equal to $NUM2"
else
    echo "$NUM1 is not less than $NUM2"
fi

if [ $NUM1 -lt $NUM2 ]; then # -lt is less than
    echo "$NUM1 is less than $NUM2"
else
    echo "$NUM1 is not less than $NUM2"
fi

file="test.txt"
if [ -f $file ]; then
    echo "$file is a file"
else
    echo "$file is not a file"
fi

read -p "Are you 21 or over, enter Y or N: " age
case $age in
    [Yy] | [yY][eE][sS])
        echo "You can have a beer";;
    [Nn] | [Nn][oO])
        echo "Sorry, no drinking";;
    *)
        echo "Please enter Y or N";;
esac

NAMES=("John" "Paul" "George" "Ringo")
for NAME in "${NAMES[@]}"
    do
        echo "Hello $NAME"
    done

function greet() {
    echo "Hello $1"
}

function node_is_installed {
  local return_=1
  type "node" >/dev/null 2>&1 || { local return_=0; }
  echo "$return_"
}


if [ $(node_is_installed) == 1 ]; then
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    echo "Installing h in $DIR"
    echo "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
    # node $DIR"/install_h.js"
    echo "You have a valid version of node.js on your system in order to install 'h'."
else
    echo "You need a valid version of node.js on your system in order to install 'h'."
    exit 1
fi