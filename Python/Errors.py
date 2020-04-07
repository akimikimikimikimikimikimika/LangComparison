#! /usr/bin/env python3
# -*- coding: utf-8 -*-

from Utility import *

def Errors():

	prints(nl(),"これから例外処理を試します",nl())

	# try節内で起こりうる例外は捕捉される
	try:
		# 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
		raise BaseException("あなたは過ちを犯した!!")
	# 例外をキャッチすればexcept節が実行される
	except BaseException as e:
		# BaseException as e : エラー型BaseExceptionのエラー e を受け取る
		print("エラーが発生しました")
		prints("エラー内容:",nl(),e)
	# 例外をキャッチしなければelse節が実行される
	else:
		print("エラーは発生しませんでした")
	# 最後にfinally節が実行される
	finally:
		print("以上でエラーチェックを終了します")
	# tryに対応して,exceptかfinallyのどちらか一方は最低限必要である
	# else節を設けるにはexcept節が必要である

	pnl(2)

runningDirectly(__name__,Errors)