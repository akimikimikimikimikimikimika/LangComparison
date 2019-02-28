#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

print "\nこのファイルを実行するにあたっての引数は以下の通りです:\n\n";
$n=1;
foreach $s (@ARGV) {
	print " $n: $s\n";
	$n++;
}
print "\n";