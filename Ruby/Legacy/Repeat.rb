#! /usr/bin/env ruby

require_relative "Utility.rb"

def Repeat

	pnl 1

	println "これから繰り返し処理を試します",2

	println "for n in 0..2 do…end",2
	for n in 0..2 do
		println "n=#{n} のループ"
	end

	pnl 1

	println "(0..2).each do |n|…end",2
	(0..2).each do |n|
		println "n=#{n} のループ"
	end

	pnl 1

	println "array.each do |c|…end",2
	cs=["壱","弐","参"]
	cs.each do |c|
		println "c=\"#{c}\" のループ"
	end

	pnl 1

	println "3.times do |n|…end",2
	3.times do |n|
		println "n=#{n} のループ"
	end

	pnl 1

	println "4.upto(6) do |n|…end",2
	4.upto(6) do |n|
		println "n=#{n} のループ"
	end

	pnl 1

	println "6.downto(4) do |n|…end",2
	6.downto(4) do |n|
		println "n=#{n} のループ"
	end

	pnl 1

	println "3.5.step(5, 0.7) do |n|…end",2
	3.5.step(5,0.7) do |n|
		println "n=#{n} のループ"
	end

	pnl 1

	println "while ~ do…end",2
	str=""
	while str.length<6 do
		str+="*";
		println "#{str}"
	end

	pnl 1

	println "until ~ do…end",2
	str=""
	until str.length==6 do
		str+="*"
		println str
	end

	pnl 1

	println "loop do…end",2
	str=""
	loop do
		str+="+"
		println str
		if str.length==6
			break
		end
	end

	pnl 1

	println "… while ~",2
	str=""
	str+="-" while str.length<6
	println str

	pnl 1

	print "… until ~",2
	str=""
	str+="-" until str.length==6
	println str

	pnl 1

	println "⚠︎ C言語との違い"

	println "break	=> break"
	println "continue => next"

	pnl 2

end

Repeat() if runningDirectly(__FILE__)