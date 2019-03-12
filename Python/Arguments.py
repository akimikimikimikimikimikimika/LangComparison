#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import sys

args=sys.argv

# 引数は1番目から (0番目はこのファイルを呼ぶパス)

print("\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n")

n=0
for s in args:
	if n>0:
		print(f" {n}: {s}")
	n+=1

print("\r\n")