#! /usr/bin/env php
<?php

require_once("Utility.php");

function Condition() {
	global $i;

	$test1 = 1;
	$test2 = 0;

	pnl(1);

	println("これから条件分岐を試します",2);

	if (test1) {
		println("どうやらtest1は真のようです");
	}

	if (!test1) {
		println("どうやらtest1は偽のようです");
	}
	elseif (test2) {
		println("どうやらtest2は真のようです");
	}
	elseif (!test2 && test1) {
		println("真偽が混在しているようです");
	}
	else {
		println("どれでもないようです");
	}

	$val = 8;
	switch ($val) {
		case 0:
		case 1:
			println("${val}は特別な値である");break;
		case 8:
		case 9:
		case 10:
			println("これに隣接する数にも言えたりするが,");
			# breakを省くと,case 8,9,10を実行すれば,直下のcase 4,6も実行する
		case 4:
		case 6:
			println("${val}は素数ではない");break;
		case 2:
		case 3:
		case 5:
		case 7:
			println("${val}は素数である");break;
		default:
			println("${val}なぞ私には興味がない");break;
	}

	pnl(2);

}

if (running_directly(__FILE__)) Condition();

?>