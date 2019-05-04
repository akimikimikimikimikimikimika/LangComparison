#! /usr/local/bin/python3.7
# -*- coding: utf-8 -*-

import math

# クラス定義1 (Vector)
class Vector():

	__description = "Python simple vector class" # クラス変数
		# クラス内で共有される値
		# メソッド内から self.description でアクセス可能 (継承クラスからもアクセス可能)
		# 変数名先頭の __ を取り除けば,外部から Vector.description v.description でアクセス可能

	# イニシャライザ/コンストラクタ
	def __init__(self,x,y,z):
		self.x = x
		self.y = y
		self.z = z
		# インスタンス変数
		#	各インスタンス毎に異なる値
		#	インスタンスメソッド内のみから self.x でアクセス可能
		#	外部から v.x でアクセス可能

		# 戻り値を用意せずとも,インスタンスが返される

	# インスタンスの説明 (インスタンスメソッド)
	def desc(self):
		return f"({self.x},{self.y},{self.z})"

	# 足し算を定義
	# インスタンスメソッド版 (自分自身に足し合わせていく)
	def add(self,*args):
		for v in args:
			self.x += v.x
			self.y += v.y
			self.z += v.z
		return self
	# クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
	#	クラスメソッドでは def の行の前に @classmethod を付加する
	@classmethod
	def added(self,*args):
		a=Vector(0,0,0)
		for v in args:
			a.x += v.x
			a.y += v.y
			a.z += v.z
		return a
	# @staticmethodと@classmethodの違い
	#	どちらもdefの前に付加するもので,クラス直属のメソッドである
	#	どちらの関数もクラスだけでなく,インスタンスからも呼び出せる
	#	@staticmethodでは,関数の受け取る引数が実際に渡した引数そのままである
	#	@classmethodでは,関数の受け取る引数が (クラス,引数...) の型になっている (最初にクラスを受け取る)
	#	他の一般的なインスタンスメソッドと同じ挙動を示すのは@classpathである

	# スカラ倍を定義 (共にインスタンスメソッド)
	# 自分自身を実数倍
	def coefMultiply(self,k):
		self.x *= k
		self.y *= k
		self.z *= k
		return self
	# 自分自身の実数倍のVectorを生成
	def coefMultiplied(self,k):
		return Vector(self.x*k,self.y*k,self.z*k)

	@classmethod
	def describe(self):
		return self.__description

# クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector(Vector): # 継承宣言

	def __init__(self,x,y,z):
		self.x = x
		self.y = y
		self.z = z

	# 内積を定義
	def dot(self,v):
		p=0
		p += self.x*v.x
		p += self.y*v.y
		p += self.z*v.z
		return p


	# 外積を定義
	def cross(self,v):
		return Vector(
			self.y*v.z-self.z*v.y,
			self.z*v.x-self.x*v.z,
			self.x*v.y-self.y*v.x
		)

	# ノルムを定義
	def norm(self):
		return math.sqrt(self.dot(self))

	# 説明できないはず
	@classmethod
	def describeFromSub(self):
		return self.__description

	# プライベートメソッド
	#	外部からアクセスできない
	def __normalize(self):
		return self.coefMultiply(1)

vec1 = Vector(3,2,1)
vec2 = ExtendedVector(6,4,2)
vec3 = ExtendedVector(54,63,72)
vec4 = Vector(0,0,0)

# 値の設定
vec3.x = 16

print(f"""

これからクラスを試します

vec1: {   vec1   }
vec2: {   vec2   }

vec1の説明: {   vec1.desc()   }
vec2の説明: {   vec2.desc()   }
vec3の説明: {   vec3.desc()   }
vec4の説明: {   vec4.desc()   }

vec1のx座標: {   vec1.x   }
vec2のy座標: {   vec2.y   }
vec3のz座標: {   vec3.z   }

vec1+vec2+vec3: {   Vector.added(vec1,vec2,vec3).desc()   }
vec4+vec2: {   vec4.add(vec2).desc()   }
vec2×12: {   vec2.coefMultiplied(12).desc()   }

vec2∙vec3: {   vec2.dot(vec3)   }
vec3×vec2: {   vec3.cross(vec2).desc()   }
|vec3|:    {   vec3.norm()   }

説明してもらう1: {   Vector.describe()   }
説明してもらう2: {   vec1.describe()   }

""")

print("\r\n")
