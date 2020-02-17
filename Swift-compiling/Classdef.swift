import Foundation

// クラス定義1 (Vector)
class Vector {

	// クラス変数
	public static let VERSION:String = "1.0"
		// クラス内で共有される値
		// 書き換え不可 (let)
		// メソッド内から self.VERSION でアクセス可能
		// 継承クラスからはアクセス不可
		// 外部から Vector.VERSION でアクセス可能

	// クラス変数
	private static let description:String = "Swift simple vector class"
		// クラス内で共有される値
		// 書き換え不可 (let)
		// メソッド内から self.description でアクセス可能
		// 継承クラスからはアクセス不可
		// 外部からはアクセス不可 (private)
		// Swiftでは基本的に書き換えない値は let で宣言すべきである

	var x:Double = 0
	var y:Double = 0
	var z:Double = 0
	// インスタンス変数
		// 各インスタンス毎に異なる値
		// インスタンスメソッド内のみから self.x でアクセス可能
		// 外部から v.x でアクセス可能

	// イニシャライザ/コンストラクタ
	init(_ x:Double, _ y:Double, _ z:Double) {
		self.x = x
		self.y = y
		self.z = z
		// 戻り値を用意せずとも,インスタンスが返される
	}
	init() {
		self.x = 0
		self.y = 0
		self.z = 0
	} // このように,引数形式の異なる複数のイニシャライザを定義できる

	// インスタンスの説明
	func desc() -> String {
		return "(\(Int(self.x)),\(Int(self.y)),\(Int(self.z)))"
	}

	// 足し算を定義

	// インスタンスメソッド版 (自分自身に足し合わせていく)
	func add(_ args:Vector...) -> Vector {
		for v in args {
			self.x += v.x
			self.y += v.y
			self.z += v.z
		}
		return self
	}

	// クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
		// クラスメソッドでは static を前置する
	static func added(_ args:Vector...) -> Vector {
		let a=Vector()
		for v in args {
			a.x += v.x
			a.y += v.y
			a.z += v.z
		}
		return a
	}

	// スカラ倍を定義 (共にインスタンスメソッド)

	// 自分自身を実数倍
	func coefMultiply(_ k:Double) -> Vector {
		self.x *= k
		self.y *= k
		self.z *= k
		return self
	}

	// 自分自身の実数倍のVectorを生成
	func coefMultiplied(_ k:Double) -> Vector {
		return Vector(self.x*k,self.y*k,self.z*k)
	}

	// メソッド内で description を呼ぶ
	static func describe() -> String {
		return self.description
	}

	// メソッド内で,インスタンス自身/クラス自身は, self から呼び出す

}

// クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector: Vector { // 継承宣言

	override init(_ x:Double, _ y:Double, _ z:Double) {
		super.init(x,y,z) // 親クラスのイニシャライザに初期化を代行させる
	}
	// init(Double,Double,Double) の型のイニシャライザは親クラスにも存在するので, override キーワードが必要

	// 内積を定義
	func dot(_ v:Vector) -> Double {
		var p:Double=0
		p += self.x*v.x
		p += self.y*v.y
		p += self.z*v.z
		return p
	}

	// 外積を定義
	func cross(_ v:Vector) -> Vector {
		return Vector(
			self.y*v.z-self.z*v.y,
			self.z*v.x-self.x*v.z,
			self.x*v.y-self.y*v.x
		)
	}

	// ノルムを定義
	func norm() -> Double {
		return sqrt(self.dot(self))
	}

	// 説明できないからコメントアウトで抹消 (残しているとコンパイルエラーになる)
	// static func describeFromSub() -> String {
	//	return self.description
	// }

	// プライベートメソッド (外部からアクセスできない)
	// 単位ベクトルに変換
	private func normalize() -> Vector {
		return self.coefMultiply(1/self.norm())
	}

}