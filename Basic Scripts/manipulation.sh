#!/bin/bash

echo "GIve me two strings"
echo ""
read str1 str2

if [ "$str1" = "$str2" ] ; then
    echo "The first string: $str1, is the same as the second one: $str2"
else
    echo "The first string: $str1, is not the same as the second one: $str2"
fi

NAME=Neji.Lee
# To extract the first n characters of a string we can specify: ${string:0:n}.
first=${NAME:0:4} 
echo first name = $first

# To extract all characters in a string after a dot (.), use the following expression: ${string#*.}.
last=${NAME#* }
echo last name = $last
