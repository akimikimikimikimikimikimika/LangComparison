
import java.io.*;

public class Condition {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	private static boolean test1 = true;
	private static boolean test2 = false;

	private static int val = 1;

	public static void main(String[] args) throws IOException{

		println("\r\nこれから条件分岐を試します\r\n");

		if (test1) {
			println("どうやらtest1は真のようです");
		}

		if (!test1) println("どうやらtest1は偽のようです");
		else if (test2) println("どうやらtest2は真のようです");
		else if (!test2&&test1) println("真偽が混在しているようです");
		else println("どれでもないようです");

		switch (val) {
			case 0:case 1:
				println(val+"は特別な値である");break;
			case 2:case 4:case 6:
				println(val+"は素数ではない");break;
			case 3:case 5:case 7:
				println(val+"は素数である");break;
			default:
				println(val+"なぞ私には興味がない");break;
		}

		println("\r\n");

	}

}