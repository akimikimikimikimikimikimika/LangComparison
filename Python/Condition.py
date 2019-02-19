#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

def main():

    test1 = True
    test2 = False

    print("\nこれから条件分岐を試します\n")

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