
public class Strings {

	public static void main(String[] args) {

		Utility.println(

			"",
			"これから文字列を試します",

			"",

			"長さ",
			"\"ジャバ\".length() = "+(   "ジャバ".length()   ),

			"",

			"大文字/小文字の切替",
			"\"Java STRING demo\" →",
			".toUpperCase() = \""+(   "Java STRING demo".toUpperCase()   )+"\"",
			".toLowerCase() = \""+(   "Java STRING demo".toLowerCase()   )+"\"",

			"",

			"検索",
			"\"abracadabra\" →",
			".contains(\"a\")   = "+(   "abracadabra".contains("a")   ),
			".startsWith(\"a\") = "+(   "abracadabra".startsWith("a")   ),
			".endsWith(\"a\")   = "+(   "abracadabra".endsWith("a")   ),
			".indexOf(\"acad\") = "+(   "abracadabra".indexOf("acad")   ),
			".lastIndexOf(\"acad\") = "+(   "abracadabra".lastIndexOf("acad")   ),

			"",

			"部分文字列の取り出し",
			"\"string\" →",
			".substring(1,3) = \""+(   "string".substring(1,3)   )+"\"", // pick 1≦x<3

			"",

			"前後の空白の除去",
			"\"   redundant   \".trim() = \""+(   "   redundant   ".trim()   )+"\""

		);

		Utility.pnl(2);

	}
}