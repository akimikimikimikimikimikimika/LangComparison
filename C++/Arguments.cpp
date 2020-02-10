#include <iostream>
#include "Header.hpp"

using namespace std;

void Arguments(int argc, char *argv[]) {

	cout <<
	endl <<
	endl <<
	"このファイルを実行するにあたっての引数は以下の通りです:" << endl <<
	endl;
	for (int i=1;i<argc;i++) cout << " " << i << ": " << argv[i] << endl;

	cout << endl << endl;

}

void ArgumentsDemo() {

	cout <<
	endl <<
	endl <<
	"このファイルを実行するにあたっての引数は以下の通りです:" << endl <<
	endl <<
	" 1: " << "このデモは,引数を付してコマンドを実行することで体験できます" << endl <<
	" 2: " << endl <<
	" 3: " << "コマンドラインに以下のように入力して実行します" << endl <<
	" 4: " << endl <<
	" 5: " << "C++/Build 引数1 引数2…" << endl <<
	" 6: " << endl <<
	" 7: " << "すると,引数1,引数2…が順に出力されます" << endl <<
	" 8: " << endl;

	cout << endl << endl;

}