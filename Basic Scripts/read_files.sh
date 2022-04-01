#!/bin/bash


echo "Which file to read?"
read file

if  [ -f "$file" ] ; then
  while read line; do
  echo $line
  done < "$file"
else
    echo "FILE DOES NOT EXIST"
fi 
