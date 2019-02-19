#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

# Python

'''
    複数行のコメント
    (ドキュメント)
'''

import sys

def main():

    # 文字列
    string = "STRING"
    lines = """
    First line
    Second line
    Third line
    """
    # 数値
    number = 6
    # 数値 (虚数)
    com = 3+1j
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

    print("\n色々な値を試します")
    print("文字列:"+string)
    print("文字列2:\n"+lines)
    print("数値:"+str(number)+","+str(func(number))+","+str(cube(number))+","+str(com))
    print("真偽値:"+str(boolean))
    print("配列:")
    print(array)
    print("   2番目:"+str(array[2]))
    print("辞書:")
    print(dictionary)
    print("   b= "+str(dictionary["b"]))
    print("関数:")
    print(cube)
    print("無名関数:")
    print(func)