#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <string>
#include <cstring> // GCCはこれがないとcstringの機能は使えないみたい

#define CD_SIZE 512

using namespace std;

void Path() {

	char cd[CD_SIZE];
	char *home = getenv("HOME");

	memset(cd, '\0', CD_SIZE);
	getcwd(cd, CD_SIZE);

	cout << "ホームディレクトリ:       " << home << endl;
	cout << "カレントディレクトリ:     " << cd << endl;

}