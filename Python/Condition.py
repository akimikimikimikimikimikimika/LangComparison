#! /usr/bin/env python3
# -*- coding: utf-8 -*-

test1 = True
test2 = False

print("\r\nこれから条件分岐を試します\r\n")

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

print("\r\n")