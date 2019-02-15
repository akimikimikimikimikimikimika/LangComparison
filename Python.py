#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

# Python

import sys
print("こんにちは。私の名前はPython,即ち蛇です。")
print("あなたのことを教えてください")
aboutYou = input()
print("あなたは"+aboutYou+"ですね。わかりました。")

def valDemo():
    # スカラ
    string = "文字列"
    number = 6
    # 配列
    array = [1, "second", 3, 3.14]
    # 辞書
    dictionary = {
        "first": "1st",
        "second": "2nd",
        "third": "3rd",
    }
    # 関数
    def cube(val):
        return val ** 3

    print(string)
    print(cube(number))
    print(array)
    print(dictionary)

valDemo()