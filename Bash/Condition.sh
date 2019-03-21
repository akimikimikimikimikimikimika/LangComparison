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

val=8
case $val in
	0|1)
		echo $val"は特別な値である"
		;;
	8|9|10)
		echo -n "これに隣接する数にも言えたりするが,"
		;&
	2|4|6)
		echo $val"は素数ではない"
		;;&
	8|9|10)
		echo "しつこいようだが,隣接する数も素数でなかったりする"
		;;
		# ;; の代わりに ;& を用いることにより, 8|9|10) を実行すれば,直下の 2|4|6) も実行する
		# ;; の代わりに ;;& を用いることにより, 2|4|6) の実行後も,それ以降の条件を吟味する
		# これらは, Bash 5.0 の新機能
		# よって,古いバージョンのBashではこのコードは実行できない
	3|5|7)
		echo $val"は素数である"
		;;
	*)
		echo $val"なぞ私には興味がない"
		;;
esac

printf "\r\n\r\n"