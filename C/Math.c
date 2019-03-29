#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <complex.h>
#include "Header.h"

void Math(){

	printf("\r\nこれから数学演算を試します\r\n");

	printf("\r\n符号\r\n"); // <stdlib.h>
	printf("abs(+18) = %d\r\n",abs(+18));
	printf("abs(-18) = %d\r\n",abs(-18));
	// double,float版のabsである fabs は, <math.h> で定義されている

	printf("\r\n除算\r\n"); // <stdlib.h>
	printf("div(24,5)\r\n");
	printf("  .quot = %d\r\n",div(24,5).quot);
	printf("  .rem  = %d\r\n",div(24,5).rem);

	printf("\r\n定数\r\n"); // <math.h>
	printf("π = %f\r\n",M_PI);
	printf("e = %f\r\n",M_E);
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

	printf("\r\n数学関数\r\n"); // <math.h>
	printf("pow(2,10)      = %f\r\n",pow(2,10)     );
	printf("sqrt(3)        = %f\r\n",sqrt(3)       );
	printf("cbrt(27)       = %f\r\n",cbrt(27)      );
	printf("exp(1.145)     = %f\r\n",exp(1.145)    ); // e^x
	printf("exp2(1.651)    = %f\r\n",exp2(1.651)   ); // 2^x
	printf("expm1(1.421)   = %f\r\n",expm1(1.421)  ); // exp(x)-1
	printf("log(23.14)     = %f\r\n",log(23.14)    ); // log(x)
	printf("log1p(22.14)   = %f\r\n",log1p(22.14)  ); // log(x+1)
	printf("log10(1385)    = %f\r\n",log10(1385)   ); // log10(x)
	printf("log2(8.825)    = %f\r\n",log2(8.825)   ); // log2(x)
	printf("sin(π/3)       = %f\r\n",sin(M_PI/3)   );
	printf("cos(π/3)       = %f\r\n",cos(M_PI/3)   );
	printf("tan(π/3)       = %f\r\n",tan(M_PI/3)   );
	printf("asin(1)        = %f\r\n",asin(1)       );
	printf("acos(0.5)      = %f\r\n",acos(0.5)     );
	printf("atan(-1)       = %f\r\n",atan(-1)      );
	printf("atan2(12,5)    = %f\r\n",atan2(12,5)   );
	printf("hypot(12,5)    = %f\r\n",hypot(12,5)   );
	printf("sinh(1.862)    = %f\r\n",sinh(1.862)   );
	printf("cosh(1.811)    = %f\r\n",cosh(1.811)   );
	printf("tanh(0.325)    = %f\r\n",tanh(0.325)   );
	printf("tgamma(0.2865) = %f\r\n",tgamma(0.2865)); // Γ(0.287)
	printf("lgamma(0.0422) = %f\r\n",lgamma(0.0422)); // log(Γ(0.0422))

	double complex c = 3+4i;
	printf("\r\n複素数\r\n"); // <complex.h>
	printf(" cabs(3+4i) = %f\r\n", cabs(c));
	printf(" carg(3+4i) = %f\r\n", carg(c));
	printf("creal(3+4i) = %f\r\n",creal(c));
	printf("cimag(3+4i) = %f\r\n",cimag(c));
	printf(" conj(3+4i) = %f%fi\r\n",creal(conj(c)),cimag(conj(c)));
	/*
		他にも <math.h> に定義されている関数の複素数版があったりする
		e.g. sin(x) → csin(x)
	*/

	printf("\r\n端数処理\r\n"); // <stdlib.h>
	printf("rand() = %d\r\n", rand());

	printf("\r\n端数処理\r\n"); // <math.h>
	printf("floor(-3.14) = %f\r\n",floor(-3.14)); // 小さい方の整数へ
	printf(" ceil(-3.14) = %f\r\n", ceil(-3.14)); // 大きい方の整数へ
	printf("trunc(-3.14) = %f\r\n",trunc(-3.14)); // 0に近い方の整数へ
	printf("round(-3.14) = %f\r\n",round(-3.14));

}