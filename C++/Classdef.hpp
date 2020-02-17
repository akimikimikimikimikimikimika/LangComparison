using namespace std;

#ifndef CLASSDEF
	#define CLASSDEF

// ここではクラスを定義する。クラス内の関数やデータの実装は Classdef.cpp で。

// クラス定義1 (Vector)
class Vector {

	public:
		// クラス変数
		const static string VERSION;
			/*
				クラス内で共有される値 (static)
				書き換え不可 (const)
				メソッド内から VERSION でアクセス可能
				継承クラスからアクセス可能
				外部から
					Vector::VERSION
					v.VERSION  (vが実体Vectorの場合)
					v->VERSION (vがポインタVector*の場合)
					でアクセス可能
			*/

	protected:
		// クラス変数
		static string description;
			/*
				クラス内で共有される値 (static)
				書き換え可能
				メソッド内から description でアクセス可能
				継承クラスからアクセス可能 (protected:)
				外部からはアクセス不可 (protected:)
			*/

	public:
		// インスタンス変数
		double x = 0;
		double y = 0;
		double z = 0;
		/*
			各インスタンス毎に異なる値
			Vector::でアクセスしたら0になる
			インスタンスメソッド内のみから x でアクセス可能
			publicなので,外部から v.x でアクセス可能
		*/

	public:

		// イニシャライザ/コンストラクタ
		Vector();
		Vector(double X, double Y, double Z);

		// インスタンスの説明
		string desc();

		// 足し算を定義

		// インスタンスメソッド版 (自分自身に足し合わせていく)
		void add(Vector v);
		template<typename... Vn>
		void add(Vector v1,Vn ...vn) {
			add(v1);
			add(vn...);
		};
			/*
				可変引数の add
				任意の個数のVectorを受け付ける。
				n個のVectorは Vector::add(Vector v1,Vn ...vn) に当てはめられ,型 Vn はn-1個のVectorの列になる。
				add(v1) で Vector::add(Vector v) が実行される。
				add(vn...) でn-1個のVectorである vn が展開されて Vector::add(Vector v1,Vn ...vn) が実行される。すると,Vnはn-2個のVectorの列になる。
				Vnが1個のVectorになると add(vn...) で Vector::add(Vector v) が実行される。
				これを繰り返して,1つずづVectorを処理する。
			*/

		// クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
			// クラスメソッドでは static を前置する
		static Vector added(Vector v1, Vector v2);
		template<typename... Vn>
		static Vector added(Vector v1, Vector v2, Vn ...vn) {
			return added(v1,added(v2,vn...));
		};
			/*
				addやaddedにおいて,
					void add(Vector v1,Vn ...vn);
					static Vector added(Vector v1, Vn ...vn);
				といった宣言だけで終わらせるのはよくない。なぜなら,これはテンプレートを含んでおり具体的な関数形がなく抽象的なので,.hppの宣言と.cppの実装を分けると.cppをコンパイルした時点ではオブジェクトファイルには実体がなく,リンクできないからである。
				リンカでは,要求に応じてオブジェクトファイルの中から具体的な Vector added(Vector,Vector...) を探すのだが,見つからないのでリンクに失敗する。
				具体的に Vector added(Vector,Vector,Vector) などと実装すると使えるのだが,それだと可変個引数に対応できない。よって,ヘッダファイルで宣言するしかない。
			*/

		// スカラ倍を定義 (共にインスタンスメソッド)

		// 自分自身を実数倍
		void coefMultiply(double k);

		// 自分自身の実数倍のVectorを生成
		Vector coefMultiplied(double k);

		// クラス変数 description を返す
		static string describe();

};
	/*
		public:
			このキーワード以後に書かれた関数やデータは,外部からアクセス可能
		private:
			このキーワード以後に書かれた関数やデータは,このクラス内でのみアクセス可能
		protected:
			このキーワード以後に書かれた関数やデータは,このクラスと,継承したクラス内でのみアクセス可能
	*/

// クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector: public Vector { // 継承宣言
	public:
		ExtendedVector();
		ExtendedVector(double X, double Y, double Z);
	public:
		// 内積を定義
		double dot(Vector v);
		// 外積を定義
		Vector cross(Vector v);
		// ノルムを定義
		double norm();
		// 説明できるはず
		static string describeFromSub();
	private:
		// プライベートメソッド (外部からアクセスできない)
		// 単位ベクトルに変換
		void normalize();
};

#endif