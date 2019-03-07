
import java.io.*;
import java.util.*;

public class Values {

	private static PrintStream output = System.out;
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
		map.put("first","3");map.put("second","1");map.put("third","3");

		output.println("\n色々な値を試します\n");
		output.print("\n\n文字列");
		output.print("\n String: ");output.print(str);
		output.print("\n\n真偽値");
		output.print("\n boolean: ");output.print(bool);
		output.print("\n\n文字");
		output.print("\n char: ");output.print(cha1);
		demoValue("Character", cha2);
		output.print("\n\n整数");
		output.print("\n byte: ");output.print(intB1);
		demoValue("Byte", intB2);
		output.print("\n short: ");output.print(intS1);
		demoValue("Short", intS2);
		output.print("\n int: ");output.print(intI1);
		demoValue("Integer", intI2);
		output.print("\n long: ");output.print(intL1);
		demoValue("Long", intL2);
		output.print("\n\n浮動小数点数");
		output.print("\n float: ");output.print(flt1);
		demoValue("Float", flt2);
		output.print("\n double: ");output.print(dbl1);
		demoValue("Double", dbl2);
		output.print("\n\n配列");
		output.print("\n int[]: ");output.print(arr1);
		demoValue("ArrayList<Integer>", arr2);
		demoValue("LinkedList<Integer>", arr3);
		output.print("\n\nマップ");
		demoValue("HashMap<String,String>", map);
		output.print("\n\n");

	}

	private static void demoValue(String key, Object value) {
		output.print("\n "+key+": ");
		output.print(value);
	}

}