#!/bin/bash

echo "Please Enter your marks"

read MARKS
if [ $MARKS -ge 65 ] ; then
	echo "First Class"
elif [ $MARKS -ge 55 ] ; then
	echo "Second Class"
elif [ $MARKS -ge 45 ] ; then
	echo "Third Class"
else
	echo "Work more than before"
fi
