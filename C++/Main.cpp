#include <iostream>
#include <string>
#include "Header.hpp"

/*
	C++のコンパイル
	clang++ -o Stdinout.o -c Stdinout.cpp ; clang++ -o Values.o -c Values.cpp ; clang++ -o Operators.o -c Operators.cpp ; clang++ -o Condition.o -c Condition.cpp ; clang++ -o Loop.o -c Loop.cpp ; clang++ -o RegExp.o -c RegExp.cpp ; clang++ -o Build Main.cpp Stdinout.o Values.o Operators.o Condition.o Loop.o RegExp.o ; rm Stdinout.o Values.o Operators.o Condition.o Loop.o RegExp.o

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
		cout << "\r\n";
		cout << "0. 終了\r\n";
		cout << "\r\n";
		cin >> action;
		while(getchar()!='\r\n');
		cout << "\r\n\r\n\r\n";
		if (action=="1") Stdinout();
		else if (action=="2") Values();
		else if (action=="3") Operators();
		else if (action=="4") Condition();
		else if (action=="5") Loop();
		else if (action=="6") RegExp();
		else if (action=="0") break;
		else printf("指定したアクションは見つかりませんでした\r\n\r\n");
	}
	return 0;
}
