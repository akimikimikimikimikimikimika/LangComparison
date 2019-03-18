
import java.io.*;

public class Mathematics {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	public static void main(String[] args) throws IOException{

		println("\r\nこれから数学演算を試します");

		println("\r\n定数");
		println("π = "+(   Math.PI   ));
		println("e = "+(   Math.E    ));

		println("\r\n符号");
		// int long float double
		println("Math.abs(+18)         = "+(   Math.abs(+18)   ));
		println("Math.abs(-18)         = "+(   Math.abs(-18)   ));
		// int long
		println("Math.negateExact(+18) = "+(   Math.negateExact(+18)   ));
		println("Math.negateExact(-18) = "+(   Math.negateExact(-18)   ));
		// double float
		println("Math.signum(+18)      = "+(   Math.signum(+18)   ));
		println("Math.signum(0)        = "+(   Math.signum(0)   ));
		println("Math.signum(-18)      = "+(   Math.signum(-18)   ));

		println("\r\n数学関数");
		// double
		println("Math.pow(2,10)    = "+(   Math.pow(2,10)    ));
		println("Math.sqrt(3)      = "+(   Math.sqrt(3)    ));
		println("Math.cbrt(27)     = "+(   Math.cbrt(27)   ));
		println("Math.exp(1.145)   = "+(   Math.exp(1.145)   ));
		println("Math.expm1(1.421) = "+(   Math.expm1(1.421)   ));
		println("Math.log(23.14)   = "+(   Math.log(23.14)   ));
		println("Math.log1p(22.14) = "+(   Math.log1p(22.14)   ));
		println("Math.log10(1385)  = "+(   Math.log10(1385)   ));
		println("Math.sin(π/3)     = "+(   Math.sin(Math.PI/3)   ));
		println("Math.cos(π/3)     = "+(   Math.cos(Math.PI/3)   ));
		println("Math.tan(π/3)     = "+(   Math.tan(Math.PI/3)   ));
		println("Math.asin(1)      = "+(   Math.asin(1)   ));
		println("Math.acos(0.5)    = "+(   Math.acos(0.5)   ));
		println("Math.atan(-1)     = "+(   Math.atan(-1)   ));
		println("Math.atan2(12,5)  = "+(   Math.atan2(12,5)   ));
		println("Math.hypot(12,5)  = "+(   Math.hypot(12,5)   ));
		println("Math.sinh(1.862)  = "+(   Math.sinh(1.862)   ));
		println("Math.cosh(1.811)  = "+(   Math.cosh(1.811)   ));
		println("Math.tanh(0.325)  = "+(   Math.tanh(0.325)   ));

		println("\r\n角度変換");
		// double
		println("Math.toDegrees(1)   = "+(   Math.toDegrees(1)   ));
		println("Math.toRadians(540) = "+(   Math.toRadians(540)   ));

		println("\r\n乱数");
		println("Math.random() = "+(   Math.random()    ));

		println("\r\n端数処理");
		// double
		println("Math.floor(-3.14) = "+(   Math.floor(-3.14)   ));
		println("Math.ceil(-3.14)  = "+(   Math.ceil(-3.14)    ));
		println("Math.round(-3.14) = "+(   Math.round(-3.14)   )); //

		println("\r\n");

	}

}