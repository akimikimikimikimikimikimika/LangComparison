#! /usr/bin/perl

$test1 = 1;
$test2 = 0;

print "\r\nこれから条件分岐を試します\r\n\r\n";

if ($test1) {
	print "どうやらtest1は真のようです\r\n";
}

if (not $test1) {
	print "どうやらtest1は偽のようです\r\n";
}
elsif ($test2) {
	print "どうやらtest2は真のようです\r\n";
}
elsif (not $test2 and $test1) {
	print "真偽が混在しているようです\r\n";
}
else {
	print "どれでもないようです\r\n";
}

unless ($test2) {
	print "どうやらtest2は偽のようです\r\n";
}
else {
	print "どうやらtest2は真のようです\r\n";
}

print "test1が真だからこんなことをしているんです\r\n" if $test1;
print "test2が偽でなければこんなことしないのに\r\n" unless $test2;

print "\r\n\r\n";