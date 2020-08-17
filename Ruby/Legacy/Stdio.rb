#! /usr/bin/env ruby

require_relative "Utility.rb"

def Stdio

	println """
		こんにちは。私の名前はRuby,即ち紅玉です。
		あなたのことを教えてください
	"""

	println "あなたは..."
	aboutYou = gets.chomp

	println """
		あなたは #{aboutYou} ですね。わかりました。

		これから幾つかの出力の仕方を披露しますね。
	"""
	puts "後ろに改行を付けます"
	print "後ろに改行を付けません。"
	pnl 1
	p "型のよくわかる出力です"
	p [true,2,"Third"]
	printf "数値などを文字列形式にフォーマットできます: %f %f",3.14,2.71
	pnl 1
	println "それから..."
	STDOUT.print "こんな出力も可能です。改行しません。"
	STDERR.print "たまにはエラーも出したくなります。"
	println "入力してみて (改行してからCtrl+Dで終了)"
	STDIN.read;
	println "以上です"

	pnl 2

end

Stdio() if runningDirectly(__FILE__)