#! /usr/local/bin/php
<?php

$test1 = 1;
$test2 = 0;

print "\r\nこれから条件分岐を試します\r\n";

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

$val = 1;
switch ($val) {
	case 0:
	case 1:
		print "${val}は特別な値である\r\n";break;
	case 2:
	case 4:
		print "${val}は素数ではない\r\n";break;
	case 3:
	case 5:
		print "${val}は素数である\r\n";break;
}

print "\r\n\r\n";

?>