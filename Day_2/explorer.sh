#!/bin/bash

<<comment
 task1 : File and directory exploration
 task2 : character counting
comment

#task1 :File and directory exploration

echo "Welcome to the Interactive File and Directory Explorer!"

while true; do

        #list all files and directories in the current path
        ls -lh | awk '{print "- "$9" ("$5")"}'


#asking the user to exit from explorer

read -p "press C to continue exploring or E to exit:" choice
echo "$choice"

if [[ $choice == E || $choice == e ]];
then
        echo "Exiting the Interactive Explorer. Goodbye!"
        break
fi

#task2 : character counting

while true; do

        read -p "enter a line of text:" user_input
        echo "$user_input"

#exit if user pressess enter without typing any text

if [[ -z $user_input ]];
then
  echo "exiting the character count check"
  break
fi

#count and display the number of characters in the input
char_count=${#user_input}
echo "character count: $char_count"
done
done
