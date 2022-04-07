#!/bin/bash 

echo "Running package update"
sudo pacman -Syu 2> error.txt
echo $?

echo "Listing all orphan packages"
sudo pacman -Qdt 2> error.txt

echo "Removing orphan packages"
sudo pacman -Rs $(pacman -Qdtq) 
echo $?

echo "Removing old packages cache files, except for the latest three package versions  "
sudo paccache -rvk3 
echo $?
