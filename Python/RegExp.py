#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import re

print("\r\nこれから正規表現を試します\r\n")

print("\r\n検索")
text="IllUsTrAtE"
found=re.search(r"[A-Z]+",text).group(0)
print("re.search: "+text+" → "+found)

print("\r\n置換")
text="IllUsTrAtE"
newtext=text.replace("l","*")
print("str.replace: "+text+" → "+newtext)
text="<a> <b> <c>"
newtext=re.sub(r"<([a-z])>",r"{\1}",text)
print("re.sub: "+text+" → "+newtext)

print("\r\n分割と結合")
text="a-b-c"
arr=text.split("-")
newtext="*".join(arr)
print(text+" → "+newtext)

print("\r\n")