#! /usr/bin/perl
# -*- coding: utf-8 -*-

$test1 = 1;
$test2 = 0;

print "\nこれから条件分岐を試します\n\n";

if ($test1) {
	print "どうやらtest1は真のようです\n";
}

if (not $test1) {
	print "どうやらtest1は偽のようです\n";
}
elsif ($test2) {
	print "どうやらtest2は真のようです\n";
}
elsif (not $test2 and $test1) {
	print "真偽が混在しているようです\n";
}
else {
	print "どれでもないようです\n";
}

unless ($test2) {
	print "どうやらtest2は偽のようです\n";
}
else {
	print "どうやらtest2は真のようです\n";
}

print "test1が真だからこんなことをしているんです\n" if $test1;
print "test2が偽でなければこんなことしないのに\n" unless $test2;