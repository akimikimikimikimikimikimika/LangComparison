#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

print("\r\nこれから例外処理を試します\r\n")

# try節内で起こりうる例外は捕捉される
try:
	# 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
	raise BaseException("あなたは過ちを犯した!!")
# 例外をキャッチすればexcept節が実行される
except BaseException as e:
	# BaseException as e : エラー型BaseExceptionのエラー e を受け取る
	print("エラーが発生しました")
	print(f"エラー内容:\r\n{e}")
# 例外をキャッチしなければelse節が実行される
else:
	print("エラーは発生しませんでした")
# 最後にfinally節が実行される
finally:
	print("以上でエラーチェックを終了します")
# tryに対応して,exceptかfinallyのどちらか一方は最低限必要である
# else節を設けるにはexcept節が必要である


print("\r\n")