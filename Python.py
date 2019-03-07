#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

# Python

'''
	複数行のコメント
	(ドキュメント)
'''

import sys
import os
import subprocess
dir=os.path.dirname(os.getcwd()+"/"+__file__)

'''
	Pythonファイルをモジュールとして利用するには, Python/module.py とすれば,
		"from Python import module"
	とインポートする。但し,インタプリタがPythonファイルをモジュールと認識するためには,Python/__init__.pyにファイルがなければならない。但し,これは空ファイルでも構わない。
	この時,module内のコードは即座に実行され,module.pyに関数mainがあれば,module.main()のようにこちらからmodule.py内の関数を実行できる。
'''

print("こんにちは。私の名前はPython。")
while True:
	print("\n\n何がしたい?\n")
	print("1. 標準入出力を試す")
	print("2. 色々な値を試す")
	print("3. 演算子を試す")
	print("4. 条件分岐を試す")
	print("5. 繰り返しを試す")
	print("6. 正規表現を試す")
	print("7. コマンドライン引数を試す")
	print("\n")
	print("0. 終了")
	print("\n")
	action = input()
	print("\n\n\n")
	if action=="1":
		rtn=subprocess.call(dir+"/Python/Stdinout.py")
	elif action=="2":
		rtn=subprocess.call(dir+"/Python/Values.py")
	elif action=="3":
		rtn=subprocess.call(dir+"/Python/Operators.py")
	elif action=="4":
		rtn=subprocess.call(dir+"/Python/Condition.py")
	elif action=="5":
		rtn=subprocess.call(dir+"/Python/Loop.py")
	elif action=="6":
		rtn=subprocess.call(dir+"/Python/RegExp.py")
	elif action=="7":
		rtn=subprocess.call([dir+"/Python/Arguments.py","このプログラムを直接実行してみよう。","ここにあるよ: Python/Arguments.py","","コマンドラインに以下のように入力して実行します","","Python/Arguments.py 引数1 引数2…","","すると,引数1,引数2…が順に出力されます"])
	elif action=="0":
		break
	else:
		print("指定したアクションは見つかりませんでした")

sys.exit(0)
