#include <iostream>
# include "Header.hpp"

using namespace std;

void Stdinout(){

	string aboutYou;
	cout <<
		"こんにちは。私の名前はC++。" << endl
		<< "シープラと呼ばれています。" << endl
		<< "Cを拡張した言語です。" << endl
		<< "あなたのことを教えてください" << endl;
	cin >> aboutYou;
	// getline(cin,aboutYou);
	// C++標準の記法は空白を含めることができないが,getlineだと動作が不安定になるので非推奨
	while(getchar()!='\n');
	cout <<
		"あなたは " << aboutYou << " ですね。わかりました。" << endl;

	cout << endl << endl;

}
