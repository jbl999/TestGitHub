#!/bin/bash

 MYUSER=$1
 MYPASS=$2

#to check variable value you enter or not u not entered username
if [ ! $MYUSER ] ; then
  echo "Please spicify your User name"
  echo "usage: $0 <username> <password>"
  exit
fi

#if u not entered password it will show this message
if [ ! $MYPASS ] ; then
  echo "Please specify your Password"
  echo "usage: $0 <username> <password>"
  exit
fi

#only user root only create the user to check that
WHOAMI=`/usr/bin/whoami`
if [ ! $WHOAMI == root ] ; then
  echo "you must be a root user"
  exit
fi

#to check the user you already exist or not
/usr/bin/id $MYUSER


#here $? is a special character which returns 0 when command is true
#otherwise returns some value greater than zero
if [ $? -eq 0 ] ; then
  echo "Hey.... your are already existing the User: $MYUSER"
  exit
fi

#adding the user to the bin(user folder)
/usr/bin/useradd $MYUSER
if [ $? -ne 0 ] ; then
  echo "we have a big problem to create the user $MYUSER"
  exit
fi

#move the password to bin (password folder)

echo "$MYPASS" | /usr/bin/passwd --stdin $MYUSER"
if [ $? -ne 0 ] ; then
  echo "problem setting the password for the user $MYUSER"
  exit
fi

echo "user $MYUSER added successfully!!!!!"
