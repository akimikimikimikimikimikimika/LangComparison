#include <iostream>
#include <string> // string,wstring
#include <ratio> // ratio
#include <array> // array
#include <vector> // vector
#include <deque> // deque
#include <list> // list
#include <set> // set
#include <map> // map
#include <tuple> // tuple
#include <utility> //pair
#include <functional> // function

using namespace std;

long cubeFunc(long value) {return value*value*value;}

void Values(){

	// Cと共通のプリミティブな値はここでは扱わない
	// C++特有の標準ライブラリにある値を取り扱う

	// 文字列
	string str="シープラ";

	// ワイド文字列
	wstring wstr=L"シープラ";

	// 有理数
	ratio<3,15> r; // 5分の1
		// 型で値を決めてしまう (コンパイルの時点で値が決定してしまう)

	// 固定長配列,同型
	array<double,3> a = {2.4,3.6,4.8};

	// 可変長配列,同型 (挿入は末尾からしかできない)
	vector<double> v = {2.4,3.6,4.8};

	// 可変長配列,同型 (挿入は先頭と末尾からできる)
	deque<double> d = {2.4,3.6,4.8};

	// 可変長配列,同型 (あらゆる箇所から要素を挿入可能)
	list<double> l = {2.4,3.6,4.8};

	// list 型のイテレータ
	list<double>::iterator li = l.begin(); // 先頭でイテレータを得る
	++li;++li; // 2番目に移動 → *li で2番目の要素を得る
	/*
		list は l[2] のように値を参照することはできない
		イテレータを介して値を得る。
		(vector,dequeもこの方法は使える)
		li+=2; のような移動はできない。あくまでも
		for (auto li=l.begin();li!=l.end();++li) {}
		で1つずつ要素を得る設計である。
	*/

	// 可変長配列,同型 (値に重複がなく大きさ順に並べられる)
	set<double> s = {2.4,3.6,4.8};
		// multiset は重複が認められる

	// set 型のイテレータ
	set<double>::iterator si = s.begin();
	++si;++si;

	// 連想配列
	pair<string,double> ma[] = {
		make_pair("a",2.4),
		make_pair("b",3.6),
		make_pair("c",4.8)
	}; // key:string value:double
	map<string,double> m(ma,ma+3);

	// 固定長,複数の型
	tuple<int,string,double,bool> t = {1,"second",3.14,false};
	tuple<int,string,double,bool> t2(1,"second",3.14,false);

	// 2つの値の組
	pair<string,double> p = make_pair("first",3.14);

	// ラムダ (無名関数)
	auto func=[](int value) -> int {return value*value;};
	function<int(int)> func2 = func;

	// 関数ポインタ
	long (*cube1)(long) = cubeFunc;
	function<long(long)> cube2 = cubeFunc;

		/* function型はラムダ式にも関数にも利用できる */

	cout <<
		"色々な値を試します" << endl <<
		endl <<
		"string:" << str << endl <<
		"   大きさ:" << str.length() << endl <<
		"wstring:";

	wcout.imbue(locale(""));
	wcout << wstr << endl;
		/*
			wstring を出力するには wcout を使う
			その時,ワイド文字列中の日本語などを表示するにはロケール設定が必要
		*/

	cout <<
		"   大きさ:" << wstr.length() << endl <<

		endl <<
		"ratio: " << &r << endl <<
		"   分子: " << r.num << endl <<
		"   分母: " << r.den << endl <<

		endl <<
		"array: " << &a << endl <<
		"   2番目: " << a[2] << endl <<
		"   大きさ:" << a.size() << endl <<
		"   sizeof:" << sizeof(a) << endl <<

		endl <<
		"vector: " << &v << endl <<
		"   2番目: " << v[2] << endl <<
		"   大きさ:" << v.size() << endl <<
		"   sizeof:" << sizeof(v) << endl <<

		endl <<
		"deque: " << &d << endl <<
		"   2番目: " << d[2] << endl <<
		"   大きさ:" << d.size() << endl <<
		"   sizeof:" << sizeof(d) << endl <<

		endl <<
		"list: " << &l << endl <<
		"   2番目: " << *li << endl <<
		"   大きさ:" << l.size() << endl <<
		"   sizeof:" << sizeof(l) << endl <<

		endl <<
		"set: " << &s << endl <<
		"   2番目: " << *si << endl <<
		"   大きさ:" << s.size() << endl <<
		"   sizeof:" << sizeof(s) << endl <<

		endl <<
		"map: " << &m << endl <<
		"       b= " << m["b"] << endl <<
		"   大きさ:" << m.size() << endl <<
		"   sizeof:" << sizeof(m) << endl <<

		endl <<
		"tuple: " << &t << endl <<
		"   2番目: " << get<2>(t) << endl <<

		endl <<
		"pair: " << &p << endl <<
		"   2番目: " << p.second << endl <<
			// pair型は p.first / p.second で呼び出す

		endl <<
		"ラムダ式: " << cube1 << endl <<
		"   function:" << &cube1 << endl <<
		"関数ポインタ: " << cube1 << endl <<
		"   function:" << &cube2 << endl;

	cout << endl << endl;

}
/*
	ラムダ式について
	• 実体
		C++の特徴である,演算子のオーバーロードを活かした構文である
		次のように演算子 () を実装したものに過ぎない
			struct {
				int operator()(int value) {}
			} func;
		つまり,各々のラムダ式は同型の引数,戻り値であっても全く異なる型になることに注意
	• キャプチャ
		[] 内にはキャプチャする変数を指定する
		例えば, [str]() {} とすれば,このラムダ式を宣言した時点でのラムダ式外部の変数 str をラムダ式内部に取り込むことができる。宣言後にこの変数がラムダ式の外で書き換えられてもラムダ式内部の値は影響を受けない。
*/