#!/bin/bash


# simple contional statement
echo "What is your name?"

read name

if [ "$name" == neji ] ; then
  echo Hello $name
elif [ "$name" == jin ] ; then
    echo yup $name
else
    echo "I don't know you"
fi

