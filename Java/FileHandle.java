
import java.io.*;
import java.nio.file.*;
import java.util.Arrays;

public class FileHandle {

	private static void println(String data) throws IOException{
		System.out.println(data);
	}

	private static String home = System.getProperty("user.home");

	// getPathメソッドにより,パス取得を簡略化
	private static Path getPath(String at) {
		return Paths.get(home, at);
	}

	public static void main(String[] args) throws IOException{

		println("\r\nこれからファイル操作を試します\r\n");

		// ファイル/フォルダ/シンボリックリンクの作成

		println("> Emptyという空フォルダを作成");
		Files.createDirectory(getPath("Empty"));
			// 既にEmptyという名前のファイル/フォルダが存在していれば,エラーを投げる

		println("> Blankという空ファイルを作成");
		Files.createFile(getPath("Blank"));
			// 既にBlankという名前のファイル/フォルダが存在していれば,エラーを投げる

		println("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成\r\n");
		Files.createSymbolicLink(getPath("Empty/Symlink"),getPath("Blank"));
			// 既にSymlinkという名前のファイル/フォルダが存在していれば,エラーを投げる
			// ハードリンクは File.createLink で生成する

		// 書込み

		println("> Untitled.mdというMarkdownファイルを作成して書込み\r\n");
		Files.write(getPath("Untitled.md"), Arrays.asList("# Header 1"), StandardOpenOption.CREATE);
			// オプションをCREATEからCREATE_NEWにすると,既にファイルが存在している場合はエラーになる
			// CREATEの場合は,既に存在している場合は上書きされる

		// 移動/名称変更

		println("> フォルダEmptyをPackageに名称変更");
		Files.move(getPath("Empty"), getPath("Package"), StandardCopyOption.REPLACE_EXISTING);
		println("> Packageフォルダ内のSymlinkファイルをAliasに名称変更");
		Files.move(getPath("Package/Symlink"), getPath("Package/Alias"), StandardCopyOption.REPLACE_EXISTING);
		println("> Untitled.mdを移動して,名称変更\r\n");
		Files.move(getPath("Untitled.md"), getPath("Package/Headers.md"), StandardCopyOption.REPLACE_EXISTING);

		// 追記

		println("> Markdownファイルに追記\r\n");
		Files.write(getPath("Package/Headers.md"), Arrays.asList("## Header 2\r\n### Header 3"), StandardOpenOption.APPEND);

		// 読込み

		println("> Markdownファイルを読込み\r\n");
		System.out.println(String.join("\r\n",Files.readAllLines(getPath("Package/Headers.md"))));

		// 再帰的にフォルダ作成
		println("> フォルダを一気に作成\r\n");
		Files.createDirectories(getPath("Package/Module/Submodule/Item"));

		// ファイル/フォルダの複製

		println("> Blankを複製\r\n");
		Files.copy(getPath("Blank"), getPath("Package/Blank"), StandardCopyOption.REPLACE_EXISTING);
		/*
			JDK標準ライブラリでディレクトリを再帰的にコピーする方法は存在しない
			外部のライブラリを用意するか,再帰的にコピーするコードを自分で書かねばならない
		*/

		// ファイルの削除

		println("> ファイルBlankを削除");
		Files.deleteIfExists(getPath("Blank"));
			// Files.deleteにすれば,既に存在しない場合はエラーになる

		println("> シンボリックリンクAliasを削除");
		Files.deleteIfExists(getPath("Package/Alias"));
		/*
			File.deleteやFile.deleteIfExistsは空のディレクトリも削除できるが,空でないディレクトリを削除しようとするとエラーになる。
			JDK標準ライブラリでディレクトリを再帰的に削除する方法は存在しない
			外部のライブラリを用意するか,再帰的に削除するコードを自分で書かねばならない
		*/

		println("> 権限を確認します");
		check("Package");

	}

	// 状態を確認する関数
	private static void check(String path) throws IOException {
		Path pt = getPath(path);
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

}