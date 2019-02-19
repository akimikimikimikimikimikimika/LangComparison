#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

# Python

'''
    複数行のコメント
    (ドキュメント)
'''

import sys
import os
import os.path

from Python import Stdinout
from Python import Values
from Python import Operators
from Python import Condition
from Python import Loop

print("こんにちは。私の名前はPython。")
while True:
    print("\n\n何がしたい?\n")
    print("1. 標準入出力を試す")
    print("2. 色々な値を試す")
    print("3. 演算子を試す")
    print("4. 条件分岐を試す")
    print("5. 繰り返しを試す")
    print("\n")
    print("0. 終了")
    print("\n")
    action = input()
    print("\n\n\n")
    if action=="1":
        Stdinout.main()
    elif action=="2":
        Values.main()
    elif action=="3":
        Operators.main()
    elif action=="4":
        Condition.main()
    elif action=="5":
        Loop.main()
    elif action=="0":
        break
    else:
        print("指定したアクションは見つかりませんでした")

sys.exit(0)
