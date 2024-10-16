#!/bin/bash

<<comment
this is a sample one
comment

read -p "ente first question:" s1

read -p "enter reply:" s2

read -p "ok right.You are going to join devops batch.enter how many students:" s3

echo "$s1"

echo "$s2"

echo "total students: $s3"

if [[ $s2 == "yes" ]];

then
        echo "ok good "

elif [[ $s3 -ge 200 ]];

then
        echo "great"

else
        echo "Try to learn."
fi
