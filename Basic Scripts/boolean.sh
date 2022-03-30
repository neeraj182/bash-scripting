#!/bin/bash

echo "I'm I above 18 or not?"

echo "What's your age?"

read age

if [ "$age" -gt 18 ] ; then
    echo true
else 
    echo false
fi
