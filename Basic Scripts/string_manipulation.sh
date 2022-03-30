#!/bin/bash

echo "Type in the first string: "
echo ""

read str1

echo "Type in the second string: "
echo ""

read str2

# using "\>" "==" "\<" to compare strings
# use ${#str1} to kow the length of the string

if [ ${#str1} == ${#str2} ] ; then
    echo "Both the strings are of same length"
elif [ ${#str1} \> ${#str2} ] ; then
    echo "String1: $str1, is greater than String2: $str2"
elif [ ${#str2} \> ${#str1} ] ; then
    echo "String2: $str2, is greater than String1: $str1"
fi 

# using -z to check if the string is empty
if [ -z $str1 ] ; then
    echo "String1 is of zero length"
else
    echo "length of string1: $str1 is" ${#str1}
fi

if [ -z $str2 ] ; then
    echo "String2 is of zero length"
else
    echo "length of string2: $str2 is" ${#str2}
fi
