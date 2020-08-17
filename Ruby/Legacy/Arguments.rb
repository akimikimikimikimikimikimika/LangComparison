#! /usr/bin/env ruby

require_relative "Utility.rb"

ARGV
# 引数は0番目から

def Arguments

	pnl 1

	println "このファイルを実行するにあたっての引数は以下の通りです:",2

	arguments=ARGV

	# 引数がない場合はテンプレートに置き換え
	if arguments.length==0
		arguments=defaultArgs
	end

	n=1
	arguments.each do |s|
		println " #{n}: #{s}"
		n=n+1
	end

	pnl 2

end

defaultArgs=[
	"./Arguments.rb",
	"このプログラムを直接実行してみよう。",
	"ここにあるよ: Ruby/Arguments.rb",
	"",
	"コマンドラインに以下のように入力して実行します",
	"",
	"Ruby/Arguments.rb 引数1 引数2…",
	"",
	"すると,引数1,引数2…が順に出力されます"
]

Arguments() if runningDirectly(__FILE__)