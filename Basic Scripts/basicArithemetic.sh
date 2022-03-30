#!/bin/bash

# In modern shell scripts, the use of expr is better replaced with var=$((...)).
var=$((3+5))

echo "3+5=$var"

var=$((3*5))
echo "3*5=$var"
