#! /usr/local/bin/ruby

# クラス定義1 (Vector)
class Vector

	VERSION = "1.0"; # クラス定数

	@@description = "Ruby simple vector class"; # クラス変数
		# クラス内で共有される値
		# メソッド内で @@description でアクセス可能 (継承クラスからもアクセス可能)
		# 外部からはアクセスできない

	@x=0;@y=0;@z=0; # クラスインスタンス変数
		# クラス自体を1つのインスタンスと見做した時のインスタンス変数
		# クラスメソッド内のみで @x でアクセス可能 (継承クラスからはアクセス不可)
		# 外部からはアクセスできない

	# イニシャライザ/コンストラクタ
	def initialize(x,y,z)
		@x=x;@y=y;@z=z; # インスタンス変数
			# 各インスタンス毎に異なる値
			# インスタンスメソッド内のみから @x でアクセス可能
			# アクセサを用意すれば v.x でアクセス可能
		# 戻り値を用意せずとも,インスタンスが返される
	end

	def x # ゲッター
		@x;
	end
	def x=(x) # セッター
		@x=x;
	end
	# ゲッター/セッターの定義
		# Rubyのオブジェクト内の変数は外部から直接アクセスできないので,ゲッター/セッターが必要
		# 逆に,外部からの不正な値の代入を防ぐことができ,セッターでは適切な値かどうか精査できる

	attr_accessor :y,:z
	# アクセサ : attr を使うことで,ゲッター/セッターを簡単に用意できる
		# attr_reader  読み取り専用
		# attr_writer  書き込み専用
		# attr_accessor 読み書き

	# クラスメソッド
		# def self.method の形で指定
		# Vector.method で呼び出し

	# インスタンスメソッド
		# def method の形で指定
		# v.method で呼び出し

	# インスタンスの説明 (インスタンスメソッド)
	def desc
		"(#{@x},#{@y},#{@z})";
	end

	# 足し算を定義
	# インスタンスメソッド版 (自分自身に足し合わせていく)
	def add(*args)
		args.each do |v|
			@x += v.x;
			@y += v.y;
			@z += v.z;
		end
		self;
	end
	# クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
		# クラスメソッドでは self. を前置する
	def self.added(*args)
		a=Vector.new(0,0,0);
		args.each do |v|
			a.x += v.x;
			a.y += v.y;
			a.z += v.z;
		end
		a;
	end

	# スカラ倍を定義 (共にインスタンスメソッド)
	# 自分自身を実数倍
	def coefMultiply(k)
		@x *= k;
		@y *= k;
		@z *= k;
		self;
	end
	# 自分自身の実数倍のVectorを生成
	def coefMultiplied(k)
		Vector.new(@x*k,@y*k,@z*k);
	end

	# メソッド内で @@description を呼ぶ
	def self.describe
		@@description;
	end

	# メソッド内で,インスタンス自身/クラス自身は, self から呼び出す

end

# クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector < Vector # 継承宣言

	@x=1;@y=1;@z=1; # クラスインスタンス変数

	def initialize(x,y,z)
		@x=x;@y=y;@z=z;
	end

	# 内積を定義
	def dot(v)
		p=0;
		p += @x*v.x;
		p += @y*v.y;
		p += @z*v.z;
		p;
	end

	# 外積を定義
	def cross(v)
		Vector.new(
			@y*v.z-@z*v.y,
			@z*v.x-@x*v.z,
			@x*v.y-@y*v.x
		);
	end

	# ノルムを定義
	def norm
		Math.sqrt(self.dot(self));
	end

	# こちらでも説明できる
	def self.describeFromSub
		@@description;
	end

	# プライベートメソッド
		# 外部からアクセスできない
	def normalize
		self.coefMultiply(1/self.norm);
	end
	private :normalize
end

vec1 = Vector.new(3,2,1);
vec2 = ExtendedVector.new(6,4,2);
vec3 = ExtendedVector.new(54,63,72);
vec4 = Vector.new(0,0,0);

# 値の設定
vec3.x = 16;

print """

これからクラスを試します

vec1: #{   vec1   }
vec2: #{   vec2   }

vec1の説明: #{   vec1.desc   }
vec2の説明: #{   vec2.desc   }
vec3の説明: #{   vec3.desc   }
vec4の説明: #{   vec4.desc   }

vec1のx座標: #{   vec1.x   }
vec2のy座標: #{   vec2.y   }
vec3のz座標: #{   vec3.z   }

vec1+vec2+vec3: #{   Vector.added(vec1,vec2,vec3).desc   }
vec4+vec2: #{   vec4.add(vec2).desc   }
vec2×12: #{   vec2.coefMultiplied(12).desc   }

vec2∙vec3: #{   vec2.dot(vec3)   }
vec3×vec2: #{   vec3.cross(vec2).desc   }
|vec3|:    #{   vec3.norm   }

説明してもらう1: #{   Vector.describe   }
説明してもらう2: #{   ExtendedVector.describeFromSub   }

バージョン表示1: #{   Vector::VERSION   }
バージョン表示2: #{   ExtendedVector::VERSION   }

""";
# Rubyのメソッドは obj.method() のようなかっこを付す必要はない。 obj.method で実行できる

print "\r\n\r\n";