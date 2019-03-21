#! /usr/local/bin/ruby

test1 = true;
test2 = false;

print "\r\nこれから条件分岐を試します\r\n\r\n";

if test1
	print "どうやらtest1は真のようです\r\n";
end

if not test1
	print "どうやらtest1は偽のようです\r\n";
elsif test2
	print "どうやらtest2は真のようです\r\n";
elsif not test2 and test1
	print "真偽が混在しているようです\r\n";
else
	print "どれでもないようです\r\n";
end

unless test2
	print "どうやらtest2は偽のようです\r\n";
else
	print "どうやらtest2は真のようです\r\n";
end

print "test1が真だからこんなことをしているんです\r\n" if test1;
print "test2が偽でなければこんなことしないのに\r\n" unless test2;

val = 8;
case val
	when 0,1 then
		print "#{val}は特別な値である\r\n";
	when 8..10 then
		print "#{val}は連続して素数ではない\r\n";
	when 2,4,6 then
		print "#{val}は素数ではない\r\n";
	when 3,5,7 then
		print "#{val}は素数である\r\n";
	else
		print "#{val}なぞ私には興味がない\r\n";
end

print "\r\n\r\n";