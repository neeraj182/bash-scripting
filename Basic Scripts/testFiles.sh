#!/bin/bash

if [ -x ~/Documents/script/learn.sh ] ; then
  echo "learn.sh is executable"
else
  echo "learn.sh is not executable"
fi

#Condition	Meaning
#-e file	Checks if the file exists.
#-d file	Checks if the file is a directory.
#-f file	Checks if the file is a regular file (i.e. not a symbolic link, device node, directory, etc.)
#-s file	Checks if the file is of non-zero size.
#-g file	Checks if the file has sgid set.
#-u file	Checks if the file has suid set.
#-r file	Checks if the file is readable.
#-w file	Checks if the file is writable.
#-x file	Checks if the file is executable.
