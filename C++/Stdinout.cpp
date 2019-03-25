#include <iostream>
# include "Header.hpp"

using namespace std;

void Stdinout(){
	string aboutYou;
	cout << "こんにちは。私の名前はC++。\r\n";
	cout << "シープラと呼ばれています。\r\n";
	cout << "Cを拡張した言語です。\r\n";
	cout << "あなたのことを教えてください\r\n";
	cin >> aboutYou;
	while(getchar()!='\n');
	cout << "あなたは " << aboutYou << " ですね。わかりました。\r\n";
}
