#! /usr/bin/env pwsh

# クラス定義1 (Vector)
class Vector {

	hidden static $description = "PowerShell simple vector class"; # クラス変数
		# クラス内で共有される値
		# メソッド内から $this.description でアクセス可能 (継承クラスからは不可)
		# hidden を取り除けば,外部から Vector.description でアクセス可能

	[double]$x=0;[double]$y=0;[double]$z=0; # インスタンス変数
		# 各インスタンス毎に異なる値
		# インスタンスメソッド内のみから $this.x でアクセス可能
		# 外部から $v.x でアクセス可能
		# private を前置すれば,外部からのアクセスは遮断される

	# イニシャライザ/コンストラクタ
	Vector([double]$x,[double]$y,[double]$z) {
		$this.x = $x;
		$this.y = $y;
		$this.z = $z;
		# 戻り値を用意せずとも,インスタンスが返される
	}

	# インスタンスの説明 (インスタンスメソッド)
	[string] desc() {
		return "($($this.x),$($this.y),$($this.z))";
	}

	# 足し算を定義
	# インスタンスメソッド版 (自分自身に足し合わせていく)
	[Vector] add([Vector]$v) { # どうも可変長引数を受け取れないみたい
		$this.x += $v.x;
		$this.y += $v.y;
		$this.z += $v.z;
		return $this;
	}
	# クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
		# クラスメソッドでは static を前置する
	static [Vector] added([Vector]$v1,[Vector]$v2) { # どうも可変長引数を受け取れないみたい
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

$vec1 = [Vector]::new(3,2,1);
$vec2 = [ExtendedVector]::new(6,4,2);
$vec3 = [ExtendedVector]::new(54,63,72);
$vec4 = [Vector]::new(0,0,0);

$vec3.x = 16;

@"

これからクラスを試します

vec1: $(   $vec1   )
vec2: $(   $vec2   )

vec1の説明: $(   $vec1.desc()   )
vec2の説明: $(   $vec2.desc()   )
vec3の説明: $(   $vec3.desc()   )
vec4の説明: $(   $vec4.desc()   )

vec1のx座標: $(   $vec1.x   )
vec2のy座標: $(   $vec2.y   )
vec3のz座標: $(   $vec3.z   )

vec1+vec2+vec3: $(   [Vector]::added([Vector]::added($vec1,$vec2),$vec3).desc()   )
vec4+vec2: $(   $vec4.add($vec2).desc()   )
vec2×12: $(   $vec2.coefMultiplied(12).desc()   )

vec2∙vec3: $(   $vec2.dot($vec3)   )
vec3×vec2: $(   $vec3.cross($vec2).desc()   )
|vec3|:    $(   $vec3.norm()   )

説明してもらう1: $(   [Vector]::describe()   )

"@;

"`r`n";