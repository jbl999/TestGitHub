#!/bin/bash

WHOAMI=/usr/bin/whoami

if [ $WHOAMI == Administrator ] ; then
	echo "yes,your are the Administrator"
else
	echo "your the `$WHOAMI` user"
fi

