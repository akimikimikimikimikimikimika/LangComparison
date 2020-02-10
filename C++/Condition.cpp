#include <iostream>
#include "Header.hpp"

using namespace std;

void Condition(){
	bool test1 = true;
	bool test2 = false;

	cout <<
	endl <<
	"これから条件分岐を試します" << endl <<
	endl;

	if (test1) {
		cout << "どうやらtest1は真のようです" << endl;
	}

	if (!test1) {
		cout << "どうやらtest1は偽のようです" << endl;
	}
	else if (test2) {
		cout << "どうやらtest2は真のようです" << endl;
	}
	else if (!test2 && test1) {
		cout << "真偽が混在しているようです" << endl;
	}
	else {
		cout << "どれでもないようです" << endl;
	}


	int val = 8;
	switch (val) {
		case 0:
		case 1:
			cout << to_string(val)+"は特別な値である" << endl;
			break;
		case 8:
		case 9:
		case 10:
			cout << "これに隣接する数にも言えたりするが,";
			// breakを省くと,case 8,9,10を実行すれば,直下のcase 4,6も実行する
		case 4:
		case 6:
			cout << to_string(val)+"は素数ではない" << endl;
			break;
		case 2:
		case 3:
		case 5:
		case 7:
			cout << to_string(val)+"は素数である" << endl;
			break;
	}

	cout << endl << endl;

}