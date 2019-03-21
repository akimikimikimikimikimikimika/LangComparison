#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

print("\r\nこれからループ処理を試します\r\n")

print("\r\nfor n in range(0,3):…else:…\r\n")
for n in range(0,3):
	print(f"n={n}のループ")
else:
	print("これでループは終わり")

print("\r\nfor c in array:…else:…\r\n")
cs=("壱","弐","参")
for c in cs:
	print(f"c=\"{c}\"のループ")
else:
	print("これでループは終わり")

print("\r\nwhile ~:…else:…\r\n")
string=""
while len(string)<6:
	string+="*"
	print(string)
else:
	print("++++++")

print("\r\n")