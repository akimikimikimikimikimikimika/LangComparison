#include <iostream>
#include <string>
#include "Header.hpp"

using namespace std;

void Operators(){
	cout << "\nこれから演算子を試します\n";
	cout << "\n算術演算子\n";
	cout << "24   + 5 = " << 24+5 << "\n";
	cout << "24   - 5 = " << 24-5 << "\n";
	cout << "24   * 5 = " << 24*5 << "\n";
	cout << "24.0 / 5 = " << 24.0/5 << "\n";
	cout << "24   \% 5 = " << 24%5 << "\n";
	cout << "\n比較演算子\n";
	cout << "24 <  5 = " << (24< 5) << "\n";
	cout << "24 <= 5 = " << (24<=5) << "\n";
	cout << "24 >  5 = " << (24> 5) << "\n";
	cout << "24 >= 5 = " << (24>=5) << "\n";
	cout << "24 == 5 = " << (24==5) << "\n";
	cout << "24 != 5 = " << (24!=5) << "\n";
	cout << "\n論理演算子\n";
	cout << "true && false = " << (true && false) << "\n";
	cout << "true || false = " << (true || false) << "\n";
	cout << "      ! false = " << (      ! false) << "\n";
	cout << "\n三項演算子\n";
	cout << "true  ? \"yes\" : \"no\" = \"" << (true ?"yes":"no") << "\"\n";
	cout << "false ? \"yes\" : \"no\" = \"" << (false?"yes":"no") << "\"\n";
	cout << "\n型演算子\n";
	cout << "(double)6 = " << (double)6 << "\n"; // 書き方1
	cout << "double(6) = " << double(6) << "\n"; // 書き方2
	cout << "sizeof \"text\" = " << sizeof "text" << "\n";
	cout << "\n文字列 (string)\n";
	cout << "\"abc\" == \"def\" = " << ((string)"abc" == (string)"def") << "\n";
	cout << "\"abc\"  + \"def\" = \"" << ((string)"abc"  + (string)"def") << "\"\n";
}