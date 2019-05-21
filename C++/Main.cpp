#include <iostream>
#include <string>
#include "Header.hpp"

/*
	C++のコンパイル
		find C++ -name *.cpp -exec clang++ -std=c++17 -o C++/Build {} +

	※ これはClangでコンパイルする例。GCCを用いる場合は,適宜 clang++ を g++ に置き換えて使用する。
	これにより,Unix系OSでは実行ファイルが生成され,Windowsでは.exeファイルが生成される。
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

		cout << "こんにちは。私の名前はC++。" << "\r\n";
		while (true) {
			cout << "\r\n\r\n" << "何がしたい?" << "\r\n\r\n";
			cout << "1. 標準入出力を試す" << "\r\n";
			cout << "2. 色々な値を試す" << "\r\n";
			cout << "3. 演算子を試す" << "\r\n";
			cout << "4. 条件分岐を試す" << "\r\n";
			cout << "5. 繰り返しを試す" << "\r\n";
			cout << "6. 数学的演算を試す" << "\r\n";
			cout << "9. 正規表現を試す" << "\r\n";
			cout << "a. 日付と時刻を試す" << "\r\n";
			cout << "b. クラスを試す" << "\r\n";
			cout << "d. ファイル操作を試す" << "\r\n";
			cout << "e. ファイルパスを試す" << "\r\n";
			// cout << "g. スレッドを試す" << "\r\n";
			cout << "h. コマンドライン引数を試す" << "\r\n";
			cout << "\r\n";
			cout << "0. 終了" << "\r\n";
			cout << "\r\n";
			cin >> action;
			while(getchar()!='\n');
			cout << "\r\n\r\n\r\n";
			if (action=="1") Stdinout();
			else if (action=="2") Values();
			else if (action=="3") Operators();
			else if (action=="4") Condition();
			else if (action=="5") Loop();
			else if (action=="6") Math();
			else if (action=="9") RegExp();
			else if (action=="a") DateTime();
			else if (action=="b") Class();
			else if (action=="d") FileHandle();
			else if (action=="e") Path();
			// else if (action=="g") Thread();
			else if (action=="h") ArgumentsDemo();
			else if (action=="0") break;
			else cout << "指定したアクションは見つかりませんでした" << "\r\n\r\n";
		}
	}
	else {
		if (argc>2) Arguments(argc,argv);
		else {
			string param(argv[1]);
			if (param=="Stdinout") Stdinout();
			else if (param=="Values") Values();
			else if (param=="Operators") Operators();
			else if (param=="Condition") Condition();
			else if (param=="Loop") Loop();
			else if (param=="Math") Math();
			else if (param=="RegExp") RegExp();
			else if (param=="DateTime") DateTime();
			else if (param=="Class") Class();
			else if (param=="FileHandle") FileHandle();
			else if (param=="Path") Path();
			// else if (param=="Thread") Thread();
			else if (param=="Arguments") ArgumentsDemo();
			else Arguments(argc,argv);
		}
	}
	return 0;
}