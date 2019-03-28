#include <iostream>
#include <string>
#include "Header.hpp"

/*
	C++のコンパイル
	find C++ -name *.cpp -a -not -name Main.cpp -exec clang++ -o {}.o -c {} \; ; find C++ -name *.cpp.o -exec clang++ -o C++/Build C++/Main.cpp {} + ; find C++ -name *.cpp.o -exec rm {} +
		1. フォルダ内のMain.cppを除く各々のソースファイルからオブジェクトファイルを生成する
			∵ それぞれのファイルを単独でコンパイルするのだが,Main.cppのコンパイルには,他の全てのファイルが同時に必要なので,Main.cppのコンパイル時に,それ以外の先にコンパイルしておいたファイルをリンクさせる必要があるから。
		2. Main.cppとオブジェクトファイルをリンクさせる
		3. オブジェクトファイルを削除する

	※ これはClangでコンパイルする例。GCCを用いる場合は,適宜 clang++ を g++ に置き換えて使用する。
	これにより,Unix系OSでは実行ファイルが生成され,Windowsでは.exeファイルが生成される。
*/

using namespace std;

int main(){
	string action;
	cout << "こんにちは。私の名前はC++。\r\n";
	while (true) {
		cout << "\r\n\r\n何がしたい?\r\n\r\n";
		cout << "1. 標準入出力を試す\r\n";
		cout << "2. 色々な値を試す\r\n";
		cout << "3. 演算子を試す\r\n";
		cout << "4. 条件分岐を試す\r\n";
		cout << "5. 繰り返しを試す\r\n";
		cout << "6. 正規表現を試す\r\n";
		cout << "9. 数学的演算を試す\r\n";
		cout << "a. 日付と時刻を試す\r\n";
		cout << "\r\n";
		cout << "0. 終了\r\n";
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
		else if (action=="0") break;
		else printf("指定したアクションは見つかりませんでした\r\n\r\n");
	}
	return 0;
}
