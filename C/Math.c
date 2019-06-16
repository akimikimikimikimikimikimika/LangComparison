#include <stdio.h>
#include <stdlib.h>
#include <tgmath.h>
#include "Header.h"

/*
	tgmath.h
	数学関数を定義するヘッダーファイルとして,本来は math.h と complex.h の2つが存在する。
	math.h は通常の実数範囲内で取り扱う際に利用する関数群で, complex.h は複素数を取り扱う際の関数である。
	tgmath.h では,引数が実数か複素数かによって math.h の関数か complex.h の関数かを自動選別した上で実行できる。
	tgmath.h をインクルードした時点で, math.h と complex.h も自動的にインクルードされる。
*/

void Math(){

	n();printf("これから数学演算を試します");n();

	n();printf("符号");n(); // <stdlib.h>
	printf("abs(+18) = %d",abs(+18));n();
	printf("abs(-18) = %d",abs(-18));n();
	// double,float版のabsである fabs は, <math.h> で定義されている

	n();printf("除算");n(); // <stdlib.h>
	printf("div(24,5)");n();
	printf("  .quot = %d",div(24,5).quot);n();
	printf("  .rem  = %d",div(24,5).rem);n();

	n();printf("定数");n(); // <tgmath.h>
	printf("π = %f",M_PI);n();
	printf("e = %f",M_E);n();
	/*
		他の定数
		M_LOG2E : log₂e
		M_LOG10E : log₁₀e
		M_LN2 : log2
		M_LN10 : log10
		M_PI_2 : π/2
		M_PI_4 : π/4
		M_1_PI : 1/π
		M_2_PI : 2/π
		M_2_SQRTPI : 2/√π
		M_SQRT2 : √2
		M_SQRT1_2 : 1/√2
	*/

	n();printf("数学関数");n(); // <tgmath.h>
	printf("pow(2,10)      = %f",pow(2,10)     );n();
	printf("sqrt(3)        = %f",sqrt(3)       );n();
	printf("cbrt(27)       = %f",cbrt(27)      );n();
	printf("exp(1.145)     = %f",exp(1.145)    );n(); // e^x
	printf("exp2(1.651)    = %f",exp2(1.651)   );n(); // 2^x
	printf("expm1(1.421)   = %f",expm1(1.421)  );n(); // exp(x)-1
	printf("log(23.14)     = %f",log(23.14)    );n(); // log(x)
	printf("log1p(22.14)   = %f",log1p(22.14)  );n(); // log(x+1)
	printf("log10(1385)    = %f",log10(1385)   );n(); // log10(x)
	printf("log2(8.825)    = %f",log2(8.825)   );n(); // log2(x)
	printf("sin(π/3)       = %f",sin(M_PI/3)   );n();
	printf("cos(π/3)       = %f",cos(M_PI/3)   );n();
	printf("tan(π/3)       = %f",tan(M_PI/3)   );n();
	printf("asin(1)        = %f",asin(1)       );n();
	printf("acos(0.5)      = %f",acos(0.5)     );n();
	printf("atan(-1)       = %f",atan(-1)      );n();
	printf("atan2(12,5)    = %f",atan2(12,5)   );n();
	printf("hypot(12,5)    = %f",hypot(12,5)   );n();
	printf("sinh(1.862)    = %f",sinh(1.862)   );n();
	printf("cosh(1.811)    = %f",cosh(1.811)   );n();
	printf("tanh(0.325)    = %f",tanh(0.325)   );n();
	printf("tgamma(0.2865) = %f",tgamma(0.2865));n(); // Γ(0.287)
	printf("lgamma(0.0422) = %f",lgamma(0.0422));n(); // log(Γ(0.0422))

	double complex c = 3+4i;
	n();printf("複素数");n(); // <tgmath.h>
	printf(" cabs(3+4i) = %f", cabs(c));n();
	printf(" carg(3+4i) = %f", carg(c));n();
	printf("creal(3+4i) = %f",creal(c));n();
	printf("cimag(3+4i) = %f",cimag(c));n();
	printf(" conj(3+4i) = %f%fi",creal(conj(c)),cimag(conj(c)));n();
	/*
		他にも <math.h> に定義されている関数の複素数版があったりする
		e.g. sin(x) → csin(x)
	*/

	n();printf("端数処理");n(); // <stdlib.h>
	printf("rand() = %d", rand());n();

	n();printf("端数処理");n(); // <tgmath.h>
	printf("floor(-3.14) = %f",floor(-3.14));n(); // 小さい方の整数へ
	printf(" ceil(-3.14) = %f", ceil(-3.14));n(); // 大きい方の整数へ
	printf("trunc(-3.14) = %f",trunc(-3.14));n(); // 0に近い方の整数へ
	printf("round(-3.14) = %f",round(-3.14));n();

	nn();

}