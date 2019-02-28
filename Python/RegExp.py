#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import re

print("\nこれから正規表現を試します\n")

print("\n検索")
text="IllUsTrAtE"
found=re.search(r"[A-Z]+",text).group(0)
print("re.search: "+text+" → "+found.group())
print("start at "+found.start())
print("end at "+found.start())

print("\n置換")
text="IllUsTrAtE"
newtext=text.replace("l","*")
print("str.replace: "+text+" → "+newtext)
newtext=re.sub(r"[A-Z]+","*",text)
print("re.sub: "+text+" → "+newtext)

print("\n分割と結合")
text="a-b-c"
arr=text.split("-")
newtext="*".join(arr)
print(text+" → "+newtext)
