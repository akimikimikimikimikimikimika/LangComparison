#include <iostream>
#include <string>
#include "Header.hpp"

using namespace std;

// C++

/*
	コンパイル       make cpp-build
	実行            make cpp-run
	実行ファイルの削除 make cpp-clean
	clean+build    make cpp-retry
	コンパイラの表示  make cpp-cmd

	Makefileを利用してコンパイルを実行する。
	コンパイラにはClangが使用される。
	-e CPP=[コンパイラ] で別のコンパイルコマンドを指定できる。
*/

int main(int argc, char *argv[]){
	/*
		コマンドライン引数のデータ
		argc : 引数の数
		argv : 引数配列
	*/

	/*
		コマンドライン引数によってアクションを変化させる
		引数なし → メニューを表示
		各項目名 → 指定した項目を実行
		それ以外 → Argumentsで表示
	*/
	if (argc==1) {
		string action;

		cout << "こんにちは。私の名前はC++。" << endl;
		while (true) {
			cout <<
				endl <<
				endl <<
				"何がしたい?" << endl <<
				endl <<
				"1. 標準入出力を試す" << endl <<
				"2. 色々な値を試す" << endl <<
				"3. 演算子を試す" << endl <<
				"4. 条件分岐を試す" << endl <<
				"5. 繰り返しを試す" << endl <<
				"6. 数学的演算を試す" << endl <<
				"8. 文字列フォーマットを試す" << endl <<
				"9. 正規表現を試す" << endl <<
				"a. 日付と時刻を試す" << endl <<
				"b. クラスを試す" << endl <<
				"d. ファイル操作を試す" << endl <<
				"e. ファイルパスを試す" << endl <<
				"g. スレッドを試す" << endl <<
				"h. コマンドライン引数を試す" << endl <<
				endl <<
				"0. 終了" << endl <<
				endl;

			cin >> action;
			while(getchar()!='\n');
			cout << endl << endl << endl;

			if (action=="1") Stdio();
			else if (action=="2") Values();
			else if (action=="3") Operators();
			else if (action=="4") Condition();
			else if (action=="5") Repeat();
			else if (action=="6") Calc();
			else if (action=="8") Format();
			else if (action=="9") RegEx();
			else if (action=="a") DateTime();
			else if (action=="b") Classes();
			else if (action=="d") Files();
			else if (action=="e") Path();
			else if (action=="g") Threads();
			else if (action=="h") ArgumentsDemo();
			else if (action=="0") break;
			else cout <<
				"指定したアクションは見つかりませんでした" <<
				endl <<
				endl;
		}
	}
	else if (argc==2) {
		string param(argv[1]);
		if (param=="Stdio") Stdio();
		else if (param=="Values") Values();
		else if (param=="Operators") Operators();
		else if (param=="Condition") Condition();
		else if (param=="Repeat") Repeat();
		else if (param=="Calc") Calc();
		else if (param=="Format") Format();
		else if (param=="RegEx") RegEx();
		else if (param=="DateTime") DateTime();
		else if (param=="Classes") Classes();
		else if (param=="Files") Files();
		else if (param=="Path") Path();
		else if (param=="Threads") Threads();
		else if (param=="Arguments") ArgumentsDemo();
		else Arguments(argc,argv);
	}
	else Arguments(argc,argv);

	return 0;
}