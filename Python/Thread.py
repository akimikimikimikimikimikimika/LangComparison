#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import threading
import math
import time

print("\r\nこれからスレッドを試します\r\n")

print("\r\nマルチスレッド\r\n")

# 9個のスレッドそれぞれで6回のループ

# スレッドの実行内容を定義
def mtAction(m):
	for n in range(1,7):
		print(f"|({m},{n})| = {math.hypot(m,n)}")

threads = [] # スレッドオブジェクトを格納する配列

# スレッドを構築
for m in range(1,10):
	threads.append(threading.Thread(target=mt_action,args=(m,)))

print("スレッドを起動します")
for t in threads:
	t.start()
print("スレッドの終了を待ちます")
for t in threads:
	t.join() # スレッドtの終了を待つ
print("スレッドは終了しました")

# 各々のスレッド内でのループの順番は守られるが,全54回のプロセスの順番はバラバラ
# このコードを実行する毎に,順番は変化する

print("\r\nシングルスレッド\r\n")
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

print("\r\n\r\n")