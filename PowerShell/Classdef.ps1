# クラス定義1 (Vector)
class Vector {

	# クラス変数
	static [String]$VERSION = "1.0";
		# クラス内で共有される値
		# 書き換え可能
		# メソッド内から $this.VERSION でアクセス可能
		# 継承クラスからはアクセス不可
		# 外部から Vector.VERSION でアクセス可能

	# クラス変数
	hidden static [String]$description = "PowerShell simple vector class";
		# クラス内で共有される値
		# 書き換え可能
		# メソッド内から $this.description でアクセス可能
		# 継承クラスからはアクセス不可
		# 外部からはアクセス不可 (hidden)

	[double]$x=0;[double]$y=0;[double]$z=0;
	# インスタンス変数
		# 各インスタンス毎に異なる値
		# インスタンスメソッド内のみから $this.x でアクセス可能
		# 外部から $v.x でアクセス可能

	# イニシャライザ/コンストラクタ
	Vector([double]$x,[double]$y,[double]$z) {
		$this.x = $x;
		$this.y = $y;
		$this.z = $z;
		# 戻り値を用意せずとも,インスタンスが返される
	}

	# インスタンスの説明
	[string] desc() {
		return "($($this.x),$($this.y),$($this.z))";
	}

	# 足し算を定義

	# インスタンスメソッド版 (自分自身に足し合わせていく)
	[Vector] add([Vector]$v) { # 可変長引数を受け取れないみたい
		$this.x += $v.x;
		$this.y += $v.y;
		$this.z += $v.z;
		return $this;
	}

	# クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
		# クラスメソッドでは static を前置する
	static [Vector] added([Vector]$v1,[Vector]$v2) { # 可変長引数を受け取れないみたい
		$a = [Vector]::new(0,0,0);
		$a.x += $v1.x+$v2.x;
		$a.y += $v1.y+$v2.y;
		$a.z += $v1.z+$v2.z;
		return $a;
	}

	# スカラ倍を定義 (共にインスタンスメソッド)

	# 自分自身を実数倍
	[Vector] coefMultiply($k) {
		$this.x *= $k;
		$this.y *= $k;
		$this.z *= $k;
		return $this;
	}

	# 自分自身の実数倍のVectorを生成
	[Vector] coefMultiplied($k) {
		return [Vector]::new($this.x*$k,$this.y*$k,$this.z*$k);
	}

	# メソッド内で $description を呼ぶ
	static [String] describe() {
		return [Vector]::description;
	}

	# メソッド内で,インスタンス自身/クラス自身は, $this から呼び出す

}

# クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector : Vector { # 継承宣言

	ExtendedVector([double]$x,[double]$y,[double]$z) : base($x,$y,$z) {}
		# base($x,$y,$z) を付加して,親クラスのイニシャライザに初期化を代行させる

	# 内積を定義
	[double] dot([Vector]$v) {
		[double]$p=0;
		$p += $this.x*$v.x;
		$p += $this.y*$v.y;
		$p += $this.z*$v.z;
		return $p;
	}

	# 外積を定義
	[Vector] cross([Vector]$v) {
		return [Vector]::new(
			$this.y*$v.z-$this.z*$v.y,
			$this.z*$v.x-$this.x*$v.z,
			$this.x*$v.y-$this.y*$v.x
		);
	}

	# ノルムを定義
	[double] norm() {
		return [Math]::Sqrt($this.dot($this));
	}

	# 説明できないはず
	static [string] describeFromSub() {
		return [ExtendedVector]::description;
	}

	# プライベートメソッド
		# 外部からアクセスできない
	hidden [Vector] normalize() {
		return $this.coefMultiply(1/$this.norm());
	}

}