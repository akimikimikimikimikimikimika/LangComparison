using namespace std;

#ifndef CLASSDEF
	#define CLASSDEF

// ここではクラスを定義する。クラス内の関数やデータの実装は Classdef.cpp で。

// クラス定義1 (Vector)
class Vector {
	protected:
		const static string description;
			/*
				クラス変数
				クラス内で共有される値 (static)
				メソッド内で description でアクセス可能
				protected: なので,継承クラスからもアクセス可能
				さらに public: にすれば,外部から
					Vector::description
					v.description  (vが実体Vectorの場合)
					v->description (vがポインタVector*の場合)
					でアクセス可能
			*/
	public:
		double x = 0;
		double y = 0;
		double z = 0;
		/*
			インスタンス変数
			各インスタンス毎に異なる値
			インスタンスメソッド内のみから x でアクセス可能
			publicなので,外部から v.x でアクセス可能
		*/
	public: // イニシャライザ/コンストラクタ
		Vector();
		Vector(double X, double Y, double Z);
	public:
		string desc(); // インスタンスの説明

		void add(Vector v);
		template<typename... Vn>
		void add(Vector v1,Vn ...vn) {
			add(v1);
			add(vn...);
		};

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

		void coefMultiply(double k);
		Vector coefMultiplied(double k);

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
class ExtendedVector: public Vector {
	public:
		ExtendedVector();
		ExtendedVector(double X, double Y, double Z);
	public:
		double dot(Vector v); // 内積を定義
		Vector cross(Vector v); // 外積を定義
		double norm(); // ノルムを定義
		static string describeFromSub(); // 説明できるはず
};
#endif