#! /usr/local/bin/lua

test1 = true
test2 = false

print("\r\nこれから条件分岐を試します\r\n")

if test1 then
	print("どうやらtest1は真のようです")
end

if not test1 then
	print("どうやらtest1は偽のようです")
elseif test2 then
	print("どうやらtest2は真のようです")
elseif not test2 and test1 then
	print("真偽が混在しているようです")
else
	print("どれでもないようです")
end

print("\r\n")