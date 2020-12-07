#~!/bin/sh
# add stuff to i3 lulu

i3status | while :
do 
#	sensors | grep -F "sensor" | cut -c 16-18 | bc -l || exit 1
	read line
        echo "mystuff | $line" || exit 1
done
