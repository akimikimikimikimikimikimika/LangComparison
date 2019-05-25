
import Foundation

// クラス定義1 (Vector)
class Vector {

	private static let description:String = "Swift simple vector class" // クラス変数
		// クラス内で共有される値
		// メソッド内から self.description でアクセス可能 (継承クラスからはアクセス不可)
		// private を取り除けば,外部から Vector.description でアクセス可能

	var x:Double = 0
	var y:Double = 0
	var z:Double = 0
	// インスタンス変数
	// 各インスタンス毎に異なる値
	// インスタンスメソッド内のみから self.x でアクセス可能
	// 外部から v.x でアクセス可能
	// private を付加すれば,外部からのアクセスは遮断される

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

	// インスタンスの説明 (インスタンスメソッド)
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

	static func describe() -> String {
		return self.description
	}

}

// クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector: Vector { // 継承宣言

	override init(_ x:Double, _ y:Double, _ z:Double) {
		super.init(x,y,z) // 親クラスのイニシャライザに初期化を代行させる
	}
	// 親クラスにも存在するタイプのイニシャライザを定義するのであれば, override キーワードが要る

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

	// 説明できないからコメントアウトで抹消
	// static func describeFromSub() -> String {
	//	return self.description
	// }

	// プライベートメソッド
		// 外部からアクセスできない
	private func normalize() -> Vector {
		return self.coefMultiply(1/self.norm())
	}

}

func Class() {

	let vec1 = Vector(3,2,1)
	let vec2 = ExtendedVector(6,4,2)
	let vec3 = ExtendedVector(54,63,72)
	let vec4 = Vector()

	// 値の設定
	vec3.x = 16

	print("""

	これからクラスを試します

	vec1: \(   vec1   )
	vec2: \(   vec2   )

	vec1の説明: \(   vec1.desc()   )
	vec2の説明: \(   vec2.desc()   )
	vec3の説明: \(   vec3.desc()   )
	vec4の説明: \(   vec4.desc()   )

	vec1のx座標: \(   vec1.x   )
	vec2のy座標: \(   vec2.y   )
	vec3のz座標: \(   vec3.z   )

	vec1+vec2+vec3: \(   Vector.added(vec1,vec2,vec3).desc()   )
	vec4+vec2: \(   vec4.add(vec2).desc()   )
	vec2×12: \(   vec2.coefMultiplied(12).desc()   )

	vec2∙vec3: \(   vec2.dot(vec3)   )
	vec3×vec2: \(   vec3.cross(vec2).desc()   )
	|vec3|:    \(   vec3.norm()   )

	説明してもらう1: \(   Vector.describe()   )

	""")

	print("\r\n")

}