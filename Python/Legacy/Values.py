#! /usr/bin/env python3
# -*- coding: utf-8 -*-

from Utility import *

def Values():

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

	# バイト
	byte = b"Python byte type" # ASCII文字しか扱えない

	# 数値
	integer = 6
	floating = .0375e-6
	comp = 3+1j

	# 真偽値
	boolean = True

	# リスト (mutable,主に同種の値の集合)
	lis = [1, "second", 3, 3.14, False]

	# タプル (immutable,主に異種の値の集合)
	tup = (1, "second", 3, 3.14, False) # 要素が1つのタプルは (1,) のように表記する

	# 辞書
	dictionary = {
		"a": 1,
		"b": "second",
		"c": 3,
		"d": 3.14,
		"e": False
	}

	# 範囲
	ranE = range(5,8) # 5≦x<8
		# だけど, random.randint(5,8) は, 5≦x≦8

	# 関数
	def cube(val):
		return val ** 3

	# ラムダ (無名関数)
	func = lambda val: val ** 2

	'''
		Pythonで型判定
		• type(val) -> Type : 値の型のオブジェクトが返される
			例えば, type(val) is str などとすれば,valがstr型かどうか判定できる
		• isinstance(val,type) -> bool : 値が指定したクラス型かどうか判定
			サブクラスであっても真になる
	'''

	prints(f"""

		色々な値を試します

		文字列: {string}
		文字列2:
		{lines}
		バイト: {byte}
		数値:
		   整数: {integer},{func(integer)},{cube(integer)}
		   浮動小数: {floating}
		   複素数: {comp}
		真偽値: {boolean}
		リスト:
		   {lis}
		   2番目: {lis[2]}
		   大きさ: {len(lis)}
		タプル:
		   {tup}
		   2番目: {tup[2]}
		   大きさ: {len(dictionary)}
		辞書:
		   {dictionary}
		   b= {dictionary["b"]}
		   大きさ:{len(dictionary)}
		範囲:
		   5≤x<8 = {ranE}
		関数:
		   {cube}
		ラムダ (無名関数):
		   {func}
	""")

	'''
		pass
		Pythonでは関数,制御構文,繰り返しなどで,インデントによりその守備範囲を定めることがある
		インデント内の内容がない場合は, pass と明記しなければならない
		例えば,何もしない関数であれば...

			def doNothing():
				pass

		インデント内の内容を pass にしなければならない
		同じように,制御構文でも...

			if statement:
				pass

		とする。
	'''
	'''
		関数でデフォルト引数を取り扱う方法

			def funcName(arg="defaultValue"):
				...

	'''
	'''
		関数で可変個引数を取り扱う方法

			def funcName(arg1,arg2,*args):
				...
				# args = (arg3,arg4...) : タプル

		又,関数を実行する際,配列,タプルの各要素をそのまま関数の引数とすることもできる

			args = [arg1,arg2,arg3] : 配列argsを用意
			funcName(*args) <- これは funcName(arg1,arg2,arg3) と同義
	'''

	pnl(2)

runningDirectly(__name__,Values)