#include <iostream>
#include <cstdlib>
#include <cmath>
#include <random>
#include "Header.hpp"

using namespace std;

void Math(){

	cout << "\r\nこれから数学演算を試します\r\n";

	cout << "\r\n符号\r\n"; // <cstdlib>
	cout << "abs(+18) = " << std::abs(+18) << "\r\n";
	cout << "abs(-18) = " << std::abs(-18) << "\r\n";

	cout << "\r\n除算\r\n"; // <cstdlib>
	cout << "div(24,5)\r\n";
	cout << "  .quot = " << std::div(24,5).quot << "\r\n"; // 24/5
	cout << "  .rem  = " << std::div(24,5).rem  << "\r\n"; // 24%5

	double pi = std::acos(-1);
	double e  = std::exp(1);
	cout << "\r\n定数\r\n"; // <cmath>
	cout << "π = " << pi << "\r\n";
	cout << "e = " << e  << "\r\n";

	cout << "\r\n数学関数\r\n"; // <cmath>
	cout << "pow(2,10)      = " << std::pow(2,10)      << "\r\n";
	cout << "sqrt(3)        = " << std::sqrt(3)        << "\r\n";
	cout << "cbrt(27)       = " << std::cbrt(27)       << "\r\n";
	cout << "exp(1.145)     = " << std::exp(1.145)     << "\r\n"; // e^x
	cout << "exp2(1.651)    = " << std::exp2(1.651)    << "\r\n"; // 2^x
	cout << "expm1(1.421)   = " << std::expm1(1.421)   << "\r\n"; // exp(x)-1
	cout << "log(23.14)     = " << std::log(23.14)     << "\r\n"; // log(x)
	cout << "log1p(22.14)   = " << std::log1p(22.14)   << "\r\n"; // log(x+1)
	cout << "log10(1385)    = " << std::log10(1385)    << "\r\n"; // log10(x)
	cout << "log2(8.825)    = " << std::log2(8.825)    << "\r\n"; // log2(x)
	cout << "sin(π/3)       = " << std::sin(pi/3)      << "\r\n";
	cout << "cos(π/3)       = " << std::cos(pi/3)      << "\r\n";
	cout << "tan(π/3)       = " << std::tan(pi/3)      << "\r\n";
	cout << "asin(1)        = " << std::asin(1)        << "\r\n";
	cout << "acos(0.5)      = " << std::acos(0.5)      << "\r\n";
	cout << "atan(-1)       = " << std::atan(-1)       << "\r\n";
	cout << "atan2(12,5)    = " << std::atan2(12,5)    << "\r\n";
	cout << "hypot(12,5)    = " << std::hypot(12,5)    << "\r\n";
	cout << "sinh(1.862)    = " << std::sinh(1.862)    << "\r\n";
	cout << "cosh(1.811)    = " << std::cosh(1.811)    << "\r\n";
	cout << "tanh(0.325)    = " << std::tanh(0.325)    << "\r\n";
	cout << "tgamma(0.2865) = " << std::tgamma(0.2865) << "\r\n"; // Γ(0.287)
	cout << "lgamma(0.0422) = " << std::lgamma(0.0422) << "\r\n"; // log(Γ(0.0422))

	cout << "\r\n端数処理\r\n"; // <cmath>
	cout << "floor(-3.14) = " << std::floor(-3.14) << "\r\n"; // 小さい方の整数へ
	cout << " ceil(-3.14) = " << std::ceil(-3.14)  << "\r\n"; // 大きい方の整数へ
	cout << "trunc(-3.14) = " << std::trunc(-3.14) << "\r\n"; // 0に近い方の整数へ
	cout << "round(-3.14) = " << std::round(-3.14) << "\r\n";

	cout << "\r\n乱数\r\n"; // <random>
	std::random_device rnd; // 予測不能な乱数生成器rndを作成
	cout << "random_device: " << rnd() << "\r\n";
	std::minstd_rand minstd; // 最小標準による擬似乱数生成器minstdを作成
	minstd.seed(rnd());
	cout << "minstd_rand: " << minstd() << "\r\n";
	std::mt19937_64 mt; // メルセンヌツイスターによる擬似乱数生成器mtを作成
	mt.seed(rnd());
	cout << "mt19937_64: " << mt() << "\r\n";

}