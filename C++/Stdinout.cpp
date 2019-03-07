#include <iostream>
# include "Header.hpp"

using namespace std;

void Stdinout(){
	string aboutYou;
	cout << "こんにちは。私の名前はC++。\n";
	cout << "シープラと呼ばれています。\n";
	cout << "Cを拡張した言語です。\n";
	cout << "あなたのことを教えてください\n";
	cin >> aboutYou;
	while(getchar()!='\n');
	cout << "あなたは " << aboutYou << " ですね。わかりました。\n";
}
