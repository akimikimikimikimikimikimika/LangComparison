<?php

# クラス定義1 (Vector)
class Vector {

	# クラス変数
	public const VERSION = "1.0";
		# クラス内で共有される値
		# 書き換え不可 (const)
		# メソッド内から VERSION でアクセス可能
		# 継承クラスからはアクセス不可
		# 外部から Vector::description でアクセス可能

	# クラス変数
	private static $description = "PHP simple vector class";
		# クラス内で共有される値
		# 書き換え可能
		# メソッド内から Vector::description でアクセス可能
		# 継承クラスからはアクセス不可
		# 外部からはアクセス不可 (private)

	# インスタンス変数
	public $x=0;public $y=0;public $z=0;
		# 各インスタンス毎に異なる値
		# インスタンスメソッド内のみから $this->x でアクセス可能
		# 外部から $v->x でアクセス可能

	# イニシャライザ/コンストラクタ
	public function __construct($x,$y,$z) {
		$this->x = $x;
		$this->y = $y;
		$this->z = $z;
		# 戻り値を用意せずとも,インスタンスが返される
	}

	# インスタンスの説明
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

	# 説明できないはず (実行するとエラーになる)
	public static function describeFromSub() {
		return ExtendedVector::$description;
	}

	# プライベートメソッド (外部からアクセスできない)
	# 単位ベクトルに変換
	private function normalize() {
		return $this->coefMultiply(1/$this->norm());
	}

}

?>