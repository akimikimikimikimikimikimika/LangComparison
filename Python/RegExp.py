#! /usr/bin/env python3
# -*- coding: utf-8 -*-

import re

print("\r\nこれから正規表現を試します\r\n")

text="The Quick Brown Fox Jumps Over The Lazy Dog"
print(f"{text} → ")

print("\r\n検索")
found=re.search(r"(?i)the ([a-z]+) ([a-z]+) fox",text).group(0)
print("re.search: "+found)
'''
foundには,正規表現がマッチした際にはマッチオブジェクトが格納される。
マッチオブジェクトはテキスト中で最初にマッチした部分しか取り扱わない。
found.group(n) : n番目の結果が返される
	n=0  : マッチしたテキスト全体
	n=1… : 正規表現中のn番目の括弧にマッチしたテキスト
なお,マッチしなかった場合は,foundにはNoneが代入されている。
'''

print("\r\n置換")
# 正規表現が使えない置換
replaced=text.replace("Jump","Skip")
print("str.replace:\r\n"+replaced)
# 正規表現が使える置換
replaced=re.sub(r"(?i)([a-z]+)o([a-z]+)",r"« \1ö\2 »",text)
print("re.sub:\r\n"+replaced)

print("\r\n分割と結合")
array=text.split(r"(?i)(the|s)? ")
arranged="_".join(array)
print(arranged)

print("\r\n")