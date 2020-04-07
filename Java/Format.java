public class Format {

	public static void main(String[] args) {

		Utility.println(
			"",
			"これから文字列フォーマットを試します",

			"",

			"整数",
			"String.format(\"%d\",255) = \""+(   String.format("%d",255)   )+"\" (DEC)",
			"String.format(\"%o\",255) = \""+(   String.format("%o",255)   )+"\" (OCT)",
			"String.format(\"%x\",255) = \""+(   String.format("%x",255)   )+"\" (HEX)",
			"String.format(\"%X\",255) = \""+(   String.format("%X",255)   )+"\" (HEX)",

			"",

			"実数",
			"String.format(\"%f\",0.018) = \""+(   String.format("%f",0.018)   )+"\"",
			"String.format(\"%g\",0.018) = \""+(   String.format("%g",0.018)   )+"\"",
			"String.format(\"%e\",0.018) = \""+(   String.format("%e",0.018)   )+"\"",
			"String.format(\"%E\",0.018) = \""+(   String.format("%E",0.018)   )+"\"",

			"",

			"真偽値",
			"String.format(\"%b\",true) = \""+(   String.format("%b",true)   )+"\"",

			"",

			"文字",
			"String.format(\"%c\",115)   = \""+(     String.format("%c",115)     )+"\"",
			"String.format(\"%s\",\"abc\") = \""+(   String.format("%s","abc")   )+"\"",
			// %s は任意のオブジェクトで .toString() の結果を代入する

			"",

			"基数の表記",
			"String.format(\"%#o\",255) = \""+(   String.format("%#o",255)   )+"\"",
			"String.format(\"%#x\",255) = \""+(   String.format("%#x",255)   )+"\"",
			"String.format(\"%#X\",255) = \""+(   String.format("%#X",255)   )+"\"",

			"",

			"正負の表記",
			"String.format( \"%d\",+18) = \""+(   String.format( "%d",+18)   )+"\"",
			"String.format(\"%+d\",+18) = \""+(   String.format("%+d",+18)   )+"\"",
			"String.format(\"% d\",+18) = \""+(   String.format("% d",+18)   )+"\"",
			"String.format( \"%d\",-18) = \""+(   String.format( "%d",-18)   )+"\"",
			"String.format(\"%+d\",-18) = \""+(   String.format("%+d",-18)   )+"\"",
			"String.format(\"% d\",-18) = \""+(   String.format("% d",-18)   )+"\"",

			"",

			"精度",
			"String.format(\"%.3f\",0.018) = \""+(     String.format("%.3f",0.018)   )+"\" (f: 小数点以下の桁数)",
			"String.format(\"%.3e\",0.018) = \""+(     String.format("%.3e",0.018)   )+"\" (e,g: 有効桁数-1)",
			"String.format(\"%.2s\",\"abc\") = \""+(   String.format("%.2s","abc")   )+"\" (s: 文字数)",

			"",

			"幅",
			"String.format(\"%10d\",18)     = \""+(     String.format("%10d",18)      )+"\"",
			"String.format(\"%10f\",0.018)  = \""+(     String.format("%10f",0.018)   )+"\"",
			"String.format(\"%10e\",0.018)  = \""+(     String.format("%10e",0.018)   )+"\"",
			"String.format(\"%10s\",\"ab\")   = \""+(   String.format("%10s","ab")    )+"\"",

			"",

			"0埋め",
			"String.format(\"%010d\",18)    = \""+(     String.format("%010d",18)      )+"\"",
			"String.format(\"%010f\",0.018) = \""+(     String.format("%010f",0.018)   )+"\"",
			"String.format(\"%010e\",0.018) = \""+(     String.format("%010e",0.018)   )+"\"",

			"",

			"桁区切り",
			"String.format(\"%,d\",16777216)  = \""+(   String.format("%,d",16777216)   )+"\"",
			"String.format(\"%,g\",167772.16) = \""+(   String.format("%,g",167772.16)   )+"\"",

			"",

			"左寄せ",
			"String.format( \"%10d\",18) = \""+(   String.format("%10d",18)    )+"\"",
			"String.format(\"%-10d\",18) = \""+(   String.format("%-10d",18)   )+"\"",

			"",

			"組合せ",
			"String.format(\"%d年%d月%d日\",2007,7,14) = \""+(   String.format("%d年%d月%d日",2007,7,14)   )+"\"",
			"String.format(\"x = %+08.2f\",0.375)      = \""+(   String.format("x = %+08.2f",0.375)      )+"\"",

			"",

			"引数並び",
			"String.format(\"%3$d年%1$d月%2$d日\",7,14,2007) = \""+(   String.format("%3$d年%1$d月%2$d日",7,14,2007)   )+"\"",
			"String.format(\"%2$sは%2$s。%1$sは%1$s。\",\"あれ\",\"これ\") = \""+(   String.format("%2$sは%2$s。%1$sは%1$s。","あれ","これ")   )+"\""

		);

		Utility.pnl(2);

	}
}