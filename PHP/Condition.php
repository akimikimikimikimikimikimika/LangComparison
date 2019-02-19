#! /usr/bin/php

<?php

$test1 = 1;
$test2 = 0;

print "\nこれから条件分岐を試します\n\n";

if (test1) {
    print "どうやらtest1は真のようです\n";
}

if (!test1) {
    print "どうやらtest1は偽のようです\n";
}
elseif (test2) {
    print "どうやらtest2は真のようです\n";
}
elseif (!test2 && test1) {
    print "真偽が混在しているようです\n";
}
else {
    print "どれでもないようです\n";
}

$val = 1;
switch ($val) {
    case 0:
    case 1:
        print $val."は特別な値である\n";break;
    case 2:
    case 4:
        print $val."は素数ではない\n";break;
    case 3:
    case 5:
        print $val."は素数である\n";break;
}

?>
