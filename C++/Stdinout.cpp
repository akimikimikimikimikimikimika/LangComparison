#include <iostream>
# include "Header.hpp"

using namespace std;

void Stdinout(){
	string aboutYou;
	cout << "\
こんにちは。私の名前はC++。\n\
シープラと呼ばれています。\n\
Cを拡張した言語です。\n\
あなたのことを教えてください\n\
";
	cin >> aboutYou;
	while(getchar()!='\n');
	cout << "あなたは " << aboutYou << " ですね。わかりました。" << "\r\n";
}
