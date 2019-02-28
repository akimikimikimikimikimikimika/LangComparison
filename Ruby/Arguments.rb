#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

print "\nこのファイルを実行するにあたっての引数は以下の通りです:\n\n";
n=1;
ARGV.each do |s|
	print " #{n}: #{s}\n";
	n=n+1;
end
print "\n";