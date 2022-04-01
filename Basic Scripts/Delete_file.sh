#!/bin/bash

echo "Which file do you wanna delete?"
read file

if [ -f $file ] ; then
  echo "Are you sure, you want to delete this file? [Y/n]"
  read answer
  if [ "${answer^^}" == Y ] ; then # Uppercase = ${answer^^}
    rm $file
    echo " File $file deleted successfully."
  elif [ "${answer,,}" == n ] ; then # Lowercase = ${answer,,}
    echo " File $file wasn't deleted successfully."
  fi
else
  echo "FILE DOES NOT EXIST"
fi
