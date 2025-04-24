#! /bin/bash

echo "Hello enter a number"
read num
if [ $num -gt 0 -a $num -lt 10 ]; then
	echo "$num is btn 10 and zero"
else
	echo "$num is Zero"
fi

