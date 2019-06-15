#! /usr/bin/env perl

# 引数は0番目から

print "\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n\r\n";
$n=1;
foreach $s (@ARGV) {
	print " $n: $s\r\n";
	$n++;
}

print "\r\n\r\n";