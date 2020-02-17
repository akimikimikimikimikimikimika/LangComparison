public class PathData {

	public static void main(String[] args) {

		String thisClass = new Object(){}.getClass().getEnclosingClass().getName();

		Utility.println(
			"ホームディレクトリ:   "+System.getProperty("user.home"),
			"カレントディレクトリ: "+System.getProperty("user.dir"),

			"",

			"クラス名: "+thisClass
		);

	}

}