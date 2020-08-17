#! /usr/bin/env python3
# -*- coding: utf-8 -*-

# Python

'''
	複数行のコメント
	(ドキュメント)
'''

import sys
import os
import subprocess
from Utility import *
from Stdio import Stdio
from Values import Values
from Operators import Operators
from Condition import Condition
from Repeat import Repeat
from Calc import Calc
from Strings import Strings
from Format import Format
from RegEx import RegEx
from DateTime import DateTime
from Classes import Classes
from Errors import Errors
from Files import Files
from Path import Path
from Process import Process
from Threads import Threads
from Arguments import Arguments

os.chdir(os.path.dirname(os.path.join(os.getcwd(),__file__)))

'''
	Pythonファイルをモジュールとして利用するには, Python/module.py とすれば,
		"from Python import module"
	とインポートする。
	この時,module内のコードは即座に実行され,module.pyに関数mainがあれば,module.main()のようにこちらからmodule.py内の関数を実行できる。
'''

prints("""

	こんにちは。私の名前はPython。
""")

while True:
	prints("""

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
	pnl(3)
	if action=="0":
		break
	elif action=="1":
		Stdio()
	elif action=="2":
		Values()
	elif action=="3":
		Operators()
	elif action=="4":
		Condition()
	elif action=="5":
		Repeat()
	elif action=="6":
		Calc()
	elif action=="7":
		Strings()
	elif action=="8":
		Format()
	elif action=="9":
		RegEx()
	elif action=="a":
		DateTime()
	elif action=="b":
		Classes()
	elif action=="c":
		Errors()
	elif action=="d":
		Files()
	elif action=="e":
		Path()
	elif action=="f":
		Process()
	elif action=="g":
		Threads()
	elif action=="h":
		Arguments()
	else:
		print("""
			指定したアクションは見つかりませんでした

		""")

sys.exit(0)