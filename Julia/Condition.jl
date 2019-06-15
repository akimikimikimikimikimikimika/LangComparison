#! /usr/bin/env julia

test1 = true
test2 = false

println("\r\nこれから条件分岐を試します\r\n")

if test1
	println("どうやらtest1は真のようです")
end

if !test1
	println("どうやらtest1は偽のようです")
elseif test2
	println("どうやらtest2は真のようです")
elseif !test2 && test1
	println("真偽が混在しているようです")
else
	println("どれでもないようです")
end

println("\r\n")