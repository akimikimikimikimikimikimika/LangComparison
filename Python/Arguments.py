#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import sys

args=sys.argv

print("\nこのファイルを実行するにあたっての引数は以下の通りです:\n")

n=0
for s in args:
	if n>0:
		print(" "+str(n)+": "+s)
	n+=1
print("\n")
