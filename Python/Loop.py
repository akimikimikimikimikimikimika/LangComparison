#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

print("\nこれからループ処理を試します\n")

print("\nfor n in range(0,2):...else:...\n")
for n in [0,1,2]:
	print("n="+str(n)+"のループ")
else:
	print("これでループは終わり")

print("\nfor n in [0,1,2]:...else:...\n")
for n in [0,1,2]:
	print("n="+str(n)+"のループ")
else:
	print("これでループは終わり")

print("\nwhile ~:...else:...\n")
string=""
while len(string)<6:
	string+="*"
	print(string)
else:
	print("++++++")