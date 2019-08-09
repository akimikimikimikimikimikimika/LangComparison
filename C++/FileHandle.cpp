#include <iostream>
#include <fstream>
#include <filesystem>
#include <cstdlib>
#include "Header.hpp"

using namespace std;
namespace fs = filesystem;

/*
	⚠︎ 注意
	ここで取り扱っている <filesystem> は,一部のコンパイラでしか作動しないコードである。
	取り扱いには十分に注意しなければならない。
*/

void FileHandle() {

	bool result;

	cout << endl << "これからファイル操作を試します" << endl << endl;

	cout << "> カレントディレクトリをホームに変更" << endl;
	fs::current_path(getenv("HOME")); // getenv : <cstdlib>

	cout << endl;

	// ファイル/フォルダ/シンボリックリンクの作成

	cout << "> Emptyという空フォルダを作成: ";
	result = fs::create_directory("Empty");
	cout << (result ? "成功" : "失敗") << endl;

	cout << "> Blankという空ファイルを作成" << endl;
	{
		ofstream io("Blank",ios_base::trunc);
		io.close(); // ofstream : <fstream>
	}

	cout << "> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成" << endl << endl;
	fs::create_symlink("Blank","Empty/Symlink");
	/*
		fs::create_symlink("Blank","Empty/Symlink")
			ディレクトリのシンボリックリンクは fs::create_symlink では作成できない場合があり,そんな場合でも確実にシンボリックリンクを生成する方法。
		fs::create_hard_link("Blank","Empty/Symlink")
			ハードリンクを生成する。
	*/

	// 書込み

	cout << "> Untitled.mdというMarkdownファイルを作成して書込み" << endl << endl;
	{
		ofstream io("Untitled.md",ios_base::out|ios_base::trunc);
		io << "# Header 1";
		io.close();
	}
	/*
		ファイルの書き込みを行う領域全体をブロックで囲むと便利

		{
			ofstream io("Untitled.md",ios_base::out);
			io << "# Header 1" << endl;
		}

		こうすることで,ファイルストリーム io は,ブロック内でのみ有効な変数となり,ブロックの終端に達すると io が破棄されて,同時に close() が自動的に実行されるため,本来は手動で呼び出す必要がない。
		※ close() はオブジェクト io のディストラクタになっている
	*/

	// 移動/名称変更

	cout << "> フォルダEmptyをPackageに名称変更" << endl;
	fs::rename("Empty","Package");
	cout << "> Packageフォルダ内のSymlinkファイルをAliasに名称変更" << endl;
	fs::rename("Package/Symlink","Package/Alias");
	cout << "> Untitled.mdを移動して,名称変更" << endl << endl;
	fs::rename("Untitled.md","Package/Headers.md");

	// 追記

	cout << "> Markdownファイルに追記" << endl << endl;
	{
		ofstream io("Package/Headers.md",ios_base::out|ios_base::app);
		io << endl << "## Header 2" << endl << "### Header 3";
		io.close();
	}
	/*
		ifstream,ofstream のオプション
		複数指定する場合は | で挟む (論理和ビット演算)

		ios_base::in     : 読込可能にする
		ios_base::out    : 書込可能にする
		ios_base::app    : 追加書込 (書込前にポジションを終端に移動)
		ios_base::trunc  : ファイルを新規作成する (既に存在していれば内容が消去される)
		ios_base::binary : バイナリを扱う
	*/

	// 読込み

	cout << endl << "> Markdownファイルを読込み" << endl;
	{
		ifstream io("Package/Headers.md",ios_base::in);
		string readText;
		while (io && getline(io,readText)) cout << readText << endl;
	}
	/*
		• 直接出力も可能 : cout << fh << endl;
		• stringの変数にデータを格納するのであれば,矢印演算子で
			io >> readText;
		としても大丈夫だが,charの場合は,サイズがわからないので,必ず次の方法で読み込むべきである。
			io.getline(readText,10);
		読み込む文字数を制限できるので,オーバーすることがない。
		コード中に使った方法はこれの応用であり,文字数を指定しない場合でも,1行毎に読み込まれて安定しやすい。
	*/

	cout << endl;

	// 再帰的にフォルダ作成
	cout << "> フォルダを一気に作成" << endl << endl;
	fs::create_directories("Package/Module/Submodule/Item");
		// fs::create_directoryの代わりにfs::create_directoriesを使うことで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

	// ファイル/フォルダの複製

	cout << "> BlankとModuleを複製" << endl << endl;
	fs::copy_file("Blank","Package/Blank");
	/*
		第3引数に上書きに関するオプションを指定できる (通常はファイルが存在しているとエラーになる)
		skip_existing
			コピー先に既にファイルが存在していればコピーしない
		overwrite_existing
			コピー先に既にファイルが存在していても上書きコピーする
		update_existing
			コピー先に既にファイルが存在していたら,そのファイルがより古い場合に上書きコピーする
	*/
	fs::copy("Package/Module","Package/Module Copy",fs::copy_options::recursive);
		// fs::copy_file,fs::copy_symlink とは異なり, fs::copy は何でもコピーできる
		// fs::copy::recursive とすることで,ディレクトリ内の内容も再帰的にコピーされる

	// ファイルの削除

	cout << endl << "> ファイルBlankを削除" << endl;
	result = fs::remove("Blank");

	cout << "> シンボリックリンクAliasを削除" << endl;
	result = fs::remove("Alias");

	cout << "> フォルダModuleを削除" << endl;
	result = fs::remove_all("Package/Module");
		// 空のフォルダはfs::removeで削除できる。空でない場合は削除できないことが多い。
		// fs::remove_all を使えば,空でなくても削除できる

	// 状態を確認する関数

	auto check=[](string pt) {

		fs::path p = fs::path(pt);

		cout << "   " << (fs::exists(p) ? "存在しています" : "存在していません") << endl;

		fs::file_status s = fs::status(p);
			/*
				fs::status はファイル/フォルダの状態を示す
				シンボリックリンクについては...
				fs::status : リンク先のファイルの状態を示す
				fs::symlink_status : シンボリックリンク自体の状態を示す
			*/
		if (fs::is_symlink(p)) {
			// s.type()==fs::file_type::symlink と等価
			cout << "   シンボリックリンクです" << endl;
			cout << "   リンク先: " << fs::read_symlink(p).native() << endl;
		}
		else if (fs::is_regular_file(p)) cout << "   ファイルです" << endl;
			// s.type()==fs::file_type::regular と等価
		else if (fs::is_directory(p)) cout << "   フォルダです" << endl;
			// s.type()==fs::file_type::directory と等価

		using pm = fs::perms;
		pm sp = s.permissions();
		if ((sp & pm::owner_read) == pm::owner_read) cout << "   読込可能です" << endl;
		if ((sp & pm::owner_write) == pm::owner_write) cout << "   書込可能です" << endl;
		if ((sp & pm::owner_exec) == pm::owner_exec) cout << "   実行可能です" << endl;

	};

	// 権限を確認/変更

	cout << "> ソースファイルを作成します" << endl;
	ofstream fh("Package/C++.cpp",ios_base::out|ios_base::trunc);
	fh << "#include <iostream>" << endl << endl;
	fh << "using namespace std;" << endl << endl;
	fh << "int main() {" << endl << endl;
	fh << "\tcout << \"Hello world!\" << endl;" << endl;
	fh << "\treturn 0;" << endl << endl;
	fh << "}";
	fh.close();

	cout << "> 実行ファイルを作成します" << endl;
	system("clang++ Package/C++.cpp -o Package/C++"); // system : <cstdlib>

	cout << "> このファイルに対する現在の状態を確認" << endl;
	check("Package/C++");

	cout << "> 読込/書込/実行権限を剥奪" << endl;
	fs::permissions("Package/C++",fs::perms(0044));
		/*
			fs::file_status s = fs::status("Package/C++");
			s.permissions(0044);
		*/

	cout << "> 状態を確認" << endl;
	check("Package/C++");

	cout << "> 読込/実行権限を付加" << endl;
	fs::permissions("Package/C++",fs::perms(0544));

	cout << "> 状態を確認" << endl;
	check("Package/C++");

	/*
		fs::permissionsは数値により権限を指定する
			4: 読込可能 (Readable)
			2: 書込可能 (Writable)
			1: 実行可能 (eXecutable)
		これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
		C++では8進数で表記するために,前に0を付加する
		e.g. fs::permissions(somefile,fs::perms(0754))
			ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
			ゲストは 5 = 4 + 1 だから,読込可能,実行可能
			その他は 4 だから,読込のみ可能
	*/

	cout << "> 実行" << endl;
	system("Package/C++");

	cout << endl << endl;

}