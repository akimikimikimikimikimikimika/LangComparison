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

		// 真偽値
		boolean bool=false;

		// 配列
		int[] arr1={3,1,4};
		ArrayList<Integer> arr2 = new ArrayList<Integer>();
		arr2.add(3);arr2.add(1);arr2.add(4);
		LinkedList<Integer> arr3 = new LinkedList<Integer>();
		arr3.add(3);arr3.add(1);arr3.add(4);

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
			" boolean: "+bool+" (Primitive)",
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

		Utility.nr(2);

	}

}