
import java.io.*;
import java.nio.file.*;
import java.util.Arrays;

public class FileHandle {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	private static String home = System.getProperty("user.home");

	// 状態を確認する関数
	private static void check(String path) throws IOException {
		Path pt = Paths.get(path);
		println("   "+(Files.exists(pt)?"存在しています":"存在していません"));
		if (Files.isSymbolicLink(pt)) {
			println("   シンボリックリンクです");
			println("   リンク先: "+Files.readSymbolicLink(pt));
			if (Files.isRegularFile(pt)) println("   リンク先はファイルです");
			if (Files.isDirectory(pt)) println("   リンク先はフォルダです");
		}
		else {
			if (Files.isRegularFile(pt, LinkOption.NOFOLLOW_LINKS)) println("   ファイルです");
			if (Files.isDirectory(pt, LinkOption.NOFOLLOW_LINKS)) println("   フォルダです");
		}
		if (Files.isReadable(pt))   println("   読込可能です");
		if (Files.isWritable(pt))   println("   書込可能です");
		if (Files.isExecutable(pt)) println("   実行可能です");
		if (Files.isHidden(pt)) println("   不可視項目です");
	}

	// シェルコマンドを実行する関数
	private static void exec(String ...args) {
		try{
			Process p = new ProcessBuilder(args).start();
			InputStream is = p.getInputStream();
			InputStreamReader isr = new InputStreamReader(is, "UTF-8");
			BufferedReader reader = new BufferedReader(isr);
			StringBuilder b = new StringBuilder();
			int c;
			while ((c = reader.read()) != -1) {
			   b.append((char)c);
			}
			// 実行結果を格納
			String text = b.toString();
			println(text);
			println("終了コード: "+p.waitFor());
		 }catch (IOException | InterruptedException e) {
			e.printStackTrace();
			try{println("処理が中断されました");}catch(IOException e2){}
		 }
	}

	public static void main(String[] args) throws IOException{

		println("\r\nこれからファイル操作を試します\r\n");

		println("> カレントディレクトリをホームに変更\r\n");
		System.setProperty("user.dir", home);

		// ファイル/フォルダ/シンボリックリンクの作成

		println("> Emptyという空フォルダを作成");
		Files.createDirectory(Paths.get("Empty"));
			// 既にEmptyという名前のファイル/フォルダが存在していれば,エラーを投げる

		println("> Blankという空ファイルを作成");
		Files.createFile(Paths.get("Blank"));
			// 既にBlankという名前のファイル/フォルダが存在していれば,エラーを投げる

		println("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成\r\n");
		Files.createSymbolicLink(Paths.get("Empty/Symlink"),Paths.get("Blank"));
			// 既にSymlinkという名前のファイル/フォルダが存在していれば,エラーを投げる
			// ハードリンクは File.createLink で生成する

		// 書込み

		println("> Untitled.mdというMarkdownファイルを作成して書込み\r\n");
		Files.write(Paths.get("Untitled.md"), Arrays.asList("# Header 1"), StandardOpenOption.CREATE);
			// オプションをCREATEからCREATE_NEWにすると,既にファイルが存在している場合はエラーになる
			// CREATEの場合は,既に存在している場合は上書きされる

		// 移動/名称変更

		println("> フォルダEmptyをPackageに名称変更");
		Files.move(Paths.get("Empty"), Paths.get("Package"), StandardCopyOption.REPLACE_EXISTING);
		println("> Packageフォルダ内のSymlinkファイルをAliasに名称変更");
		Files.move(Paths.get("Package/Symlink"), Paths.get("Package/Alias"), StandardCopyOption.REPLACE_EXISTING);
		println("> Untitled.mdを移動して,名称変更\r\n");
		Files.move(Paths.get("Untitled.md"), Paths.get("Package/Headers.md"), StandardCopyOption.REPLACE_EXISTING);

		// 追記

		println("> Markdownファイルに追記\r\n");
		Files.write(Paths.get("Package/Headers.md"), Arrays.asList("## Header 2\r\n### Header 3"), StandardOpenOption.APPEND);

		// 読込み

		println("> Markdownファイルを読込み\r\n");
		System.out.println(String.join("\r\n",Files.readAllLines(Paths.get("Package/Headers.md"))));

		// 再帰的にフォルダ作成
		println("> フォルダを一気に作成\r\n");
		Files.createDirectories(Paths.get("Package/Module/Submodule/Item"));

		// ファイル/フォルダの複製

		println("> Blankを複製\r\n");
		Files.copy(Paths.get("Blank"), Paths.get("Package/Blank"), StandardCopyOption.REPLACE_EXISTING);
		/*
			JDK標準ライブラリでディレクトリを再帰的にコピーする方法は存在しない
			外部のライブラリを用意するか,再帰的にコピーするコードを自分で書かねばならない
		*/

		// ファイルの削除

		println("> ファイルBlankを削除");
		Files.deleteIfExists(Paths.get("Blank"));
			// Files.deleteにすれば,既に存在しない場合はエラーになる

		println("> シンボリックリンクAliasを削除");
		Files.deleteIfExists(Paths.get("Package/Alias"));
		/*
			File.deleteやFile.deleteIfExistsは空のディレクトリも削除できるが,空でないディレクトリを削除しようとするとエラーになる。
			JDK標準ライブラリでディレクトリを再帰的に削除する方法は存在しない
			外部のライブラリを用意するか,再帰的に削除するコードを自分で書かねばならない
		*/

		println("> カレントディレクトリをPackageに変更");
		System.setProperty("user.dir", home+"/Package");

		println("> Javaソースファイルを生成します");
		Files.write(Paths.get("Java.java"), Arrays.asList(
			"import java.io.IOException;"+"\n"+
			"public class Java {"+"\n"+
			"public static void main(String[] args) throws IOException {"+"\n"+
			"System.out.println(\"Hello world!\");"+"\n"+
			"}"+"\n"+
			"}"
		), StandardOpenOption.CREATE);
		File fo = new File("Java.java");

		println("> このファイルに対する現在の状態を確認");
		check("Java.java");

		println("> 読込/書込権限を剥奪");
		fo.setReadable(false);
		fo.setWritable(false);

		println("> 状態を確認");
		check("Java.java");

		println("> 読込/実行権限を付加");
		fo.setReadable(true);
		fo.setExecutable(true);

		println("> 状態を確認");
		check("Java.java");

		println("> コンパイルして実行");
		exec("javac","Java.java");
		exec("java","Java");

	}

}