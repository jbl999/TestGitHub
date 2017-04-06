#!/bin/bash
 MARKS=$1
 if [ ! $MARKS ] ; then
   echo "Please Enter the Marks"
   echo "usage: $0 <MARKS>"

   exit
 fi

# echo "Result is: FIRST CLASS"
# decision making
if [ $MARKS -gt 100 -o $MARKS -lt 1 ] ; then
echo "Sorry,Marks should be in  between 1 to 100"
exit
fi

#First Class

if [ $MARKS -ge 65 -a $MARKS -le 100 ] ; then
  echo "Result is: First Class"


#Second Class

elif [ $MARKS -ge 55 -a $MARKS -le 64 ]; then
  echo "Result is: Second Class"
  #Third Class

elif [ $MARKS -ge 45 -a $MARKS -le 54 ] ; then
  #statements
  echo "Result is: Third Class"

  else

  echo "FAIL"

fi
