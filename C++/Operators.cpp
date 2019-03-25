#include <iostream>
#include <string>
#include "Header.hpp"

using namespace std;

void Operators(){

	cout << "\r\nこれから演算子を試します\r\n";

	cout << "\r\n算術演算子\r\n";
	cout << "24   + 5 = " << 24+5 << "\r\n";
	cout << "24   - 5 = " << 24-5 << "\r\n";
	cout << "24   * 5 = " << 24*5 << "\r\n";
	cout << "24.0 / 5 = " << 24.0/5 << "\r\n";
	cout << "24   \% 5 = " << 24%5 << "\r\n";

	cout << "\r\n比較演算子\r\n";
	cout << "24 <  5 = " << (24< 5) << "\r\n";
	cout << "24 <= 5 = " << (24<=5) << "\r\n";
	cout << "24 >  5 = " << (24> 5) << "\r\n";
	cout << "24 >= 5 = " << (24>=5) << "\r\n";
	cout << "24 == 5 = " << (24==5) << "\r\n";
	cout << "24 != 5 = " << (24!=5) << "\r\n";

	cout << "\r\n論理演算子\r\n";
	cout << "true && false = " << (true && false) << "\r\n";
	cout << "true || false = " << (true || false) << "\r\n";
	cout << "      ! false = " << (      ! false) << "\r\n";

	cout << "\r\n三項演算子\r\n";
	cout << "true  ? \"yes\" : \"no\" = \"" << (true ?"yes":"no") << "\"\r\n";
	cout << "false ? \"yes\" : \"no\" = \"" << (false?"yes":"no") << "\"\r\n";

	cout << "\r\n型演算子\r\n";
	cout << "(double)6 = " << (double)6 << "\r\n"; // 書き方1
	cout << "double(6) = " << double(6) << "\r\n"; // 書き方2
	cout << "sizeof \"text\" = " << sizeof "text" << "\r\n";

	cout << "\r\n文字列 (string)\r\n";
	cout << "\"abc\" == \"def\" = " << ((string)"abc" == (string)"def") << "\r\n";
	cout << "\"abc\"  + \"def\" = \"" << ((string)"abc"  + (string)"def") << "\"\r\n";

}