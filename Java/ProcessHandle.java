public class ProcessHandle {

	public static void main(String[] args) {

		Utility.println(
			"",
			"JRE (Java Runtime Environment)",
			"ベンダー:           "+System.getProperty("java.vendor"),
			"ベンダーURL:        "+System.getProperty("java.vendor.url"),
			"ベンダーバージョン: "+System.getProperty("java.vendor.version"),
			"バージョン:         "+System.getProperty("java.version"),
			"インストール:       "+System.getProperty("java.home"),
			"JITコンパイラ:      "+System.getProperty("java.compiler"),
			"仕様:               "+System.getProperty("java.specification.name"),
			"仕様ベンダー:       "+System.getProperty("java.specification.vendor"),
			"仕様バージョン:     "+System.getProperty("java.specification.version"),

			"",

			"JVM (Java Virtual Machine)",
			"JVM:                "+System.getProperty("java.vm.name"),
			"ベンダー:           "+System.getProperty("java.vm.vendor"),
			"バージョン:         "+System.getProperty("java.vm.version"),
			"仕様:               "+System.getProperty("java.vm.specification.name"),
			"仕様ベンダー:       "+System.getProperty("java.vm.specification.vendor"),
			"仕様バージョン:     "+System.getProperty("java.vm.specification.version"),

			"",

			"OS",
			"OS:         "+System.getProperty("os.name"),
			"バージョン: "+System.getProperty("os.version"),
			"プロセッサ: "+System.getProperty("os.arch")

		);

		Utility.pnl(3);

		Utility.println("では,3.14秒ほど居眠りします");
		try {
			Thread.sleep(3140);
		} catch (InterruptedException e) {}

	}

}