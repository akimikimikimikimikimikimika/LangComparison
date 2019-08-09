#include <iostream>
#include <filesystem>
#include <cstdlib>

using namespace std;
namespace fs = filesystem;

void Path() {

	char *home = getenv("HOME");

	cout << "ホームディレクトリ:       " << home << endl;
	cout << "カレントディレクトリ:     " << fs::current_path().native() << endl;

	cout << endl << endl;

}