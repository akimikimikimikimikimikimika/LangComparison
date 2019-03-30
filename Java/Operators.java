
import java.io.*;

public class Operators {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	private static int b2d(String bin) {
		return Integer.parseInt(bin,2);
	}

	private static String d2b(int len,int dec) {
		String bin=Integer.toString(dec,2);
		int pad=Math.max(len, bin.length())-bin.length();
		for (int n=0;n<pad;n++) bin="0"+bin;
		bin="0b"+bin;
		return bin;
	}

	private static Object obj = new Object();

	public static void main(String[] args) throws IOException{

		println("これから演算子を試します");

		println("\r\n算術演算子");
		println("24   + 5 = "+(   24   + 5   ));
		println("24   - 5 = "+(   24   - 5   ));
		println("24   * 5 = "+(   24   * 5   ));
		println("24.0 / 5 = "+(   24.0 / 5   ));
		println("24   % 5 = "+(   24   % 5   ));

		println("\r\n比較演算子");
		println("24 >  5 = "+(   24 >  5   ));
		println("24 >= 5 = "+(   24 >= 5   ));
		println("24 <  5 = "+(   24 <  5   ));
		println("24 <= 5 = "+(   24 <= 5   ));
		println("24 == 5 = "+(   24 == 5   ));
		println("24 != 5 = "+(   24 != 5   ));

		println("\r\n論理演算子");
		println("true && false = "+(   true && false   ));
		println("true || false = "+(   true || false   ));
		println("      ! false = "+(         ! false   ));

		println("\r\nビット演算子");
		println("0b1010 & 0b1001  = "+d2b(4,   b2d("1010") & b2d("1001")   )+" (AND)");
		println("0b1010 | 0b1001  = "+d2b(4,   b2d("1010") | b2d("1001")   )+" (OR)");
		println("0b1010 ^ 0b1001  = "+d2b(4,   b2d("1010") ^ b2d("1001")   )+" (XOR)");
		println("       ~ 0b1001  = "+d2b(4,               ~ b2d("1001")   +16)+" (NOT)\r\n");

		println("0b00111111  << 2 = "+d2b(8,   b2d("00111111")  << 2   )+" (2桁左シフト)");
		println("0b00111111  >> 2 = "+d2b(8,   b2d("00111111")  >> 2   )+" (2桁右シフト)");
		println("0b00111111 >>> 2 = "+d2b(8,   b2d("00111111") >>> 2   )+" (2桁右シフト)");

		println("\r\n同一物か確認する演算子");
		println("obj == obj = "+(   obj == obj   ));
		println("obj != obj = "+(   obj != obj   ));

		println("\r\n文字列比較");
		println("\"abc\".equals(\"abc\") = "+(   "abc".equals("abc")   ));

		println("\r\n三項演算子");
		println(" true ? \"yes\" : \"no\" = \""+(    true ? "yes" : "no"   )+"\"");
		println("false ? \"yes\" : \"no\" = \""+(   false ? "yes" : "no"   )+"\"");

		println("\r\n");

	}
}
/*
	16進数の1桁 = 2進数の4桁
	バイナリ演算は, 32ビット (0x00000000 ~ 0xffffffff) で行うものだが,
	-x ≔ ~x + 1 の関係がある。つまり,ある数の負数とは,ある数を(32ビットの範囲で)ビット反転させ,1加えた数と同等に32ビットで表すことにしている。因みに,
		~x のことを,xの 1の補数 といい,
		-x のことを,xの 2の補数 という。
	本来, >> は符号を変化させずに右シフトする, >>> は強制的に0埋め右シフトする,というものであったが,それは結果的に, >> は32ビット最上位の桁で埋めながら右シフトという意味にも捉えられる。
*/
/*
	XOR = eXclusive OR (排他的論理和)
	AND : 両方が 1(true) であれば, 1(true) になる
	XOR : 一方が 1(true) であれば, 1(true) になる
	OR : 一方/両方が 1(true) であれば, 1(true) になる
	NOT : 1(true) と 0(false) を逆転させる

	ビット演算において,演算の内容を分かりやすくするため,意図的に本来の値から改変させたところがある
	• AND,OR,XOR,NOT においては,0埋めにより演算後も4桁が維持されるようにした (本来はない桁があったりする)
	• ビットシフトにおいては,0埋めにより演算後も8桁が維持されるようにした
	• NOT を通常通りに計算すると,これまでなかった桁も0と見做してビット反転するため,膨大な数になる。それを防止するため,5桁目以降を切り捨てる処理をした (右端の+16)
*/

/*
	その他に...
	複合代入演算子 : += -= *= /= %= **= &= |= ^= <<= >>= >>>=
		a += b は a= a + b と同義。その他も同様
	加算子/減算子: ++ --
		e.g.
			a=5
			b=a++
			a=5
			c=++a
			→ aは,1増加して 6 に変化し,bには加算前の 5 が代入され,cには加算後の 6 が代入される
*/