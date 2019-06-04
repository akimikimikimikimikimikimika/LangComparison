#include <iostream>
#include "Header.hpp"

using namespace std;

void Arguments(int argc, char *argv[]) {

	cout << "\r\n\r\n" << "このファイルを実行するにあたっての引数は以下の通りです:" << "\r\n\r\n";
	for (int i=1;i<argc;i++) cout << " " << i << ": " << argv[i] << endl;

	cout << "\r\n\r\n\r\n";

}

void ArgumentsDemo() {

	cout << "\r\n\r\n" << "このファイルを実行するにあたっての引数は以下の通りです:" << "\r\n\r\n";
	cout << " 1: " << "このデモは,引数を付してコマンドを実行することで体験できます" << endl;
	cout << " 2: " << endl;
	cout << " 3: " << "コマンドラインに以下のように入力して実行します" << endl;
	cout << " 4: " << endl;
	cout << " 5: " << "C++/Build 引数1 引数2…" << endl;
	cout << " 6: " << endl;
	cout << " 7: " << "すると,引数1,引数2…が順に出力されます" << endl;
	cout << " 8: " << endl;

	cout << "\r\n\r\n\r\n";

}