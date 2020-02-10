#include <iostream>
#include <string>
#include "Header.hpp"

using namespace std;

void Operators(){

	double r = .0375e-6;
    double *p = nullptr;
	*p = r;


	cout <<
		endl <<
		"これから演算子を試します" << endl <<
		endl <<

		"算術演算子" << endl <<
			"24   + 5 = " << 24  +5 << endl <<
			"24   - 5 = " << 24  -5 << endl <<
			"24   * 5 = " << 24  *5 << endl <<
			"24.0 / 5 = " << 24.0/5 << endl <<
			"24   \% 5 = " << 24 %5 << endl <<

		endl <<

		"比較演算子" << endl <<
			"24 <  5 = " << (24< 5) << endl <<
			"24 <= 5 = " << (24<=5) << endl <<
			"24 >  5 = " << (24> 5) << endl <<
			"24 >= 5 = " << (24>=5) << endl <<
			"24 == 5 = " << (24==5) << endl <<
			"24 != 5 = " << (24!=5) << endl <<

		endl <<

		"論理演算子" << endl <<
			"true && false = " << (true && false) << endl <<
			"true || false = " << (true || false) << endl <<
			"      ! false = " << (      ! false) << endl <<

		endl <<

		"三項演算子" << endl <<
			"true  ? \"yes\" : \"no\" = \"" << (true ?"yes":"no") << "\"" << endl <<
			"false ? \"yes\" : \"no\" = \"" << (false?"yes":"no") << "\"" << endl <<

		endl <<

		"型演算子" << endl <<
			"(double)6 = " << (double)6 /* 書き方 1 */ << endl <<
			"double(6) = " << double(6) /* 書き方 2 */ << endl <<
			"sizeof \"text\" = " << sizeof "text" << endl <<

		endl <<

		"文字列 (string)" << endl <<
			"\"abc\" == \"def\" = " << ((string)"abc" == (string)"def") << endl <<
			"\"abc\"  + \"def\" = \"" << ((string)"abc"  + (string)"def") << "\"" << endl <<

		endl <<

		"ポインタ" << endl <<
			"double r = .0375e-6; ← 実体の浮動小数を定義" << endl <<
			"double *p; ← ポインタの浮動小数を定義" << endl <<
			"*p = r;" << endl <<
			endl <<
			" r = " <<  r << " (実体)" << endl <<
			"&r = " << &r << " (実体 → ポインタ)" << endl <<
			" p = " <<  p << " (ポインタ)" << endl <<
			"*p = " << *p << " (ポインタ → 実体)" << endl;
	/*
		*p = r;
		これにより,ポインタが実体でいうrを指すようになる。
		逆に, &r = p; としても作用しない。
	*/

	cout << endl << endl;

}
