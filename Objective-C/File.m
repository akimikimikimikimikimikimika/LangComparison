#import "Header.h"

void File() {

	NSFileManager* fm = [NSFileManager defaultManager];
	NSError* err = nil;

	printLn2(1,@"これからファイル操作を試します",1);

	printLn(@"> カレントディレクトリをホームに変更",1);
	[fm changeCurrentDirectoryPath:
		[[fm homeDirectoryForCurrentUser] path]
	];

	// ファイル/フォルダ/シンボリックリンクの作成

	printLn(@"> Emptyという空フォルダを作成",1);
	[fm createDirectoryAtPath:@"Empty" withIntermediateDirectories:NO attributes:0 error:&err];

	printLn(@"> Blankという空ファイルを作成",1);
	[fm createFileAtPath:@"Blank" contents:nil attributes:0];

	printLn(@"> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成",2);
	[fm createSymbolicLinkAtPath:@"Empty/Symlink" withDestinationPath:@"Blank" error:&err];
		// [fm linkItemAtPath:@"Empty/Hardlink" toPath:@"Blank" error:&err]; とすると,ハードリンクが作成される

		// AtPath でパスを指定するメソッドは AtURL に書き換えることでNSURLを指定することもできる

	// 書込み

	printLn(@"> Untitled.mdというMarkdownファイルを作成して書込み",2);
	[fm
		createFileAtPath:@"Untitled.md"
		contents:[@"# Header 1" dataUsingEncoding:NSUTF8StringEncoding]
		attributes:0];
		/*
			或いは
			[@"# Header 1" writeToFile:@"Untitled.md" atomically:NO encoding:NSUTF8StringEncoding error:&err];
				※ atomicallyをtrueにすると,一度別の位置にファイルを書き込んでから,所定の位置にそのファイルを移動させる。こうすることで,システムがクラッシュしても,書き込んだデータは保証される
		*/

	// 移動/名称変更

	printLn(@"> フォルダEmptyをPackageに名称変更",1);
	[fm moveItemAtPath:@"Empty" toPath:@"Package" error:&err];
	printLn(@"> Packageフォルダ内のSymlinkファイルをAliasに名称変更",1);
	[fm moveItemAtPath:@"Package/Symlink" toPath:@"Package/Alias" error:&err];
	printLn(@"> Untitled.mdを移動して,名称変更",2);
	[fm moveItemAtPath:@"Untitled.md" toPath:@"Package/Headers.md" error:&err];
		// 移動先に既にファイル/フォルダが存在していれば,エラーが発生する

	printLn(@"> Markdownファイルに追記",2);
	NSFileHandle* io = [NSFileHandle fileHandleForWritingAtPath:@"Package/Headers.md"];
	/*
		所定の位置にファイルが存在しなければ, fileHandleForWritingAtPath: はnilを返す
		fileHandleForWritingAtPath:  : 書込専用
		fileHandleForReadingAtPath:  : 読込専用
		fileHandleForUpdatingAtPath: : 読込/書込
	*/
	[io seekToEndOfFile];
	[io
		writeData:[@"\r\n## Header 2\r\n### Header 3"
		dataUsingEncoding:NSUTF8StringEncoding]
		error:&err
	];
		/*
			[io writeData] は書込開始位置から書き込み,書込開始位置を書込データの末尾に移動させる
			追記用のファイルハンドラは用意されていないが, [io seekToEndOfFile] により書込開始位置をファイル末尾に移動させることで,これと同様の機能を実現できる。しかし,このメソッドは廃止される予定だ。
			勿論だが, [io seekToEndOfFile] を省けば先頭から書き込むことになる。しかし,この場合,新たに書き込む内容が既にファイルに書き込まれているデータよりも少ない場合,前のデータが残ってしまうことがある。それを防ぐには, [fm createFile] を使った方が手っ取り早い。この場合,ファイルが既に存在していても上書きされるだけである。
		*/
	[io closeFile];

	// 読込み

	printLn(@"> Markdownファイルを読込み",2);
	NSString* readText = [[NSString alloc]
		initWithData:[fm contentsAtPath:@"Package/Headers.md"]
		encoding:NSUTF8StringEncoding
	];
	/*
		或いは

		NSString* readText = [NSString
			stringWithContentsOfFile:@"Package/Headers.md"
			encoding:NSUTF8StringEncoding error:&err
		];

		NSFileHandle io = [NSFileHandle fileHandleForReadingAtPath:@"Package/Headers.md"];
		NSString* readText = [[NSString alloc]
			initWithData:[io readDataToEndOfFile]
			encoding:NSUTF8StringEncoding
		];
		[io closeFile];

		NSString* readData = [NSData dataWithContentsOfFile:@"Package/Headers.md"];
		NSString* readText = [[NSString alloc] initWithData:readData encoding:NSUTF8StringEncoding];

	*/
	printLn(readText,3);

	// 再帰的にフォルダ作成

	printLn(@"> フォルダを一気に作成",2);
	[fm createDirectoryAtPath:@"Empty" withIntermediateDirectories:YES attributes:0 error:&err];
		// withIntermediateDirectoriesをtrueにすることで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

	// ファイル/フォルダの複製

	printLn(@"> BlankとModuleを複製",2);
	[fm copyItemAtPath:@"Blank" toPath:@"Package/Blank" error:&err];
	[fm copyItemAtPath:@"Package/Module" toPath:@"Package/Module Copy" error:&err];
		// 特に指定しなくても,フォルダを複製しようとしていたら, copyItem は自動的にフォルダ内の内容もまとめて複製する
		// 複製先に既にファイル/フォルダが存在していれば,エラーが発生する

	// ファイル/フォルダの削除

	printLn(@"> ファイルBlankを削除",1);
	[fm removeItemAtPath:@"Blank" error:&err];
	printLn(@"> シンボリックリンクAliasを削除",1);
	[fm removeItemAtPath:@"Package/Alias" error:&err];
	printLn(@"> フォルダModuleを削除",2);
	[fm removeItemAtPath:@"Package/Module" error:&err];
		// 特に指定しなくても,フォルダを削除しようとしていたら,フォルダの中身の有無を問わず, removeItem はフォルダを削除してくれる
		// 削除するものがなければエラーが発生する
		// システムのゴミ箱に捨てるのであれば, [fm trashItemAtURL:[NSURL fileURLWithPath:@"Package/Module"] resultingItemURL:nil error:&err] を用いる

	// 権限を確認/変更
	printLn(@"> 実行ファイルを作成します",1);
	[fm
		createFileAtPath:@"Package/Objective-C.m"
		contents:[
			[
				@[
					@"#import <Foundation/Foundation.h>",
					@"",
					@"int main(int argc,char* argv[]) {",
					@" NSLog(@\"Hello world!\");",
					@" return 0;",
					@"}"
				]
				componentsJoinedByString:@"\n"
			]
			dataUsingEncoding:NSUTF8StringEncoding
		]
		attributes:0
	];

	printLn(@"> このファイルに対する現在の状態を確認",1);
	check(@"Package/Objective-C.m");

	printLn(@"> 実行ファイルを作成します",1);
	[[NSTask
		launchedTaskWithExecutableURL:[NSURL fileURLWithPath:@"/usr/bin/clang"]
		arguments:@[@"Package/Objective-C.m",@"-framework",@"Foundation",@"-ObjC",@"-O3",@"-o",@"Package/Objective-C"]
		error:&err
		terminationHandler:nil
	] waitUntilExit];

	printLn(@"> 読込/書込/実行権限を剥奪",1);
	[fm
		setAttributes:@{NSFilePosixPermissions:@36}
		ofItemAtPath:@"Package/Objective-C"
		error:&err
	];

	printLn(@"> 状態を確認",1);
	check(@"Package/Objective-C");

	printLn(@"> 読込/実行権限を付加",1);
	[fm
		setAttributes:@{NSFilePosixPermissions:@356}
		ofItemAtPath:@"Package/Objective-C"
		error:&err
	];

	printLn(@"> 状態を確認",1);
	check(@"Package/Objective-C");

	/*
		ファイル属性 NSFilePosixPermissions は数値により権限を指定する
			4: 読込可能 (Readable)
			2: 書込可能 (Writable)
			1: 実行可能 (eXecutable)
		これらの和を3つ並べた8進数を考える。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。8進数を10進数に変換して表現する。
		e.g. chmod 0754
			ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
			ゲストは 5 = 4 + 1 だから,読込可能,実行可能
			その他は 4 だから,読込のみ可能
	*/

	printLn(@"> 実行",1);
	[[NSTask
		launchedTaskWithExecutableURL:[NSURL fileURLWithPath:@"Package/Objective-C"]
		arguments:[NSArray array]
		error:&err
		terminationHandler:nil
	] waitUntilExit];

	nl(1);

}

// 状態を確認する関数
void check(NSString* pt) {
	NSFileManager* fm = [NSFileManager defaultManager];
	if ([fm fileExistsAtPath:pt]) printLn(@"   存在しています",1);
	else printLn(@"   存在していません",1);
	if ([fm isReadableFileAtPath:pt]) printLn(@"   読込可能です",1);
	if ([fm isWritableFileAtPath:pt]) printLn(@"   書込可能です",1);
	if ([fm isExecutableFileAtPath:pt]) printLn(@"   実行可能です",1);
	if ([fm isDeletableFileAtPath:pt]) printLn(@"   削除可能です",1);
	if ([fm isUbiquitousItemAtURL:[NSURL fileURLWithPath:pt]]) printLn(@"   iCloudに保存されています",1);
}