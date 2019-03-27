
import java.io.*;
public class Class {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	/*
		Javaのクラスは基本的に1ファイル1クラスが原則で,ファイル名とクラス名は合わせなければならない。
		だが,以下のように,クラスの中にクラスを定義することもでき,この場合,クラス自体をprivateにすることができる。
	*/

	// クラス定義1 (Vector)
	private static class Vector {

		private String description = "Java simple vector class"; // クラス変数
			// クラス内で共有される値
			// メソッド内で this.description でアクセス可能 (継承クラスからもアクセス可能)
			// private を public にすれば,外部からはアクセスできる

		public double x = 0;
		public double y = 0;
		public double z = 0;
		// インスタンス変数
			// 各インスタンス毎に異なる値
			// インスタンスメソッド内のみから this.x でアクセス可能
			// publicにしている限り v.x でアクセス可能だが, private にするとアクセス不可

		// イニシャライザ/コンストラクタ
		Vector(double x, double y, double z) {
			this.x = x;
			this.y = y;
			this.z = z;
		}

		Vector() {} // このように,引数の異なる複数のイニシャライザを用意できる

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

	}

	// クラス定義2 (ExtendedVector inherits from Vector)
	private static class ExtendedVector extends Vector { // 継承宣言

		ExtendedVector(double x, double y, double z) {
			super(x,y,z); // 親クラスのイニシャライザに初期化を代行させる
		}

		// 内積を定義
		public double inner(Vector v) {
			double p=0;
			p += this.x*v.x;
			p += this.y*v.y;
			p += this.z*v.z;
			return p;
		}

		// 外積を定義
		public Vector outer(Vector v) {
			return new Vector(
				this.y*v.z-this.z*v.y,
				this.z*v.x-this.x*v.z,
				this.x*v.y-this.y*v.x
			);
		}

		// ノルムを定義
		public double norm() {
			return Math.sqrt(this.inner(this));
		}

		// プライベートメソッド
		private void normalize() {
			this.coefMultiply(1/this.norm());
		}

	}

	public static void main(String[] args) throws IOException{

		Vector vec1 = new Vector(3,2,1);
		ExtendedVector vec2 = new ExtendedVector(6,4,2);
		ExtendedVector vec3 = new ExtendedVector(54,63,72);
		Vector vec4 = new Vector(0,0,0);

		// 値の設定
		vec3.x = 16;

		println("\r\nこれからクラスを試します\r\n");
		println("vec1: "+(   vec1   ));
		println("vec2: "+(   vec2   ));
		println(" ");
		println("vec1の説明: "+(   vec1.desc()   ));
		println("vec2の説明: "+(   vec2.desc()   ));
		println("vec3の説明: "+(   vec3.desc()   ));
		println("vec4の説明: "+(   vec4.desc()   ));
		println(" ");
		println("vec1のx座標: "+(   vec1.x   ));
		println("vec2のy座標: "+(   vec2.y   ));
		println("vec3のz座標: "+(   vec3.z   ));
		println(" ");
		println("vec1+vec2+vec3: "+(   Vector.added(vec1,vec2,vec3).desc()   ));
		println("vec4+vec2: "+(   vec4.add(vec2).desc()   ));
		println("vec2×12: "+(   vec2.coefMultiplied(12).desc()   ));
		println(" ");
		println("vec2∙vec3: "+(   vec2.inner(vec3)   ));
		println("vec3×vec2: "+(   vec3.outer(vec2).desc()   ));
		println("|vec3|:    "+(   vec3.norm()   ));

		println("\r\n");

	}

}