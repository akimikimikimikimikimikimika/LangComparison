#! /usr/bin/env python3
# -*- coding: utf-8 -*-

from Utility import *

def Condition():

	test1 = True
	test2 = False

	pnl(1)

	prints("これから条件分岐を試します",nl(2))

	if test1:
		print("どうやらtest1は真のようです")

	if not test1:
		print("どうやらtest1は偽のようです")
	elif test2:
		print("どうやらtest2は真のようです")
	elif not test2 and test1:
		print("真偽が混在しているようです")
	else:
		print("どれでもないようです")

	pnl(2)

runningDirectly(__name__,Condition)