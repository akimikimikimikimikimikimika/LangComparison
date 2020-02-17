// クラス定義1 (Vector)
class Vector {

	// クラス変数
	static VERSION = "1.0";
		// クラス内で共有される値
		// 書き換え可能
		// メソッド内から this.VERSION でアクセス可能
		// 継承クラスからはアクセス可能
		// 外部から Vector.version でアクセス可能

	// クラス変数
	static description = "JavaScript simple vector class";
		// クラス内で共有される値
		// 書き換え可能
		// メソッド内から this.description でアクセス可能
		// 継承クラスからはアクセス可能
		// #descriptionにすれば外部からはアクセス不可
		// 非対応の環境がまだ多いようなので今のところは隠しておく

	// イニシャライザ/コンストラクタ
	constructor(x,y,z) {
		this.x = x;
		this.y = y;
		this.z = z;
		// インスタンス変数
			// 各インスタンス毎に異なる値
			// インスタンスメソッド内のみから this.x でアクセス可能
			// 外部からは v.x でアクセス可能
	}

	// インスタンスの説明
	desc() {
		return `(${this.x},${this.y},${this.z})`;
	}

	// 足し算を定義

	// インスタンスメソッド版 (自分自身に足し合わせていく)
	add(...args) {
		args.forEach(v=>{
			this.x += v.x;
			this.y += v.y;
			this.z += v.z;
		});
		return this;
	}

	// クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
		// クラスメソッドでは static を前置する
	static added(...args) {
		let a = new Vector(0,0,0);
		args.forEach(v=>{
			a.x += v.x;
			a.y += v.y;
			a.z += v.z;
		});
		return a;
	}

	// スカラ倍を定義 (共にインスタンスメソッド)

	// 自分自身を実数倍
	coefMultiply(k) {
		this.x *= k;
		this.y *= k;
		this.z *= k;
		return this;
	}

	// 自分自身の実数倍のVectorを生成
	coefMultiplied(k) {
		return new Vector(this.x*k,this.y*k,this.z*k);
	}

	// メソッド内で description を呼ぶ
	static describe() {
		return this.description
	}

	// ゲッター/セッター
	get abs() {
		return Math.hypot(this.x,this.y,this.z);
	}
	set abs(val) {
		let c=this.abs;
		this.coefMultiply(val/c);
	}

	// メソッド内で,インスタンス自身/クラス自身は, this から呼び出す

}

// クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector extends Vector { // 継承宣言

	constructor(x,y,z) {
		super(x,y,z); // 親クラスのイニシャライザに初期化を代行させる
	}
	// この場合は,このイニシャライザを省略してもよい。省略しても親クラスのイニシャライザで子クラスのオブジェクトが作成できる。

	// 内積を定義
	dot(v) {
		var p=0;
		p += this.x*v.x;
		p += this.y*v.y;
		p += this.z*v.z;
		return p;
	}

	// 外積を定義
	cross(v) {
		return new Vector(
			this.y*v.z-this.z*v.y,
			this.z*v.x-this.x*v.z,
			this.x*v.y-this.y*v.x
		);
	}

	// ノルムを定義
	norm() {
		return Math.sqrt(this.dot(this));
	}

	// 説明できるはず
	static describeFromSub() {
		return this.description
	}

	// プライベートメソッドはない

}

// クラスを外部に出力する。
exports.Vector = Vector;
exports.ExtendedVector = ExtendedVector;