#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import threading
import multiprocessing
import math
import time
from Utility import *

def Threads():

	pnl(1)

	prints("これからスレッドを試します",nl(2))

	prints("マルチスレッド",nl(2))

	print(f"同時実行可能な数: {multiprocessing.cpu_count()}")

	# 9個のスレッドそれぞれで6回のループ

	# スレッドの実行内容を定義
	def mtAction(m):
		for n in range(1,7):
			print(f"|({m},{n})| = {math.hypot(m,n)}")

	threads = [] # スレッドオブジェクトを格納する配列

	# スレッドを構築
	for m in range(1,10):
		threads.append(threading.Thread(target=mtAction,args=(m,)))

	print("スレッドを起動します")
	for t in threads:
		t.start()
	print("スレッドの終了を待ちます")
	for t in threads:
		t.join() # スレッドtの終了を待つ
	print("スレッドは終了しました")

	# 各々のスレッド内でのループの順番は守られるが,全54回のプロセスの順番はバラバラ
	# このコードを実行する毎に,順番は変化する

	pnl(1)

	prints("シングルスレッド",nl(2))
	def st_action():
		time.sleep(0.5)
		print("スレッドが終了します")

	t=threading.Thread(target=st_action)

	# スレッドの状態を確認する関数
	def info():
		if t.is_alive():
			print("   状態: 生きています")
		else:
			print("   状態: 死んでいます")

	print("スレッドを起動します")
	t.start()
	time.sleep(0.2)
	info()
	time.sleep(0.5)
	info()

	pnl(2)

runningDirectly(__name__,Threads)