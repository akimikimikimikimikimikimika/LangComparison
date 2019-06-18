#include <iostream>
#include <string>
#include <cstdlib>
#include <ctgmath>
#include <random>
#include "Header.hpp"

using namespace std;

void Math(){

	cout << endl << "これから数学演算を試します" << endl;
	/*
		多くの関数は std:: を介してアクセスするようになっている。
		だが,本来は using namespace std; を記している(インクルードの後)ため,わざわざ std:: を記す必要はない。
	*/
	/*
		C++では,Cの標準数学ライブラリをそのまま利用できるのだが,以下のように書き換えて使うこともできる
		<math.h> → <cmath>
		<tgmath.h> → <ctgmath>
	*/
	/*
		ctgmath
		数学関数を定義するヘッダーファイルとして,本来は cmath と complex の2つが存在する。
		cmath は通常の実数範囲内で取り扱う際に利用する関数群で, complex は複素数を取り扱う際の関数である。
		ctgmath では,引数が実数か複素数かによって cmath の関数か complex の関数かを自動選別した上で実行できる。
		ctgmath をインクルードした時点で, cmath と complex も自動的にインクルードされる。
	*/

	// 進数変換するにあたって,C由来の関数を使用したい場合は,Cの項を参照すること。
	cout << endl << "進数変換" << endl;
	cout << "433045 = " << std::stoi("433045",nullptr,6) << " (6進数 → 10進数)" << endl; // <string>
	/*
		std::stoi
		• 2~36 進数に変換可能
		• 2つ目の引数は,数値変換完了時に1つ目の引数の末尾の位置を返すポインタを渡す。ヌルにすると,無視される。
		• 3つ目の引数で0を指定すると,文字列先頭の"0"や"0x"の有無により形式を自動判別する。(8,10,16進数のみに対応)
		• 返す値の型に合わせて,これも含め類似の関数が8種類ある
			* stoi → int
			* stol → long
			* stoul → unsigned long
			* stoll → long long
			* stoull → unsigned long long
			* stof → float
			* stod → double
			* stold → long double
	*/

	cout << endl << "符号" << endl; // <cstdlib>
	cout << "abs(+18) = " << std::abs(+18) << endl;
	cout << "abs(-18) = " << std::abs(-18) << endl;

	cout << endl << "除算" << endl; // <cstdlib>
	cout << "div(24,5)\r\n";
	cout << "  .quot = " << std::div(24,5).quot << endl; // 24/5
	cout << "  .rem  = " << std::div(24,5).rem  << endl; // 24%5

	cout << endl << "定数" << endl; // <ctgmath>
	cout << "π = " << M_PI << endl;
	cout << "e = " << M_E  << endl;

	cout << endl << "数学関数" << endl; // <ctgmath>
	cout << "pow(2,10)      = " << std::pow(2,10)      << endl;
	cout << "sqrt(3)        = " << std::sqrt(3)        << endl;
	cout << "cbrt(27)       = " << std::cbrt(27)       << endl;
	cout << "exp(1.145)     = " << std::exp(1.145)     << endl; // e^x
	cout << "exp2(1.651)    = " << std::exp2(1.651)    << endl; // 2^x
	cout << "expm1(1.421)   = " << std::expm1(1.421)   << endl; // exp(x)-1
	cout << "log(23.14)     = " << std::log(23.14)     << endl; // log(x)
	cout << "log1p(22.14)   = " << std::log1p(22.14)   << endl; // log(x+1)
	cout << "log10(1385)    = " << std::log10(1385)    << endl; // log10(x)
	cout << "log2(8.825)    = " << std::log2(8.825)    << endl; // log2(x)
	cout << "sin(π/3)       = " << std::sin(M_PI/3)    << endl;
	cout << "cos(π/3)       = " << std::cos(M_PI/3)    << endl;
	cout << "tan(π/3)       = " << std::tan(M_PI/3)    << endl;
	cout << "asin(1)        = " << std::asin(1)        << endl;
	cout << "acos(0.5)      = " << std::acos(0.5)      << endl;
	cout << "atan(-1)       = " << std::atan(-1)       << endl;
	cout << "atan2(12,5)    = " << std::atan2(12,5)    << endl;
	cout << "hypot(12,5)    = " << std::hypot(12,5)    << endl;
	cout << "sinh(1.862)    = " << std::sinh(1.862)    << endl;
	cout << "cosh(1.811)    = " << std::cosh(1.811)    << endl;
	cout << "tanh(0.325)    = " << std::tanh(0.325)    << endl;
	cout << "tgamma(0.2865) = " << std::tgamma(0.2865) << endl; // Γ(0.287)
	cout << "lgamma(0.0422) = " << std::lgamma(0.0422) << endl; // log(Γ(0.0422))

	cout << endl << "端数処理" << endl; // <ctgmath>
	cout << "floor(-3.14) = " << std::floor(-3.14) << endl; // 小さい方の整数へ
	cout << " ceil(-3.14) = " << std::ceil(-3.14)  << endl; // 大きい方の整数へ
	cout << "trunc(-3.14) = " << std::trunc(-3.14) << endl; // 0に近い方の整数へ
	cout << "round(-3.14) = " << std::round(-3.14) << endl;

	cout << endl << "乱数" << endl; // <random>
	std::random_device rnd; // 予測不能な乱数生成器rndを作成
	cout << "random_device: " << rnd() << endl;
	std::minstd_rand minstd; // 最小標準による擬似乱数生成器minstdを作成
	minstd.seed(rnd());
	cout << "minstd_rand: " << minstd() << endl;
	std::mt19937_64 mt; // メルセンヌツイスターによる擬似乱数生成器mtを作成
	mt.seed(rnd());
	cout << "mt19937_64: " << mt() << endl;

}