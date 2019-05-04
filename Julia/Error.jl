#! /usr/local/bin/julia

println("\r\nこれから例外処理を試します\r\n")

# try節内で起こりうる例外は捕捉される
try
	# 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
	error("あなたは過ちを犯した!!")
	throw(ErrorException("あなたは過ちを犯した!!"))
	# ErrorExceptionというエラー型のエラーを発生させる。1番目と2番目の式は同義
# 例外をキャッチすればcatch節が実行される
catch e
	println("エラーが発生しました")
	println("エラー内容:\r\n$(e)")
# 最後にfinally節が実行される
finally
	println("以上でエラーチェックを終了します")
end
# tryに対応して,catchかfinallyのどちらか一方は最低限必要である

println("\r\n")