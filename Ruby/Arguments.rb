#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

# 引数は0番目から

print "\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n\r\n";
n=1;
ARGV.each do |s|
	print " #{n}: #{s}\r\n";
	n=n+1;
end

print "\r\n\r\n";