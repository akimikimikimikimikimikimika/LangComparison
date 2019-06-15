#! /usr/bin/env perl

# クラス定義1 (Vector)
	# でも実態はパッケージそのもの
{
	package Vector;

	use constant version => "1.0"; # クラス定数

	my $description = "Perl simple vector class"; # クラス変数
		# クラス内で共有される値
		# メソッド内から $description でアクセス可能 (継承クラスからは不可)
		# my を取り除けば,外部から $Vector::description でアクセス可能

	# イニシャライザ/コンストラクタ (名前のnewは任意)
	sub new {
		my $vector = {x=>0,y=>0,z=>0}; # インスタンス変数
			# 各インスタンス毎に異なる値
			# $v->{x} でアクセス可能
			# メソッド内から $self->{x} でアクセス可能
		my $class = shift;

		if ($#_ >= 0) {$vector->{x} = shift;}
		if ($#_ >= 0) {$vector->{y} = shift;}
		if ($#_ >= 0) {$vector->{z} = shift;}

		bless $vector,$class; # クラスと関連付ける
		return $vector; # 戻り値を用意しないと,インスタンスが得られない

	}

	# インスタンスの説明 (インスタンスメソッド)
	sub desc {
		my $self = shift;
		return "(@{[$self->{x}]},@{[$self->{y}]},@{[$self->{z}]})";
	}

	# 足し算を定義
	# インスタンスメソッド版 (自分自身に足し合わせていく)
	sub add {
		my $self = shift; # shiftにより,引数配列の最初の1つを配列から抜き出す
		foreach $v (@_) {
			$self->{x} += $v->{x};
			$self->{y} += $v->{y};
			$self->{z} += $v->{z};
		}
		return $self;
	}
	# クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
	sub added {
		shift;
		my $a = new Vector();
		foreach $v (@_) {
			$a->{x} += $v->{x};
			$a->{y} += $v->{y};
			$a->{z} += $v->{z};
		}
		return $a;
	}

	# スカラ倍を定義 (共にインスタンスメソッド)
	# 自分自身を実数倍
	sub coefMultiply {
		my $self = shift;
		if ($#_ >= 0) {
			my $coef = shift;
			$self->{x} *= $coef;
			$self->{y} *= $coef;
			$self->{z} *= $coef;
		}
		return $self;
	}
	# 自分自身の実数倍のVectorを生成
	sub coefMultiplied {
		my $self = shift;
		my $v = new Vector($self->{x},$self->{y},$self->{z});
		if ($#_ >= 0) {
			my $coef = shift;
			$v->{x} *= $coef;
			$v->{y} *= $coef;
			$v->{z} *= $coef;
		}
		return $v;
	}

	# メソッド内で $description を呼ぶ
	sub describe {
		return $description;
	}

	# メソッド内で,インスタンス自身/クラス自身は, 引数の0番目 から呼び出す

	# メソッドの呼び出し方
	# 	Vector->method(arg1,arg2...)
	# 	$v->method(arg1,arg2...)
	# メソッドの引数
	# 	(クラス/インスタンス,引数1,引数2...)
	# Perlはクラスメソッド,インスタンスメソッドの区別がない

}

# クラス定義2 (ExtendedVector inherits from Vector)
{
	package ExtendedVector;
	@ISA = qw(Vector); # 継承宣言

	sub new {
		my $vector = new Vector(); # Vectorオブジェクト生成
		my $class = shift;

		if ($#_ >= 0) {$vector->{x} = shift;}
		if ($#_ >= 0) {$vector->{y} = shift;}
		if ($#_ >= 0) {$vector->{z} = shift;}

		bless $vector,$class; # クラスと関連付ける
		return $vector;
	}

	# 内積を定義
	sub dot {
		my $self = shift;
		if ($#_ >= 0) {
			my $v = shift;
			my $p = 0;
			$p += $self->{x}*$v->{x};
			$p += $self->{y}*$v->{y};
			$p += $self->{z}*$v->{z};
			return $p;
		}
	}

	# 外積を定義
	sub cross {
		my $self = shift;
		if ($#_ >= 0) {
			my $v = shift;
			return new Vector(
				$self->{y}*$v->{z}-$self->{z}*$v->{y},
				$self->{z}*$v->{x}-$self->{x}*$v->{z},
				$self->{x}*$v->{y}-$self->{y}*$v->{x}
			);
		}
	}

	# ノルムを定義
	sub norm {
		my $self = shift;
		return sqrt($self->dot($self));
	}

	# 説明できないはず
	sub describeFromSub {
		return $description;
	}

	# プライベートメソッド
	my $normailze = sub {
		my $self = shift;
		$self->coefMultiply(1/($self->norm));
		return $self;
	}

}

my $vec1 = new Vector(3,2,1);
my $vec2 = new ExtendedVector(6,4,2);
my $vec3 = new ExtendedVector(54,63,72);
my $vec4 = new Vector();

# 値の設定
$vec3->{x} = 16;

print <<"Class";

これからクラスを試します

vec1: @{[   $vec1   ]}
vec2: @{[   $vec2   ]}

vec1の説明: @{[   $vec1->desc   ]}
vec2の説明: @{[   $vec2->desc   ]}
vec3の説明: @{[   $vec3->desc   ]}
vec4の説明: @{[   $vec4->desc   ]}

vec1のx座標: @{[   $vec1->{x}   ]}
vec2のy座標: @{[   $vec2->{y}   ]}
vec3のz座標: @{[   $vec3->{z}   ]}

vec1+vec2+vec3: @{[   Vector->added($vec1,$vec2,$vec3)->desc   ]}
vec4+vec2: @{[   $vec4->add($vec2)->desc   ]}
vec2×12: @{[   $vec2->coefMultiplied(12)->desc   ]}

vec2∙vec3: @{[   $vec2->dot($vec3)   ]}
vec3×vec2: @{[   $vec3->cross($vec2)->desc   ]}
|vec3|:    @{[   $vec3->norm   ]}

説明してもらう1: @{[   Vector->describe   ]}
説明してもらう2: @{[   $vec1->describe   ]}

バージョン表示1: @{[   Vector->version   ]}
バージョン表示2: @{[   ExtendedVector->version   ]}

Class
# Perlのメソッドは $obj->method() のようなかっこを付す必要はない。 $obj->method で実行できる

print "\r\n\r\n";