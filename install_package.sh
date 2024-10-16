#!/bin/bash

<<note

this script will install any package passed as argument

note

echo "******************INSTALLING $1******************"

sud apt-get update
sudo apt-get install $1 -y

sudo systemctl start $1
sudo systemctl enable $1

echo "******************INSTALLED $1*******************"

