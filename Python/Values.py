#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

# 文字列
string = "パイソン"
lines = """
First line
Second line
Third line
"""
'''
	変数展開/式展開の仕方
	f"The value is {val*2}"
	f'The value is {val*2}'
	"The values are {0}, {1}, and {2}".format(3,6,2)
	"The values are {a}, {b}, and {c}".format(a=3,b=6,c=2)
	"The value is %d" % val
		%f : Float
		%d : Integer
		%x : Hex
		%o : Oct
		%s : String
		%% : %
'''
# 数値
number = 6
# 数値 (複素数)
com = 3+1j
# 真偽値
boolean = True
# リスト
lis = [1, "second", 3, 3.14, False]
# タプル
tup = (1, "second", 3, 3.14, False)
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
# ラムダ (無名関数)
func = lambda val: val ** 2

print("\r\n色々な値を試します")
print(f"文字列:{string}")
print(f"   長さ:{len(string)}")
print(f"文字列2:\r\n{lines}")
print(f"数値:{number},{func(number)},{cube(number)},{com}")
print(f"真偽値:{boolean}")
print(f"リスト:\r\n{lis}")
print(f"   2番目:{lis[2]}")
print(f"   大きさ:{len(lis)}")
print(f"タプル:\r\n{tup}")
print(f"   2番目:{tup[2]}")
print(f"   大きさ:{len(tup)}")
print(f"辞書:\r\n{dictionary}")
print(f"   b= {dictionary['b']}")
print(f"   大きさ:{len(dictionary)}")
print(f"関数:\r\n{cube}")
print(f"ラムダ (無名関数):\r\n{func}")

print("\r\n")