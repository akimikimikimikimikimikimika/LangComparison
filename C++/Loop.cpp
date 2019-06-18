#include <iostream>
#include <string>
#include "Header.hpp"

using namespace std;

void Loop(){
	cout << endl << "これからループ処理を試します" << endl << endl;

	cout << endl << "for (n=0; n<3; n++) {…}" << endl;
	for (int n=0;n<3;n++) cout << "n="+to_string(n)+"のループ" << endl;

	cout << endl << "while (~) {…}" << endl;
	string str="";
	while (str.length()<6) {
		str+="*";
		cout << str << endl;
	}

	cout << endl << "do {…} while (~)" << endl;
	str="";
	do {
		str+="+";
		cout << str << endl;
	} while (str.length()<6);
}