#! /usr/bin/env php
<?php

$test1 = 1;
$test2 = 0;

print "\r\nこれから条件分岐を試します\r\n\r\n";

if (test1) {
	print "どうやらtest1は真のようです\r\n";
}

if (!test1) {
	print "どうやらtest1は偽のようです\r\n";
}
elseif (test2) {
	print "どうやらtest2は真のようです\r\n";
}
elseif (!test2 && test1) {
	print "真偽が混在しているようです\r\n";
}
else {
	print "どれでもないようです\r\n";
}

$val = 8;
switch ($val) {
	case 0:
	case 1:
		print "${val}は特別な値である\r\n";break;
	case 8:
	case 9:
	case 10:
		print "これに隣接する数にも言えたりするが,\r\n";
		# breakを省くと,case 8,9,10を実行すれば,直下のcase 4,6も実行する
	case 4:
	case 6:
		print "${val}は素数ではない\r\n";break;
	case 2:
	case 3:
	case 5:
	case 7:
		print "${val}は素数である\r\n";break;
	default:
		print "${val}なぞ私には興味がない\r\n";break;
}

print "\r\n\r\n";

?>