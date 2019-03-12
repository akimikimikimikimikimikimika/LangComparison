#! /usr/local/bin/bash

test1=1
test2=0

echo
echo これから条件分岐を試します
echo

if [ $test1 -eq 1 ]; then
	echo "どうやらtest1は真のようです"
fi

if [ ! $test1 -eq 1 ]; then
	echo "どうやらtest1は偽のようです"
elif [ $test2 -eq 1 ]; then
	echo "どうやらtest2は真のようです"
elif [ $test2 -eq 0 -a $test1 -eq 1 ]; then
	echo "真偽が混在しているようです"
else
	echo "どれでもないようです"
fi

val=1
case $val in
	0|1) echo $val"は特別な値である";;
	2|4|6) echo $val"は素数ではない";;
	3|5|7) echo $val"は素数である";;
	*) echo $val"なぞ私には興味がない";;
esac

echo
echo