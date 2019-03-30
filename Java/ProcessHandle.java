import java.io.*;

public class ProcessHandle {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}
	public static void main(String[] args) throws IOException{

        println("\r\nJRE (Java Runtime Environment)");
        println("ベンダー:           "+System.getProperty("java.vendor"));
        println("ベンダーURL:        "+System.getProperty("java.vendor.url"));
        println("ベンダーバージョン: "+System.getProperty("java.vendor.version"));
        println("バージョン:         "+System.getProperty("java.version"));
        println("インストール:       "+System.getProperty("java.home"));
        println("JITコンパイラ:      "+System.getProperty("java.compiler"));
        println("仕様:               "+System.getProperty("java.specification.name"));
        println("仕様ベンダー:       "+System.getProperty("java.specification.vendor"));
        println("仕様バージョン:     "+System.getProperty("java.specification.version"));

		println("\r\nJVM (Java Virtual Machine)");
        println("JVM:                "+System.getProperty("java.vm.name"));
        println("ベンダー:           "+System.getProperty("java.vm.vendor"));
        println("バージョン:         "+System.getProperty("java.vm.version"));
		println("仕様:               "+System.getProperty("java.vm.specification.name"));
        println("仕様ベンダー:       "+System.getProperty("java.vm.specification.vendor"));
        println("仕様バージョン:     "+System.getProperty("java.vm.specification.version"));

		println("\r\nOS");
		println("OS:         "+System.getProperty("os.name"));
        println("バージョン: "+System.getProperty("os.version"));
        println("プロセッサ: "+System.getProperty("os.arch"));

		println("\r\n\r\n\r\nでは,3.14秒ほど居眠りします");
		try {
			Thread.sleep(3140);
		} catch (InterruptedException e) {}

    }

}