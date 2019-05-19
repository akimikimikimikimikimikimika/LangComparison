#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <string>

#define CD_SIZE 512

using namespace std;

void Path() {

	char cd[CD_SIZE];
	char *home = getenv("HOME");

	memset(cd, '\0', CD_SIZE);
	getcwd(cd, CD_SIZE);

	cout << "ホームディレクトリ:       " << home << "\r\n";
	cout << "カレントディレクトリ:     " << cd << "\r\n";

}