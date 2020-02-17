public class Loop {

	public static void main(String[] args) {

		Utility.nr(1);

		Utility.println("これからループ処理を試します","");

		Utility.println("","for (int n=0;n<3;n++) {…}");
		for (int n=0;n<3;n++) Utility.println("n="+n+" のループ");

		Utility.println("","for (int n=0,m=2;n<3;n++,m=m+3) {…}");
		for (int n=0,m=2;n<3;n++,m=m+3) {
			Utility.println("n="+n+" のループ このとき,m="+m);
		}

		Utility.println("","for (char c:array) {…}");
		char[] cs={'壱','弐','参'};
		for (char c:cs) Utility.println("c='"+c+"' のループ");

		Utility.println("","while (~) {…}");
		String str="";
		while (str.length()<6) {
			str+="*";
			Utility.println(str);
		}

		Utility.println("","do {…} while (~)");
		str="";
		do {
			str+="*";
			Utility.println(str);
		} while (str.length()<6);

		Utility.nr(2);

	}

}