#! /usr/bin/env ruby

require_relative "Utility.rb"

def Threads

	pnl 1

	print "これからスレッドを試します",2

	print "マルチスレッド",2

	# 9個のスレッドそれぞれで6回のループ

	threads = [] # スレッドオブジェクトを格納する配列

	println "スレッドを起動します"
	for m in 1..9 do
		threads.push(Thread.new(m) do |m|
			for n in 1..6 do
				puts "|(#{m},#{n})| = #{Math.hypot(m,n)}"
			end
		end)
	end

	println "スレッドの終了を待ちます"
	threads.each do |t|
		t.join # スレッドtの終了を待つ
	end
	println "スレッドは終了しました"

	# 各々のスレッド内でのループの順番は守られるが,全54回のプロセスの順番はバラバラ
	# このコードを実行する毎に,順番は変化する

	println "シングルスレッド",2

	println "スレッドを起動させます"
	$t = Thread.new do
		sleep 0.5
		println "このスレッドを停止させます"
		Thread.stop
		sleep 0.5
		println "このスレッドを終了させます"
		$t.kill # exit,terminate も同様
	end

	# スレッドの状態を確認する関数
	def info
		if $t.alive?
			println "   状態: 生きています (#{$t.status})"
		else
			println "   状態: 死んでいます"
		end
	end

	info
	sleep 0.7
	info
	println "スレッドを再開させます"
	$t.run
	info
	sleep 0.7
	info
	sleep 0.7

	pnl 2

end

Threads() if runningDirectly(__FILE__)