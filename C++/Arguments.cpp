#include <iostream>
#include "Header.hpp"

using namespace std;

void Arguments(int argc, char *argv[]) {

	cout << "\r\n\r\n" << "このファイルを実行するにあたっての引数は以下の通りです:" << "\r\n\r\n";
	for (int i=1;i<argc;i++) cout << " " << i << ": " << argv[i] << "\r\n";

	cout << "\r\n\r\n\r\n";

}