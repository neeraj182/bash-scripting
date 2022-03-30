#!/bin/bash

echo "Type in the first number: "
read num1
 if [[ $num1 ]] && [ $num1 -eq $num1 2>/dev/null ] # checks if the number is int or not.
  then
     echo "$num1 is an integer"
  else
     echo "$num1 is not an integer or not defined"
  fi

# ‘0’ for standard input
# ‘1’ for standard output
# ‘2’ for standard error

# /dev/null is unique since it is used to suppress any data written to it.
# In simple words, it acts as a black hole for 
#any data that is written to it in Linux operating systems.

#  2>/dev/null - It sends the error stream to /dev/null,
# which discards it. In other words,
# this command is used to discard and suppress error outputs. 


echo "Type in the second number: "
read num2
 if [[ $num2 ]] && [ $num2 -eq $num2 2>/dev/null ] # checks if the number is int or not.
  then
     echo "$num2 is an integer"
  else
     echo "$num2 is not an integer or not defined"
  fi

echo "Which arithemetic operation would you like to perform? (+, -, *, /)" 
echo "Type a for additon, s for subtraction, m for multiplication, d for division: "
read operation

if [ "$operation" == a ] ; then
    var=$(($num1+$num2))
    echo $var
elif [ "$operation" == s ] ; then
    var=$(($num1-$num2))
    echo $var
elif [ "$operation" == m ] ; then
    var=$(($num1*$num2))
    echo $var
elif [ "$operation" == d ] ; then
    var=$(($num1/$num2))
    echo $var
else
    echo "Please select the proper operation"
fi
