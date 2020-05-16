#! /usr/bin/env ruby

require_relative "Utility.rb"

def Condition

	test1 = true
	test2 = false

	pnl 1

	println "これから条件分岐を試します",2

	if test1
		println "どうやらtest1は真のようです"
	end

	if not test1
		println "どうやらtest1は偽のようです"
	elsif test2
		println "どうやらtest2は真のようです"
	elsif not test2 and test1
		println "真偽が混在しているようです"
	else
		println "どれでもないようです"
	end

	unless test2
		println "どうやらtest2は偽のようです"
	else
		println "どうやらtest2は真のようです"
	end

	println "test1が真だからこんなことをしているんです" if test1
	println "test2が偽でなければこんなことしないのに" upnless test2

	val = 8
	case val
		when 0,1 then
			println "#{val}は特別な値である"
		when 8..10 then
			println "#{val}は連続して素数ではない"
		when 4,6 then
			println "#{val}は素数ではない"
		when 2,3,5,7 then
			println "#{val}は素数である"
		else
			println "#{val}なぞ私には興味がない"
	end

	pnl 2

end

Condition() if runningDirectly(__FILE__)