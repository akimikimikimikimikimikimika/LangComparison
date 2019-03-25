
import java.io.*;

public class PathData {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	public static void main(String[] args) throws IOException{

		String thisClass = new Object(){}.getClass().getEnclosingClass().getName();

		println("ホームディレクトリ:       "+System.getProperty("user.home"));
		println("カレントディレクトリ:       "+System.getProperty("user.dir")+"\r\n");

		println("クラス名:   "+thisClass);

	}

}