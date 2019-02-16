#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

# Python

'''
    複数行のコメント
    (ドキュメント)
'''

import sys

def welcome():
    print("こんにちは。私の名前はPython,即ち蛇です。")
    print("あなたのことを教えてください")
    aboutYou = input()
    print("あなたは"+aboutYou+"ですね。わかりました。")

def valDemo():
    # 文字列
    string = "STRING"
    # 数値
    number = 6
    # 真偽値
    boolean = True
    # 配列
    array = [1, "second", 3, 3.14, False]
    # 辞書
    dictionary = {
        "a": 1,
        "b": "second",
        "c": 3,
        "d": 3.14,
        "e": False
    }
    # 関数
    def cube(val):
        return val ** 3
    # 無名関数
    func = lambda val: val ** 2

    print("\n各種データを扱います")
    print("文字列:"+string)
    print("数値:"+str(number)+","+str(func(number))+","+str(cube(number)))
    print("真偽値:"+str(boolean))
    print("配列:")
    print((array))
    print("   2番目:"+str(array[2]))
    print("辞書:")
    print(dictionary)
    print("   b= "+str(dictionary["b"]))
    print("関数:")
    print(cube)
    print("無名関数:")
    print(func)

welcome()
valDemo()