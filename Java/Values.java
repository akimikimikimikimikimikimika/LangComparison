
import java.io.*;
import java.util.*;

public class Values {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}
	public static void main(String[] args) throws IOException{

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

		println("\r\n色々な値を試します");
		println("\r\n文字列");
		println(" String: "+str+" (Primitive)");
		println("\r\n文字");
		println(" char: "+cha1+" (Primitive)");
		println(" Character: "+cha2);
		println("\r\n整数");
		println(" byte: "+intB1+" (Primitive)");
		println(" Byte: "+intB2);
		println(" short: "+intS1+" (Primitive)");
		println(" Short: "+intS2);
		println(" int: "+intI1+" (Primitive)");
		println(" Integer: "+intI2);
		println(" long: "+intL1+" (Primitive)");
		println(" Long: "+intL2);
		println("\r\n浮動小数点数");
		println(" float: "+flt1+" (Primitive)");
		println(" Float: "+flt2);
		println(" double: "+dbl1+" (Primitive)");
		println(" Double: "+dbl2);
		println("\r\n真偽値");
		println(" boolean: "+bool+" (Primitive)");
		println("\r\n配列");
		println(" int[]: "+arr1);
		println(" ArrayList<Integer>: "+arr2);
		println(" LinkedList<Integer>: "+arr3);
		println("\r\n集合");
		println(" HashSet<String>: "+set1);
		println(" TreeSet<String>: "+set2);
		println("\r\nマップ");
		println(" HashMap<String,String>: "+map1);
		println(" TreeMap<String,String>: "+map2);

		println("\r\n");

	}

}