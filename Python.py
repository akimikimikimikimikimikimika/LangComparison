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

os.chdir(os.path.normpath(os.path.dirname(os.path.join(os.getcwd(),__file__))+"/Python"))

'''
	Pythonファイルをモジュールとして利用するには, Python/module.py とすれば,
		"from Python import module"
	とインポートする。但し,インタプリタがPythonファイルをモジュールと認識するためには,Python/__init__.pyにファイルがなければならない。但し,これは空ファイルでも構わない。
	この時,module内のコードは即座に実行され,module.pyに関数mainがあれば,module.main()のようにこちらからmodule.py内の関数を実行できる。
'''

print("""

こんにちは。私の名前はPython。
""",end="")

while True:
	print("""

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す
6. 数学的演算を試す
7. 文字列を試す
8. 文字列フォーマットを試す
9. 正規表現を試す
a. 日付と時刻を試す
b. クラスを試す
c. 例外処理を試す
d. ファイル操作を試す
e. ファイルパスを試す
f. プロセス系を試す
g. スレッドを試す
h. コマンドライン引数を試す

0. 終了


""")
	action = input()
	print("\r\n\r\n")
	if action=="0":
		break
	elif action=="1":
		rtn=subprocess.call("./Stdinout.py")
	elif action=="2":
		rtn=subprocess.call("./Values.py")
	elif action=="3":
		rtn=subprocess.call("./Operators.py")
	elif action=="4":
		rtn=subprocess.call("./Condition.py")
	elif action=="5":
		rtn=subprocess.call("./Loop.py")
	elif action=="6":
		rtn=subprocess.call("./Math.py")
	elif action=="7":
		rtn=subprocess.call("./String.py")
	elif action=="8":
		rtn=subprocess.call("./Sprintf.py")
	elif action=="9":
		rtn=subprocess.call("./RegExp.py")
	elif action=="a":
		rtn=subprocess.call("./DateTime.py")
	elif action=="b":
		rtn=subprocess.call("./Class.py")
	elif action=="c":
		rtn=subprocess.call("./Error.py")
	elif action=="d":
		rtn=subprocess.call("./File.py")
	elif action=="e":
		rtn=subprocess.call("./Path.py")
	elif action=="f":
		rtn=subprocess.call("./Process.py")
	elif action=="g":
		rtn=subprocess.call("./Thread.py")
	elif action=="h":
		rtn=subprocess.call(["./Arguments.py","このプログラムを直接実行してみよう。","ここにあるよ: Python/Arguments.py","","コマンドラインに以下のように入力して実行します","","Python/Arguments.py 引数1 引数2…","","すると,引数1,引数2…が順に出力されます"])
	else:
		print("""
指定したアクションは見つかりませんでした

""")

sys.exit(0)