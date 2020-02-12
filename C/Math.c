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

	unsigned int scanned;

	printLn2(1,"これから数学演算を試します",1);

	printLn2(1,"進数変換",1);
	printf("433045 = %ld (6進数 → 10進数)",strtol("433045",NULL,6));nr(2); // <stdlib.h>
	/*
		strtol
		• 2~36進数に変換可能
		• 2つ目の引数は,1つ目の引数内で数値に変換不可能な文字列があった場合に,その文字列を返すポインタを渡す。ヌルにすると,無視される。
		• 3つ目の引数で0を指定すると,文字列先頭の"0"や"0x"の有無により形式を自動判別する。(8,10,16進数のみに対応)
		• 返す値の型に合わせて,これも含め類似の関数が4種類ある
			* strtol → long
			* strtoul → unsigned long
			* strtoq → long long
			* strtouq → unsigned long long
		• 逆演算 : 10進数 → 2~36進数(8,16覗く) の変換は手動で実装しなければならない
	*/

	printf("dec2oct 138: %o",138);nr(1);
	printf("dec2hex 138: %x",138);nr(2);
	// printf : 8進数,16進数に変換できる

	sscanf("1575","%o",&scanned);
	printf("oct2dec       1575: %u",scanned);nr(1);
	sscanf("37d","%x",&scanned);
	printf("hex2dec        37d: %u",scanned);nr(2);
	printf("hex2dec        37d: %lf",atof("0x37d"));nr(2);
	/*
		sscanf
		• 8進数,16進数を unsigned int に変換できる
		• 但し,変換前の桁数によっては %lo %llo %lx %llx に変換しなければならなかったりする。
		• 又,値は適切な型の変数のポインタで受け取る必要がある
		atof
		• 先頭に 0x を付加すれば,16進数が変換できる
		• 但し,返す値は double である。
	*/

	printLn2(1,"符号",1); // <stdlib.h>
	printf("abs(+18) = %d",abs(+18));nr(1);
	printf("abs(-18) = %d",abs(-18));nr(1);
	// double,float版のabsである fabs は, <math.h> で定義されている

	printLn2(1,"除算",1); // <stdlib.h>
	printLn2(1,"div(24,5)",1);
	printf("  .quot = %d",div(24,5).quot);nr(1);
	printf("  .rem  = %d",div(24,5).rem);nr(1);

	printLn2(1,"定数",1); // <tgmath.h>
	printf("π = %f",M_PI);nr(1);
	printf("e = %f",M_E);nr(1);
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

	printLn2(1,"数学関数",1); // <tgmath.h>
	printf("pow(2,10)      = %f",pow(2,10)     );nr(1);
	printf("sqrt(3)        = %f",sqrt(3)       );nr(1);
	printf("cbrt(27)       = %f",cbrt(27)      );nr(1);
	printf("exp(1.145)     = %f",exp(1.145)    );nr(1); // e^x
	printf("exp2(1.651)    = %f",exp2(1.651)   );nr(1); // 2^x
	printf("expm1(1.421)   = %f",expm1(1.421)  );nr(1); // exp(x)-1
	printf("log(23.14)     = %f",log(23.14)    );nr(1); // log(x)
	printf("log1p(22.14)   = %f",log1p(22.14)  );nr(1); // log(x+1)
	printf("log10(1385)    = %f",log10(1385)   );nr(1); // log10(x)
	printf("log2(8.825)    = %f",log2(8.825)   );nr(1); // log2(x)
	printf("sin(π/3)       = %f",sin(M_PI/3)   );nr(1);
	printf("cos(π/3)       = %f",cos(M_PI/3)   );nr(1);
	printf("tan(π/3)       = %f",tan(M_PI/3)   );nr(1);
	printf("asin(1)        = %f",asin(1)       );nr(1);
	printf("acos(0.5)      = %f",acos(0.5)     );nr(1);
	printf("atan(-1)       = %f",atan(-1)      );nr(1);
	printf("atan2(12,5)    = %f",atan2(12,5)   );nr(1);
	printf("hypot(12,5)    = %f",hypot(12,5)   );nr(1);
	printf("sinh(1.862)    = %f",sinh(1.862)   );nr(1);
	printf("cosh(1.811)    = %f",cosh(1.811)   );nr(1);
	printf("tanh(0.325)    = %f",tanh(0.325)   );nr(1);
	printf("tgamma(0.2865) = %f",tgamma(0.2865));nr(1); // Γ(0.287)
	printf("lgamma(0.0422) = %f",lgamma(0.0422));nr(1); // log(Γ(0.0422))

	double complex c = 3+4*I;
		// コンパイラによってはC++と同じような 3+4i の記法でもコンパイル可能であるが,Cはこちらの表記が正しいとされる。Iはマクロである。
	printLn2(1,"複素数",1); // <tgmath.h>
	printf(" cabs(3+4i) = %f", cabs(c));nr(1);
	printf(" carg(3+4i) = %f", carg(c));nr(1);
	printf("creal(3+4i) = %f",creal(c));nr(1);
	printf("cimag(3+4i) = %f",cimag(c));nr(1);
	printf(" conj(3+4i) = %f%fi",creal(conj(c)),cimag(conj(c)));nr(1);
	/*
		他にも <math.h> に定義されている関数の複素数版があったりする
		e.g. sin(x) → csin(x)
	*/

	printLn2(1,"端数処理",1); // <stdlib.h>
	printf("rand() = %d", rand());nr(1);

	printLn2(1,"端数処理",1); // <tgmath.h>
	printf("floor(-3.14) = %f",floor(-3.14));nr(1); // 小さい方の整数へ
	printf(" ceil(-3.14) = %f", ceil(-3.14));nr(1); // 大きい方の整数へ
	printf("trunc(-3.14) = %f",trunc(-3.14));nr(1); // 0に近い方の整数へ
	printf("round(-3.14) = %f",round(-3.14));nr(1);

	nr(2);

}