
import java.io.*;

public class Sprintf {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	public static void main(String[] args) throws IOException{

		println("これから文字列フォーマットを試します");

		println("整数");
		println("String.format(\"%d\",255) = \""+(   String.format("%d",255)   )+"\" (DEC)");
		println("String.format(\"%o\",255) = \""+(   String.format("%o",255)   )+"\" (OCT)");
		println("String.format(\"%x\",255) = \""+(   String.format("%x",255)   )+"\" (HEX)");
		println("String.format(\"%X\",255) = \""+(   String.format("%X",255)   )+"\" (HEX)");

		println("\r\n実数");
		println("String.format(\"%f\",0.018) = \""+(   String.format("%f",0.018)   )+"\"");
		println("String.format(\"%g\",0.018) = \""+(   String.format("%g",0.018)   )+"\"");
		println("String.format(\"%e\",0.018) = \""+(   String.format("%e",0.018)   )+"\"");
		println("String.format(\"%E\",0.018) = \""+(   String.format("%E",0.018)   )+"\"");

		println("\r\n真偽値");
		println("String.format(\"%b\",true) = \""+(   String.format("%b",true)   )+"\"");

		println("\r\n文字");
		println("String.format(\"%c\",115)   = \""+(     String.format("%c",115)     )+"\"");
		println("String.format(\"%s\",\"abc\") = \""+(   String.format("%s","abc")   )+"\"");
			// %s は任意のオブジェクトで .toString() の結果を代入する

		println("\r\n基数の表記");
		println("String.format(\"%#o\",255) = \""+(   String.format("%#o",255)   )+"\"");
		println("String.format(\"%#x\",255) = \""+(   String.format("%#x",255)   )+"\"");
		println("String.format(\"%#X\",255) = \""+(   String.format("%#X",255)   )+"\"");

		println("\r\n正負の表記");
		println("String.format( \"%d\",+18) = \""+(   String.format( "%d",+18)   )+"\"");
		println("String.format(\"%+d\",+18) = \""+(   String.format("%+d",+18)   )+"\"");
		println("String.format(\"% d\",+18) = \""+(   String.format("% d",+18)   )+"\"");
		println("String.format( \"%d\",-18) = \""+(   String.format( "%d",-18)   )+"\"");
		println("String.format(\"%+d\",-18) = \""+(   String.format("%+d",-18)   )+"\"");
		println("String.format(\"% d\",-18) = \""+(   String.format("% d",-18)   )+"\"");

		println("\r\n精度");
		println("String.format(\"%.3f\",0.018) = \""+(     String.format("%.3f",0.018)   )+"\" (f: 小数点以下の桁数)");
		println("String.format(\"%.3e\",0.018) = \""+(     String.format("%.3e",0.018)   )+"\" (e,g: 有効桁数-1)");
		println("String.format(\"%.2s\",\"abc\") = \""+(   String.format("%.2s","abc")   )+"\" (s: 文字数)");

		println("\r\n幅");
		println("String.format(\"%10d\",18)     = \""+(     String.format("%10d",18)      )+"\"");
		println("String.format(\"%10f\",0.018)  = \""+(     String.format("%10f",0.018)   )+"\"");
		println("String.format(\"%10e\",0.018)  = \""+(     String.format("%10e",0.018)   )+"\"");
		println("String.format(\"%10s\",\"ab\")   = \""+(   String.format("%10s","ab")    )+"\"");

		println("\r\n0埋め");
		println("String.format(\"%010d\",18)    = \""+(     String.format("%010d",18)      )+"\"");
		println("String.format(\"%010f\",0.018) = \""+(     String.format("%010f",0.018)   )+"\"");
		println("String.format(\"%010e\",0.018) = \""+(     String.format("%010e",0.018)   )+"\"");

		println("\r\n桁区切り");
		println("String.format(\"%,d\",16777216)  = \""+(   String.format("%,d",16777216)   )+"\"");
		println("String.format(\"%,g\",167772.16) = \""+(   String.format("%,g",167772.16)   )+"\"");

		println("\r\n左寄せ");
		println("String.format( \"%10d\",18) = \""+(   String.format("%10d",18)    )+"\"");
		println("String.format(\"%-10d\",18) = \""+(   String.format("%-10d",18)   )+"\"");

		println("\r\n組合せ");
		println("String.format(\"%d年%d月%d日\",2007,7,14) = \""+(   String.format("%d年%d月%d日",2007,7,14)   )+"\"");
		println("String.format(\"x = %+08.2f\",0.375)      = \""+(   String.format("x = %+08.2f",0.375)      )+"\"");

		println("\r\n引数並び");
		println("String.format(\"%3$d年%1$d月%2$d日\",7,14,2007) = \""+(   String.format("%3$d年%1$d月%2$d日",7,14,2007)   )+"\"");
		println("String.format(\"%2$sは%2$s。%1$sは%1$s。\",\"あれ\",\"これ\") = \""+(   String.format("%2$sは%2$s。%1$sは%1$s。","あれ","これ")   )+"\"");

		println("\r\n");

	}
}