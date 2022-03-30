#!/bin/bash

echo "WHICH OS DO U USE?"

read OSNAME

# using case statement 
case "$OSNAME" in
  "linux" | "Linux" ) echo "Great, you use Linux" ;
                      echo "Which distribution?" ;;                     

  "windows" | "Windows" ) echo "Windows, ok good" ;;

  "macos0" | "MacOs" | "macOs" ) echo "ohh great, u use MacOs" ;;
esac

read distro 

echo "ok great, you are using $distro"
