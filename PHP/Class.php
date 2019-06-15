#! /usr/bin/env php
<?php

$i = function($v){return $v;};

# クラス定義1 (Vector)
class Vector {

	const version = "1.0"; # クラス定数

	private static $description = "PHP simple vector class"; # クラス変数
		# クラス内で共有される値
		# メソッド内から Vector::description でアクセス可能 (継承クラスからは不可)
		# private を public にすれば,外部から Vector::description でアクセス可能

	public $x=0;public $y=0;public $z=0; # インスタンス変数
		# 各インスタンス毎に異なる値
		# インスタンスメソッド内のみから $this->x でアクセス可能
		# 外部から $v->x でアクセス可能
		# public を private にすれば,外部からのアクセスは遮断される

	# イニシャライザ/コンストラクタ
	public function __construct($x,$y,$z) {
		$this->x = $x;
		$this->y = $y;
		$this->z = $z;
		# 戻り値を用意せずとも,インスタンスが返される
	}

	# インスタンスの説明 (インスタンスメソッド)
	public function desc() {
		return "($this->x,$this->y,$this->z)";
	}

	# 足し算を定義
	# インスタンスメソッド版 (自分自身に足し合わせていく)
	public function add(...$args) {
		foreach ($args as $v) {
			$this->x += $v->x;
			$this->y += $v->y;
			$this->z += $v->z;
		}
		return $this;
	}
	# クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
		# クラスメソッドでは function の前に static を付加する
	public static function added(...$args) {
		$a=new Vector(0,0,0);
		foreach ($args as $v) {
			$a->x += $v->x;
			$a->y += $v->y;
			$a->z += $v->z;
		}
		return $a;
	}

	# スカラ倍を定義 (共にインスタンスメソッド)
	# 自分自身を実数倍
	public function coefMultiply($k) {
		$this->x *= $k;
		$this->y *= $k;
		$this->z *= $k;
		return $this;
	}
	# 自分自身の実数倍のVectorを生成
	public function coefMultiplied($k) {
		return new Vector($this->x*$k,$this->y*$k,$this->z*$k);
	}

	# メソッド内で $description を呼ぶ
	public static function describe() {
		return Vector::$description;
	}

	# メソッド内で,インスタンス自身/クラス自身は, $this から呼び出す

}

# クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector extends Vector { # 継承宣言

	public function __construct($x,$y,$z) {
		$this->x = $x;
		$this->y = $y;
		$this->z = $z;
	}

	# 内積を定義
	public function dot($v) {
		$p=0;
		$p += $this->x*$v->x;
		$p += $this->y*$v->y;
		$p += $this->z*$v->z;
		return $p;
	}

	# 外積を定義
	public function cross($v) {
		return new Vector(
			$this->y*$v->z-$this->z*$v->y,
			$this->z*$v->x-$this->x*$v->z,
			$this->x*$v->y-$this->y*$v->x
		);
	}

	# ノルムを定義
	public function norm() {
		return sqrt($this->dot($this));
	}

	# 説明できないはず
	public static function describeFromSub() {
		return ExtendedVector::$description;
	}

	# プライベートメソッド
		# 外部からアクセスできない
	private function normalize() {
		return $this->coefMultiply(1/$this->norm());
	}

}

$vec1 = new Vector(3,2,1);
$vec2 = new ExtendedVector(6,4,2);
$vec3 = new ExtendedVector(54,63,72);
$vec4 = new Vector(0,0,0);

# 値の設定
$vec3->x = 16;

print <<<"Class"

これからクラスを試します

vec1: {$i(   serialize($vec1)   )}
vec2: {$i(   serialize($vec2)   )}

vec1の説明: {$i(   $vec1->desc()   )}
vec2の説明: {$i(   $vec2->desc()   )}
vec3の説明: {$i(   $vec3->desc()   )}
vec4の説明: {$i(   $vec4->desc()   )}

vec1のx座標: {$i(   $vec1->x   )}
vec2のy座標: {$i(   $vec2->y   )}
vec3のz座標: {$i(   $vec3->z   )}

vec1+vec2+vec3: {$i(   Vector::added($vec1,$vec2,$vec3)->desc()   )}
vec4+vec2: {$i(   $vec4->add($vec2)->desc()   )}
vec2×12: {$i(   $vec2->coefMultiplied(12)->desc()   )}

vec2∙vec3: {$i(   $vec2->dot($vec3)   )}
vec3×vec2: {$i(   $vec3->cross($vec2)->desc()   )}
|vec3|:    {$i(   $vec3->norm()   )}

説明してもらう1: {$i(   Vector::describe()   )}

バージョン表示1: {$i(   Vector::version   )}
バージョン表示2: {$i(   ExtendedVector::version   )}

Class;

print "\r\n\r\n";

?>