import math

# クラス定義1 (Vector)
class Vector():

	# クラス変数
	VERSION = "1.0"
		# クラス内で共有される値
		# 書き換え可能
		# メソッド内から self.VERSION でアクセス可能
		# 継承クラスからはアクセス不可
		# 外部から
		#	Vector.VERSION
		#	v.VERSION
		#	でアクセス可能

	# クラス変数
	__description = "Python simple vector class"
		# クラス内で共有される値
		# 書き換え可能
		# メソッド内から self.description でアクセス可能
		# 継承クラスからはアクセス不可
		# 外部からはアクセス不可

	# イニシャライザ/コンストラクタ
	def __init__(self,x,y,z):
		self.x = x
		self.y = y
		self.z = z
		# インスタンス変数
		#	各インスタンス毎に異なる値
		#	Vectorからはアクセスできない (イニシャライザで変数を導入するから)
		#	インスタンスメソッド内のみから self.x でアクセス可能
		#	外部から v.x でアクセス可能

		# 戻り値を用意せずとも,インスタンスが返される

	# インスタンスの説明
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

	# クラスメソッド版 (引数のVectorを足し合わせてVectorを返す)
		# クラスメソッドでは def の行の前に @classmethod を付加する
	@classmethod
	def added(cls,*args):
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

	# クラス変数 description を返す
	@classmethod
	def describe(cls):
		return cls.__description

	# メソッド内で,インスタンス自身/クラス自身は,第1引数の self,cls から呼び出す
	# 関数名やデータ名の先頭に__を付すと,このクラスと,継承したクラス内でのみアクセス可能

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

	# 説明できないはず (実行するとエラーになる)
	@classmethod
	def describeFromSub(cls):
		return cls.__description

	# プライベートメソッド (外部からアクセスできない)
	# 単位ベクトルに変換
	def __normalize(self):
		self.coefMultiply(1/self.norm)