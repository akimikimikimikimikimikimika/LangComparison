
import java.io.*;
import java.util.*;

public class Values {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}
	public static void main(String[] args) throws IOException{

		String str=new String("ジャバ");

		boolean bool=false;
		char cha1='ﬁ';
		Character cha2=new Character(cha1);
		byte intB1=6;  // -128~127
		Byte intB2=new Byte(intB1);
		short intS1=6; // -32768~32767
		Short intS2=new Short(intS1);
		int intI1=6;   // -2147483648~2147483647
		Integer intI2=new Integer(intI1);
		long intL1=6;  // -9223372036854775808~9223372036854775807
		Long intL2=new Long(intL1);
		float flt1=(float)3.14;
		Float flt2=new Float(flt1);
		double dbl1=(double)3.14;
		Double dbl2=new Double(dbl1);
		int[] arr1={3,1,4};
		ArrayList<Integer> arr2 = new ArrayList<Integer>();
		arr2.add(3);arr2.add(1);arr2.add(4);
		LinkedList<Integer> arr3 = new LinkedList<>();
		arr3.add(3);arr3.add(1);arr3.add(4);
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("first","3");map.put("second","1");map.put("third","4");

		println("\r\n色々な値を試します");
		println("\r\n文字列");
		println(" String: "+str+" (Primitive)");
		println("\r\n真偽値");
		println(" boolean: "+bool+" (Primitive)");
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
		println("\r\n配列");
		println(" int[]: "+arr1);
		println(" ArrayList<Integer>: "+arr2);
		println(" LinkedList<Integer>: "+arr3);
		println("\r\nマップ");
		println(" HashMap<String,String>: "+map);

		println("\r\n");

	}

	private static void demoValue(String key, Object value) throws IOException {
		println(" "+key+": ");
		System.out.println(value);
	}

}