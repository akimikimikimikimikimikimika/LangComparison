#include <iostream>
#include "Header.hpp"

using namespace std;

void Arguments(int argc, char *argv[]) {

	cout << "\r\n\r\n" << "このファイルを実行するにあたっての引数は以下の通りです:" << "\r\n\r\n";
	for (int i=1;i<argc;i++) cout << " " << i << ": " << argv[i] << "\r\n";

	cout << "\r\n\r\n\r\n";

}

void ArgumentsDemo() {

	cout << "\r\n\r\n" << "このファイルを実行するにあたっての引数は以下の通りです:" << "\r\n\r\n";
	cout << " 1: " << "このデモは,引数を付してコマンドを実行することで体験できます" << "\r\n";
	cout << " 2: " << "\r\n";
	cout << " 3: " << "コマンドラインに以下のように入力して実行します" << "\r\n";
	cout << " 4: " << "\r\n";
	cout << " 5: " << "C++/Build 引数1 引数2…" << "\r\n";
	cout << " 6: " << "\r\n";
	cout << " 7: " << "すると,引数1,引数2…が順に出力されます" << "\r\n";
	cout << " 8: " << "\r\n";

	cout << "\r\n\r\n\r\n";

}