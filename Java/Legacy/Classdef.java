public class Classdef {

	/*
		Javaのクラスは基本的に1ファイル1クラスが原則で,ファイル名とクラス名は合わせなければならない。
		だが,以下のように,クラスの中にクラスを定義することもでき,この場合,クラス自体をprivateにすることができる。
	*/

	// クラス定義1 (Vector)
	public static class Vector {

		// クラス変数
		public static String VERSION = "1.0";
			// クラス内で共有される値
			// 書き換え可能
			// メソッド内で Vector.VERSION でアクセス可能
			// 継承クラスからアクセス可能
			// 外部から Vector.VERSION でアクセス可能

		// クラス変数
		private static String description = "Java simple vector class";
			// クラス内で共有される値
			// 書き換え可能
			// メソッド内で Vector.description でアクセス可能
			// 継承クラスからアクセス可能
			// 外部からはアクセス不可 (private)

		public double x = 0;
		public double y = 0;
		public double z = 0;
		// インスタンス変数
			// 各インスタンス毎に異なる値
			// インスタンスメソッド内のみから this.x でアクセス可能
			// 外部から v.x でアクセス可能

		// イニシャライザ/コンストラクタ
		Vector(double x, double y, double z) {
			this.x = x;
			this.y = y;
			this.z = z;
			// 戻り値を用意せずとも,インスタンスが返される
		}

		Vector() {} // このように,引数の異なる複数のイニシャライザを用意できる

		// インスタンスの説明
		public String desc() {
			return "("+(int)this.x+","+(int)this.y+","+(int)this.z+")";
		}

		// 足し算を定義

		// インスタンスメソッド版 (自分自身に足し合わせていく)
		public Vector add(Vector ...args) {
			for (Vector v:args) {
				this.x += v.x;
				this.y += v.y;
				this.z += v.z;
			}
			return this;
		}

		// クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
			// クラスメソッドでは static を前置する
			// クラスメソッドを定義するには,クラス自体がstaticでなければならない
		public static Vector added(Vector ...args) {
			Vector a = new Vector();
			for (Vector v:args) {
				a.x += v.x;
				a.y += v.y;
				a.z += v.z;
			}
			return a;
		}
		/*
			Javaでは, added(Vector ...args) のように可変個引数のメソッドがあった場合,可変個引数として added(arg1,arg2,arg3) などと渡すことも可能だし, added(array) のように Vector[] 型の配列を渡すこともできる。
		*/

		// スカラ倍を定義 (共にインスタンスメソッド)

		// 自分自身を実数倍
		public Vector coefMultiply(double k) {
			this.x *= k;
			this.y *= k;
			this.z *= k;
			return this;
		}

		// 自分自身の実数倍のVectorを生成
		public Vector coefMultiplied(double k) {
			return new Vector(this.x*k,this.y*k,this.z*k);
		}

		// メソッド内で description を呼ぶ
		public static String describe() {
			return Vector.description;
		}

		// メソッド内で,インスタンス自身は, this から呼び出す
		// クラス自身は,クラス名で呼び出す

	}

	// クラス定義2 (ExtendedVector inherits from Vector)
	public static class ExtendedVector extends Vector { // 継承宣言

		ExtendedVector(double x, double y, double z) {
			super(x,y,z); // 親クラスのイニシャライザに初期化を代行させる
		}

		// 内積を定義
		public double dot(Vector v) {
			double p=0;
			p += this.x*v.x;
			p += this.y*v.y;
			p += this.z*v.z;
			return p;
		}

		// 外積を定義
		public Vector cross(Vector v) {
			return new Vector(
				this.y*v.z-this.z*v.y,
				this.z*v.x-this.x*v.z,
				this.x*v.y-this.y*v.x
			);
		}

		// ノルムを定義
		public double norm() {
			return Math.sqrt(this.dot(this));
		}

		// 説明できるはず
		public static String describeFromSub() {
			return Vector.description;
			// ExtendedVector.description ではアクセスできない
			// あくまで変数を宣言したクラスで指定しなければならない
		}

		// プライベートメソッド (外部からアクセスできない)
		// 単位ベクトルに変換
		private void normalize() {
			this.coefMultiply(1/this.norm());
		}

	}

}