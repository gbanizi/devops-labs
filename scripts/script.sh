#!/bin/bash

echo "enter num"

read num

if [ $num -gt 5 ]
then
      echo "Number is greater than 5"
elif [ $num -eq 5 ]
then 
      echo "Number is equal to 5"
else
      echo "Number is less than  or equal to 5"
fi

