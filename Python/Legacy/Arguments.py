#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
from Utility import *

sys.argv
# 引数は1番目から (0番目はこのファイルを呼ぶパス)

def Arguments():

	prints(nl(),"このファイルを実行するにあたっての引数は以下の通りです:",nl())

	arguments=sys.argv

	# 引数がない場合はテンプレートに置き換え
	if len(arguments)==1:
		arguments=defaultArgs

	n=0
	for s in arguments:
		if n>0:
			print(f" {n}: {s}")
		n+=1

	pnl(2)

defaultArgs=[
	"./Arguments.py",
	"このプログラムを直接実行してみよう。",
	"ここにあるよ: Python/Arguments.py",
	"",
	"コマンドラインに以下のように入力して実行します",
	"",
	"Python/Arguments.py 引数1 引数2…",
	"",
	"すると,引数1,引数2…が順に出力されます"
]

runningDirectly(__name__,Arguments)