#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
from Utility import *

def Stdio():

	prints("""
		こんにちは。私の名前はPython,即ち蛇です。
		あなたのことを教えてください
	""")

	aboutYou = input("あなたは...")

	prints(f"""
		あなたは {aboutYou} ですね。わかりました。

		これから幾つかの出力の仕方を披露しますね。
	""")
	print("後ろに改行を付けます")
	print("後ろに改行を付けません。",end="")
	print("変なものも付けられます",end="☆")
	print("それから...")
	sys.stdout.write("こんな出力も可能です。改行しません。")
	sys.stderr.write("たまにはエラーも出したくなります")
	print("入力してみて (改行してからCtrl+Dで終了)")
	sys.stdin.read()
	print("以上です")

	pnl(2)

runningDirectly(__name__,Stdio)