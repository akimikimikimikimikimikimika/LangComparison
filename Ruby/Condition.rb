#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

test1 = true;
test2 = false;

print "\nこれから条件分岐を試します\n\n";

if test1
	print "どうやらtest1は真のようです\n";
end

if not test1
	print "どうやらtest1は偽のようです\n";
elsif test2
	print "どうやらtest2は真のようです\n";
elsif not test2 and test1
	print "真偽が混在しているようです\n";
else
	print "どれでもないようです\n";
end

unless test2
	print "どうやらtest2は偽のようです\n";
else
	print "どうやらtest2は真のようです\n";
end

print "test1が真だからこんなことをしているんです\n" if test1;
print "test2が偽でなければこんなことしないのに\n" unless test2;

val = 1;
case val
	when 0,1 then
		print "#{val}は特別な値である\n";
	when 2,4,6 then
		print "#{val}は素数ではない\n";
	when 3,5,7 then
		print "#{val}は素数である\n";
	when 8..10 then
		print "#{val}は連続した素数である\n";
	else
		print "#{val}なぞ私には興味がない\n";
end