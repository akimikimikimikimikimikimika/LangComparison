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
	if (argc>1) Arguments(argc,argv);
	else {
		string action;

		char *demo[] = {"","このプログラムを直接実行してみよう。","ここにあるよ: C++/Build","","コマンドラインに以下のように入力して実行します","","C++/Build 引数1 引数2…","","すると,引数1,引数2…が順に出力されます"};

		cout << "こんにちは。私の名前はC++。" << "\r\n";
		while (true) {
			cout << "\r\n\r\n" << "何がしたい?" << "\r\n\r\n";
			cout << "1. 標準入出力を試す" << "\r\n";
			cout << "2. 色々な値を試す" << "\r\n";
			cout << "3. 演算子を試す" << "\r\n";
			cout << "4. 条件分岐を試す" << "\r\n";
			cout << "5. 繰り返しを試す" << "\r\n";
			cout << "6. 正規表現を試す" << "\r\n";
			cout << "9. 数学的演算を試す" << "\r\n";
			cout << "a. 日付と時刻を試す" << "\r\n";
			cout << "d. クラスを試す" << "\r\n";
			cout << "f. コマンドライン引数を試す" << "\r\n";
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
			else if (action=="6") RegExp();
			else if (action=="9") Math();
			else if (action=="a") DateTime();
			else if (action=="d") Class();
			else if (action=="f") Arguments(9,demo);
			else if (action=="0") break;
			else cout << "指定したアクションは見つかりませんでした" << "\r\n\r\n";
		}
	}
	return 0;
}