#!/bin/bash

echo "Running package update"
sudo pacman -Syu

echo "Listing all orphan packages"
sudo pacman -Qdt

echo "Removing orphan packages"
sudo pacman -Rs $(pacman -Qdtq)

echo "Removing old packages cache files, except for the latest three package versions  "
sudo paccache -rvk3
