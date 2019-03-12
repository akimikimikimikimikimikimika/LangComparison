
import java.io.*;

public class FileHandle {

	private static PrintStream output = System.out;

	public static void main(String[] args) throws IOException{

		File thisFile = new File((new Object(){}.getClass().getEnclosingClass().getName())+".class");
		File thisAbsFile = thisFile.getAbsoluteFile();

		output.println("\r\nこれからファイル操作を試します\r\n");

		output.print("ホームディレクトリ:       "+System.getProperty("user.home")+"\r\n\r\n");

		output.print("このファイルのフルパス:   "+thisAbsFile.getPath()+"\r\n");
		output.print("cd内のこのファイルの位置: "+thisFile.getPath()+"\r\n");
		output.print("このファイルの名前:       "+thisFile.getName()+"\r\n");
		output.print("このファイルのある場所:   "+thisAbsFile.getParent()+"\r\n");

	}

}