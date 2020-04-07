#! /usr/bin/env node

let fs = require("fs");
let os = require("os");
let process = require("process");
let child_process = require("child_process");
let u=require("./Utility.js");
let e=exports;

e.Files=()=>{

	u.pnl(1);

	u.println("これからファイル操作を試します",2);

	u.println("> カレントディレクトリをホームに変更",2);
	process.chdir(os.homedir());

	/*
		Node.js ではファイル操作をする関数が同期処理用と非同期処理用の2つが用意されている。
		非同期処理用のものは,その関数を実行した直後の行から,関数内の処理内容と並列的に進行する。関数を実行し終えた後に実行したい内容は,関数にコールバック関数として渡す。
		同期処理用のものは,その関数を実行した時点で,その直後の行以降の内容は一旦中断される。関数を実行し終えてから直後の行から実行を再開する。
		e.g.
			mkdir(path,callbackFn) : 非同期処理用関数
			mkdirSync(path) : 同期処理用関数
	*/

	u.println("> Emptyという空フォルダを作成",1);
	fs.mkdirSync("Empty");

	u.println("> Blankという空ファイルを作成",1);
	fs.writeFileSync("Blank","");
		// writeFileは既にファイルが存在していれば置換する。

	u.println("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成",2);
	fs.symlinkSync("Blank","Empty/Symlink");
		// fs.linkSync("Blank","Empty/Symlink") とすると,ハードリンクが作成される
		/*
			fs.symlinkSync(target,dst,type)
			typeはWindowsのみ影響のある引数 (他のOSでは無視される)
			"file","dir","junction" のうちから選択する
			"file","dir"の場合は引数がなくてもtarget引数の指し示すものから自動的に判別する
		*/

	// 書込み

	u.println("> Untitled.mdというMarkdownファイルを作成して書込み",2);
	fs.writeFileSync("Untitled.md","# Header 1");

	// 移動/名称変更

	u.println("> フォルダEmptyをPackageに名称変更",1);
	fs.renameSync("Empty","Package");
	u.println("> Packageフォルダ内のSymlinkファイルをAliasに名称変更",1);
	fs.renameSync("Package/Symlink","Package/Alias");
	u.println("> Untitled.mdを移動して,名称変更",2);
	fs.renameSync("Untitled.md","Package/Headers.md");

	// 追記

	u.println("> Markdownファイルに追記",2);
	fs.appendFileSync(
		"Package/Headers.md",
		nl()+"## Header 2"+nl(1)+"### Header 3"
	);

	// 読込み

	u.println("> Markdownファイルを読込み",2);
	u.println(fs.readFileSync("Package/Headers.md","utf-8"),3);
		// オプションで "utf-8" を指定しないとバッファデータが返される

	// 再帰的にフォルダ作成

	u.println("> フォルダを一気に作成",2);
	fs.mkdirSync("Package/Module/Submodule/Item",{recursive:true});
		// mkdirSyncのオプションで recursive:true とすることで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される
		// 他のオプションとして,フォルダの権限を指定するmodeもある

	// ファイル/フォルダの複製

	u.println("> BlankとModuleを複製",2);
	fs.copyFileSync("Blank","Package/Blank");
		// フォルダの複製は Node.js 標準のモジュールだけではできない

	// ファイル/フォルダの削除

	u.println("> ファイルBlankを削除",1);
	fs.unlinkSync("Blank");

	u.println("> シンボリックリンクAliasを削除",2);
	fs.unlinkSync("Package/Alias");

	// console.log("> フォルダModuleを削除");
	// fs.rmdirSync("Package/Module");
		// フォルダをunlinkSyncで削除することはできない
		// 逆に,ファイルやシンボリックリンクをrmdirSyncで削除することもできない
		// フォルダは空の場合のみfs.rmdirSyncで削除できる
		// 空でないフォルダは Node.js 標準モジュールでは削除できない

	u.println("> 実行ファイルを作成します");
	fs.writeFileSync("Package/JavaScript.js",clean(`#! /usr/bin/env node

		console.log("Hello world!");
	`));

	u.println("> このファイルに対する現在の状態を確認");
	check("Package/JavaScript.js");

	u.println("> 読込/書込権限を剥奪");
	fs.chmodSync("Package/JavaScript.js",0o044);

	u.println("> 状態を確認");
	check("Package/JavaScript.js");

	u.println("> 読込/実行権限を付加");
	fs.chmodSync("Package/JavaScript.js",0o544);

	u.println("> 状態を確認");
	check("Package/JavaScript.js");

	/*
		fs.chmodSyncは数値により権限を指定する
			4: 読込可能 (Readable)
			2: 書込可能 (Writable)
			1: 実行可能 (eXecutable)
		これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
		JavaScriptでは8進数で表記するために,前に0oを付加する
		e.g. fs.chmodSync(somefile,0o754)
			ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
			ゲストは 5 = 4 + 1 だから,読込可能,実行可能
			その他は 4 だから,読込のみ可能
	*/

	u.println("> 実行");
	u.println(child_process.execSync("Package/JavaScript.js").toString());
		// execSyncの戻り値は標準出力のデータのバッファである。toStringで文字列化する。

	u.pnl(2);

};

// 状態を確認する関数
let check=pt=>{
	if (fs.existsSync(pt)) console.log("   存在しています");
	else console.log("   存在していません");

	if (fs.existsSync(pt)) {
		stat=fs.statSync(pt);
		if (stat.isSymbolicLink()) {
			console.log("   シンボリックリンクです");
			console.log(`   リンク先: ${fs.readlinkSync(pt)}`);
			if (stat.isFile()) console.log("   リンク先はファイルです");
			if (stat.isDirectory()) console.log("   リンク先はフォルダです");
		}
		else {
			if (stat.isFile()) console.log("   ファイルです");
			if (stat.isDirectory()) console.log("   フォルダです");
		}
		if (stat.mode & fs.constants.S_IRUSR) console.log("   読込可能です");
		if (stat.mode & fs.constants.S_IWUSR) console.log("   書込可能です");
		if (stat.mode & fs.constants.S_IXUSR) console.log("   実行可能です");
	}
};

if (!module.parent) e.Files();