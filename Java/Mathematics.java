
public class Mathematics {

	public static void main(String[] args) {

		Utility.println(

			"",
			"これから数学演算を試します",

			"",

			"進数変換",
			"433045 = "+Integer.parseInt("433045",6)+" (6進数 → 10進数)",
			"35669  = "+Integer.toString(35669, 14)+"  (10進数 → 14進数)",
			// 2~36進数に変換可能

			"",

			"定数",
			"π = "+(   Math.PI   ),
			"e = "+(   Math.E    ),

			"",

			"符号",
			// int long float double
			"Math.abs(+18)         = "+(   Math.abs(+18)   ),
			"Math.abs(-18)         = "+(   Math.abs(-18)   ),
			// int long
			"Math.negateExact(+18) = "+(   Math.negateExact(+18)   ),
			"Math.negateExact(-18) = "+(   Math.negateExact(-18)   ),
			// double float
			"Math.signum(+18)      = "+(   Math.signum(+18)   ),
			"Math.signum(0)        = "+(   Math.signum(0)   ),
			"Math.signum(-18)      = "+(   Math.signum(-18)   ),

			"",

			"数学関数",
			// double
			"Math.pow(2,10)    = "+(   Math.pow(2,10)    ),
			"Math.sqrt(3)      = "+(   Math.sqrt(3)    ),
			"Math.cbrt(27)     = "+(   Math.cbrt(27)   ),
			"Math.exp(1.145)   = "+(   Math.exp(1.145)   ),
			"Math.expm1(1.421) = "+(   Math.expm1(1.421)   ),
			"Math.log(23.14)   = "+(   Math.log(23.14)   ),
			"Math.log1p(22.14) = "+(   Math.log1p(22.14)   ),
			"Math.log10(1385)  = "+(   Math.log10(1385)   ),
			"Math.sin(π/3)     = "+(   Math.sin(Math.PI/3)   ),
			"Math.cos(π/3)     = "+(   Math.cos(Math.PI/3)   ),
			"Math.tan(π/3)     = "+(   Math.tan(Math.PI/3)   ),
			"Math.asin(1)      = "+(   Math.asin(1)   ),
			"Math.acos(0.5)    = "+(   Math.acos(0.5)   ),
			"Math.atan(-1)     = "+(   Math.atan(-1)   ),
			"Math.atan2(12,5)  = "+(   Math.atan2(12,5)   ),
			"Math.hypot(12,5)  = "+(   Math.hypot(12,5)   ),
			"Math.sinh(1.862)  = "+(   Math.sinh(1.862)   ),
			"Math.cosh(1.811)  = "+(   Math.cosh(1.811)   ),
			"Math.tanh(0.325)  = "+(   Math.tanh(0.325)   ),

			"",

			"角度変換",
			// double
			"Math.toDegrees(1)   = "+(   Math.toDegrees(1)   ),
			"Math.toRadians(540) = "+(   Math.toRadians(540)   ),

			"",

			"乱数",
			"Math.random() = "+(   Math.random()    ),

			"",

			"端数処理",
			// double
			"Math.floor(-3.14) = "+(   Math.floor(-3.14)   ),
			"Math.ceil(-3.14)  = "+(   Math.ceil(-3.14)    ),
			"Math.round(-3.14) = "+(   Math.round(-3.14)   )
		);

		Utility.nr(2);

	}

}