#! /usr/bin/env python3
# -*- coding: utf-8 -*-

from Utility import *

def Repeat():

	pnl(1)

	prints("これから繰り返し処理を試します",nl(2))

	prints("for n in range(0,3):…else:…",nl(2))
	for n in range(0,3):
		print(f"n={n} のループ")
	else:
		print("これでループは終わり")

	pnl(1)

	prints("for c in array:…else:…",nl(2))
	cs=("壱","弐","参")
	for c in cs:
		print(f"c=\"{c}\" のループ")
	else:
		print("これでループは終わり")

	pnl(1)

	prints("while ~:…else:…",nl(2))
	string=""
	while len(string)<6:
		string+="*"
		print(string)
	else:
		print("++++++")

	pnl(2)

runningDirectly(__name__,Repeat)