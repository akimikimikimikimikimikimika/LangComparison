public class Condition {

	private static boolean test1 = true;
	private static boolean test2 = false;

	private static int val = 8;

	public static void main(String[] args){

		Utility.nr(1);

		Utility.println("これから条件分岐を試します");

		if (test1) {
			Utility.println("どうやらtest1は真のようです");
		}

		if (!test1) Utility.println("どうやらtest1は偽のようです");
		else if (test2) Utility.println("どうやらtest2は真のようです");
		else if (!test2&&test1) Utility.println("真偽が混在しているようです");
		else Utility.println("どれでもないようです");

		switch (val) {
			case 0:case 1:
				Utility.println(val+"は特別な値である");break;
			case 8:case 9:case 10:
				Utility.println("これに隣接する数にも言えたりするが,");
				// breakを省くと,case 8,9,10を実行すれば,直下のcase 4,6も実行する
			case 4:case 6:
				Utility.println(val+"は素数ではない");break;
			case 2:case 3:case 5:case 7:
				Utility.println(val+"は素数である");break;
			default:
				Utility.println(val+"なぞ私には興味がない");break;
		}

		Utility.nr(2);

	}

}