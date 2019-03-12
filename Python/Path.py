#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import sys
import os

print("ホームディレクトリ:       ",os.path.expanduser("~"))
print("カレントディレクトリ:     ",os.getcwd(),"\r\n")

pt=os.path.normpath(os.path.join(os.getcwd(),__file__))
print("このファイルのフルパス:   ",os.path.abspath(pt))
print("このファイルの実行パス:   ",__file__)
print("このファイルの名前:       ",os.path.basename(pt))
print("このファイルのある場所:   ",os.path.dirname(pt))

print("\r\n")