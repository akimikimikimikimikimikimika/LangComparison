# クラス定義1 (Vector)
class Vector

	# クラス変数
	VERSION = "1.0"
		# クラス内で共有される値
		# 書き換え不可 (大文字の変数名)
		# メソッド内から VERSION でアクセス可能
		# 継承クラスからはアクセス可能
		# 外部から
		#	Vector::VERSION
		#	v.version
		#	でアクセス可能

	# クラス変数
	@@description = "Ruby simple vector class"
		# クラス内で共有される値
		# 書き換え可能
		# メソッド内から @@description でアクセス可能
		# 継承クラスからはアクセス不可
		# 外部からはアクセス不可

	# クラスインスタンス変数
	@x=0
	@y=0
	@z=0
		# クラス自体を1つのインスタンスと見做した時のインスタンス変数
		# 書き換え可能
		# クラスメソッド内のみで @x でアクセス可能
		# 継承クラスからはアクセス不可
		# 外部からはアクセス不可

	# イニシャライザ/コンストラクタ
	def initialize(x,y,z)
		@x=x
		@y=y
		@z=z
		# インスタンス変数
		#	各インスタンス毎に異なる値
		#	インスタンスメソッド内のみから @x でアクセス可能
		#	アクセサを用意すれば v.x でアクセス可能

		# 戻り値を用意せずとも,インスタンスが返される
	end

	def x # ゲッター
		@x
	end
	def x=(x) # セッター
		@x=x
	end
	# ゲッター/セッターの定義
		# Rubyのオブジェクト内の変数は外部から直接アクセスできないので,ゲッター/セッターが必要
		# 逆に,外部からの不正な値の代入を防ぐことができ,セッターでは適切な値かどうか精査できる

	attr_accessor :y,:z
	# アクセサ : attr を使うことで,ゲッター/セッターを簡単に用意できる
		# attr_reader  読み取り専用
		# attr_writer  書き込み専用
		# attr_accessor 読み書き

	# インスタンスの説明
	def desc
		"(#{@x},#{@y},#{@z})"
	end

	# 足し算を定義

	# インスタンスメソッド版 (自分自身に足し合わせていく)
	def add(*args)
		args.each do |v|
			@x += v.x
			@y += v.y
			@z += v.z
		end
		self
	end

	# クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
		# クラスメソッドでは self. を前置する
	def self.added(*args)
		a=Vector.new(0,0,0);
		args.each do |v|
			a.x += v.x
			a.y += v.y
			a.z += v.z
		end
		a;
	end

	# クラスメソッド
		# def self.method の形で指定
		# Vector.method で呼び出し

	# インスタンスメソッド
		# def method の形で指定
		# v.method で呼び出し

	# スカラ倍を定義 (共にインスタンスメソッド)

	# 自分自身を実数倍
	def coefMultiply(k)
		@x *= k
		@y *= k
		@z *= k
		self
	end

	# 自分自身の実数倍のVectorを生成
	def coefMultiplied(k)
		Vector.new(@x*k,@y*k,@z*k)
	end

	# メソッド内で @@description を呼ぶ
	def self.describe
		@@description
	end

	# メソッド内で,インスタンス自身/クラス自身は, self から呼び出す

end

# クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector < Vector # 継承宣言

	@x=0
	@y=0
	@z=0 # クラスインスタンス変数

	def initialize(x,y,z)
		@x=x;@y=y;@z=z;
	end

	# 内積を定義
	def dot(v)
		p=0
		p += @x*v.x
		p += @y*v.y
		p += @z*v.z
		p
	end

	# 外積を定義
	def cross(v)
		Vector.new(
			@y*v.z-@z*v.y,
			@z*v.x-@x*v.z,
			@x*v.y-@y*v.x
		)
	end

	# ノルムを定義
	def norm
		Math.sqrt(self.dot(self))
	end

	# 説明できるはず
	def self.describeFromSub
		@@description
	end

	# プライベートメソッド (外部からアクセスできない)
	# 単位ベクトルに変換
	def normalize
		self.coefMultiply(1/self.norm)
	end
	private :normalize

end