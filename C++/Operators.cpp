#include <iostream>
#include <string>
#include "Header.hpp"

using namespace std;

void Operators(){

	double r = .0375e-6;
    double *p = nullptr;
	*p = r;


	cout << "\
" << "\n\
これから演算子を試します" << "\n\
" << "\n\
算術演算子" << "\n\
24   + 5 = " << 24+5 << "\n\
24   - 5 = " << 24-5 << "\n\
24   * 5 = " << 24*5 << "\n\
24.0 / 5 = " << 24.0/5 << "\n\
24   \% 5 = " << 24%5 << "\n\
" << "\n\
比較演算子" << "\n\
24 <  5 = " << (24< 5) << "\n\
24 <= 5 = " << (24<=5) << "\n\
24 >  5 = " << (24> 5) << "\n\
24 >= 5 = " << (24>=5) << "\n\
24 == 5 = " << (24==5) << "\n\
24 != 5 = " << (24!=5) << "\n\
" << "\n\
論理演算子" << "\n\
true && false = " << (true && false) << "\n\
true || false = " << (true || false) << "\n\
      ! false = " << (      ! false) << "\n\
" << "\n\
三項演算子" << "\n\
true  ? \"yes\" : \"no\" = \"" << (true ?"yes":"no") << "\"" << "\n\
false ? \"yes\" : \"no\" = \"" << (false?"yes":"no") << "\"" << "\n\
" << "\n\
型演算子" << "\n\
(double)6 = " << (double)6 /* 書き方 1 */ << "\n\
double(6) = " << double(6) /* 書き方 2 */ << "\n\
sizeof \"text\" = " << sizeof "text" << "\n\
" << "\n\
文字列 (string)" << "\n\
\"abc\" == \"def\" = " << ((string)"abc" == (string)"def") << "\n\
\"abc\"  + \"def\" = \"" << ((string)"abc"  + (string)"def") << "\"" << "\n\
" << "\n\
ポインタ" << "\n\
double r = .0375e-6; ← 実体の浮動小数を定義" << "\n\
double *p; ← ポインタの浮動小数を定義" << "\n\
*p = r;" << "\n\
" << "\n\
 r = " <<  r << " (実体)" << "\n\
&r = " << &r << " (実体 → ポインタ)" << "\n\
 p = " <<  p << " (ポインタ)" << "\n\
*p = " << *p << " (ポインタ → 実体)" << "\n\
";
/*
	*p = r;
	これにより,ポインタが実体でいうrを指すようになる。
	逆に, &r = p; としても作用しない。
*/

	cout << endl << endl;
}
