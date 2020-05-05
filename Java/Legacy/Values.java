import java.util.*;

public class Values {
	public static void main(String[] args) {

		// 文字列
		String str=new String("ジャバ");

		// 文字
		char cha1='ﬁ';
		Character cha2=new Character(cha1);

		// 整数
		byte intB1=6;  // -2⁷ ~ 2⁷-1
		Byte intB2=new Byte(intB1);
		short intS1=6; // -2¹⁵ ~ 2¹⁵-1
		Short intS2=new Short(intS1);
		int intI1=6;   // -2³¹ ~ 2³¹-1
		Integer intI2=new Integer(intI1);
		long intL1=6;  // -2⁶³ ~ 2⁶³-1
		Long intL2=new Long(intL1);

		// 浮動小数
		float flt1=(float).375e-6;
		Float flt2=new Float(flt1);
		double dbl1=(double).375e-6;
		Double dbl2=new Double(dbl1);

		// 小文字のものはプリミティブ型,大文字のものはクラス型
		// しかし,互換性があるのか,プリミティブ型の値をクラス型の変数に代入しても問題ない

		// 真偽値
		boolean bool1=false;
		Boolean bool2=new Boolean(bool1);

		// 配列
		int[] arr1={3,1,4}; // サイズの変更は不可 (プリミティブな配列)
		ArrayList<Integer> arr2 = new ArrayList<Integer>();
		arr2.add(3);arr2.add(1);arr2.add(4);
		LinkedList<Integer> arr3 = new LinkedList<Integer>();
		arr3.add(3);arr3.add(1);arr3.add(4);
		List<Integer> arr4 = Arrays.asList(3,1,4);
		// ArrayList や LinkedList は List の子クラスである

		// 集合
		HashSet<Integer> set1 = new HashSet<Integer>();
		set1.add(3);set1.add(1);set1.add(4);
		TreeSet<Integer> set2 = new TreeSet<Integer>();
		set2.add(3);set2.add(1);set2.add(4);

		// マップ
		HashMap<String,String> map1 = new HashMap<String,String>();
		map1.put("first","3");map1.put("second","1");map1.put("third","4");
		TreeMap<String,String> map2 = new TreeMap<String,String>();
		map2.put("first","3");map2.put("second","1");map2.put("third","4");

		Utility.println(
			"",
			"色々な値を試します",
			"",

			"文字列",
			" String: "+str+" (Primitive)",
			"",
			"文字",
			" char: "+cha1+" (Primitive)",
			" Character: "+cha2,
			"",
			"整数",
			" byte: "+intB1+" (Primitive)",
			" Byte: "+intB2,
			" short: "+intS1+" (Primitive)",
			" Short: "+intS2,
			" int: "+intI1+" (Primitive)",
			" Integer: "+intI2,
			" long: "+intL1+" (Primitive)",
			" Long: "+intL2,
			"",
			"浮動小数点数",
			" float: "+flt1+" (Primitive)",
			" Float: "+flt2,
			" double: "+dbl1+" (Primitive)",
			" Double: "+dbl2,
			"",
			"真偽値",
			" boolean: "+bool1+" (Primitive)",
			" Boolean: "+bool2,
			"",
			"配列",
			" int[]: "+arr1,
			" ArrayList<Integer>: "+arr2,
			" LinkedList<Integer>: "+arr3,
			"",
			"集合",
			" HashSet<String>: "+set1,
			" TreeSet<String>: "+set2,
			"",
			"マップ",
			" HashMap<String,String>: "+map1,
			" TreeMap<String,String>: "+map2
		);

		/*
			Javaの型検査
			変数valが文字列型かどう判定する方法
			 val instanceof String → true/false
			※ val instanceof List<String> の代わりに val instanceof List<?> を使う。Java処理系内部ではどうやらListの中身の型は意識していないらしい。

			Javaの型変換

			int,Integer→String (long,floatなども同様)
			 • String.valueOf(intValue)
			 • Integer.toString(intValue)
			 • ""+intValue :数値は文字列として足し合わせることができる ("12"+3 → "123")

			String→int,Integer (long,floatなども同様)
			 • Integer.valueOf(text) → Integer
			 • Integer.parseInt(text) → int
			 ※ 文字列が数値表現でないとエラーになります

			数値同士の変換 (キャストのルールに準ずる)
			 小→大は代入すれば特に問題はない
				e.g. double x = 6;
			 大→小は明示的に型変換が必要
			 	e.g. int x = (int)6.0;

			Integer⇄int (long,float,booleanなども同様)
			 • new Integer(i) :int→Integer
			 • i.intValue() :Integer→int

			String[]⇄List<String> (プリミティブ型とクラス型の配列の変換)
			 • String[] a=l.toArray(new String[l.size()] {}); : List<String>→String[]
				toArrayの引数で配列の型を指定して要素数分の領域を確保するのが重要。
			 • List<String> l=Arrays.asList(a); : String[]→List<String>
			 ※ Javaでは可変個引数と配列型の引数の区別がないので, Arrays.asList を扱う際には注意が必要。例えば, String[][]→List<String[]> を扱う操作はややこしい。
		*/

		Utility.pnl(2);

	}

}