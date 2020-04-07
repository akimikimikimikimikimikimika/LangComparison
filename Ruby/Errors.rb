#! /usr/bin/env ruby

require_relative "Utility.rb"

def Errors

	pnl 1

	println "これから例外処理を試します",2

	# begin節内で起こりうる例外は捕捉される
	begin
		# 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
		raise "あなたは過ちを犯した!!"
	# 例外をキャッチすればrescue節が実行される
	rescue => e
		println "エラーが発生しました"
		prints "エラー内容:",e
	# 例外をキャッチしなければelse節が実行される。なくても良い
	else
		println "エラーは発生しませんでした"
	# 最後にensure節が実行される。なくても良い
	ensure
		println "以上でエラーチェックを終了します"
	end
	# 例外を捕捉するにはrescueが必要である

	pnl 1

	# エラーの種類を指定する例
	begin
		# エラーの種類をSyntaxError(構文エラー)にする
		raise SyntaxError,"あなたはRubyの文法を踏み外している!"
		# 或いは
		raise SyntaxError.new "あなたはRubyの文法を踏み外している!"
	rescue SyntaxError, NoMemoryError => e
		# 種類を定めたエラーを捕捉するには,rescue節で発生する可能性のあるエラーを特定しなければならない (この場合,SyntaxErrorとNoMemoryErrorが捕捉できる)
		println "エラーが発生しました"
		prints "エラー内容:",e
	end

	pnl 2

end

Errors() if runningDirectly(__FILE__)