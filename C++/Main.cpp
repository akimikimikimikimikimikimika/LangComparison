#include <iostream>
#include <string>
#include "Header.hpp"

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

using namespace std;

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
			cout <<
				endl <<
				endl <<
				endl;
			if (action=="1") Stdinout();
			else if (action=="2") Values();
			else if (action=="3") Operators();
			else if (action=="4") Condition();
			else if (action=="5") Loop();
			else if (action=="6") Math();
			else if (action=="8") Sprintf();
			else if (action=="9") RegExp();
			else if (action=="a") DateTime();
			else if (action=="b") Class();
			else if (action=="d") FileHandle();
			else if (action=="e") Path();
			else if (action=="g") Thread();
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
		if (param=="Stdinout") Stdinout();
		else if (param=="Values") Values();
		else if (param=="Operators") Operators();
		else if (param=="Condition") Condition();
		else if (param=="Loop") Loop();
		else if (param=="Math") Math();
		else if (param=="Sprintf") Sprintf();
		else if (param=="RegExp") RegExp();
		else if (param=="DateTime") DateTime();
		else if (param=="Class") Class();
		else if (param=="File") FileHandle();
		else if (param=="Path") Path();
		else if (param=="Thread") Thread();
		else if (param=="Arguments") ArgumentsDemo();
		else Arguments(argc,argv);
	}
	else Arguments(argc,argv);

	return 0;
}