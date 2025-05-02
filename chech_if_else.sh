#!/bin/bash

<<disc
This is the if else statement
disc

read -p "Jehta ka pita kon hai: " papa
read -p "jehta ka pyra apne pita ji ke liye %" pyaar

if [[ $papa == "champak" ]];
then	
	echo "yeh hai jehta ka pita shree"
elif [[ $pyaar -ge 90 ]];

then
	echo "Iske pita ji hi hai"

else	
	echo "Step Father"

fi
