
import Foundation

func File() {
	do{

		let fm = FileManager.default

		print("\r\nこれからファイル操作を試します\r\n")

		print("> カレントディレクトリをホームに変更\r\n")
		fm.changeCurrentDirectoryPath(fm.homeDirectoryForCurrentUser.path)

		// ファイル/フォルダ/シンボリックリンクの作成

		print("> Emptyという空フォルダを作成")
		try fm.createDirectory(atPath: "Empty", withIntermediateDirectories: false, attributes: nil)

		print("> Blankという空ファイルを作成")
		fm.createFile(atPath: "Blank", contents: nil, attributes: nil)

		print("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成\r\n")
		try fm.createSymbolicLink(atPath: "Empty/Symlink", withDestinationPath: "Blank")
			// fm.linkItem(atPath: "Empty/Hardlink", toPath: "Blank") とすると,ハードリンクが作成される

			// atPath でパスを指定するメソッドは atURL に書き換えることでURLオブジェクトを指定することもできる

		// 書込み

		print("> Untitled.mdというMarkdownファイルを作成して書込み\r\n")
		fm.createFile(atPath: "Untitled.md", contents:"# Header 1".data(using: .utf8), attributes:nil)
			/*
				或いは
				try "# Header 1".write(toFile: "Untitled.md", atomically: false, encoding: .utf8)
					※ atomicallyをtrueにすると,一度別の位置にファイルを書き込んでから,所定の位置にそのファイルを移動させる。こうすることで,システムがクラッシュしても,書き込んだデータは保証される
			*/

		// 移動/名称変更

		print("> フォルダEmptyをPackageに名称変更")
		try fm.moveItem(atPath: "Empty", toPath: "Package")
		print("> Packageフォルダ内のSymlinkファイルをAliasに名称変更")
		try fm.moveItem(atPath: "Package/Symlink", toPath: "Package/Alias")
		print("> Untitled.mdを移動して,名称変更\r\n")
		try fm.moveItem(atPath: "Untitled.md", toPath: "Package/Headers.md")
			// 移動先に既にファイル/フォルダが存在していれば,エラーが発生する

		// 追記

		print("> Markdownファイルに追記\r\n")
		let io = FileHandle(forWritingAtPath: "Package/Headers.md")!
			/*
				所定の位置にファイルが存在しなければ, FileHandle(forWritingAtPath:) はnilを返す
				FileHandle(forWritingAtPath:)  : 書込専用
				FileHandle(forReadingAtPath:)  : 読込専用
				FileHandle(forUpdatingAtPath:) : 読込/書込
			*/
		io.seekToEndOfFile()
		io.write("\r\n## Header 2\r\n### Header 3".data(using: .utf8)!)
			/*
				io.write は書込開始位置から書き込み,書込開始位置を書込データの末尾に移動させる
				Swiftには,追記用のファイルハンドラは用意されていないが, io.seekToEndOfFile() により書込開始位置をファイル末尾に移動させることで,これと同様の機能を実現できる
			*/
		io.closeFile()

		// 読込み

		print("> Markdownファイルを読込み\r\n")
		let readText = String(data: fm.contents(atPath: "Package/Headers.md")!, encoding: .utf8)
			/*
				或いは

				let readText = try String(contentsOfFile: "Package/Headers.md")

				let readText = NSString(contentsOfFile: "Package/Header.md", encoding: NSUTF8StringEncoding)

				let io = FileHandle(forReadingAtPath: "Package/Headers.md")!
				let readText = String(data: io.readDataToEndOfFile()!, encoding: .utf8)
				io.closeFile()
					※ 所定の位置にファイルが存在しなければ, FileHandle(forReadingAtPath:) はnilを返す

				let readData = try Data(contentsOf: URL(fileURLWithPath: "Package/Headers.md"))
				let readText = String(data: readData, encoding: .utf8)

			*/
		print(readText!)
		print("\r\n")

		// 再帰的にフォルダ作成

		print("> フォルダを一気に作成\r\n")
		try fm.createDirectory(atPath: "Package/Module/Submodule/Item", withIntermediateDirectories: true, attributes: nil)
			// withIntermediateDirectoriesをtrueにすることで,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

		// ファイル/フォルダの複製

		print("> BlankとModuleを複製\r\n")
		try fm.copyItem(atPath: "Blank", toPath: "Package/Blank")
		try fm.copyItem(atPath: "Package/Module", toPath: "Package/Module Copy")
			// 特に指定しなくても,フォルダを複製しようとしていたら, copyItem は自動的にフォルダ内の内容もまとめて複製する
			// 複製先に既にファイル/フォルダが存在していれば,エラーが発生する

		// ファイル/フォルダの削除

		print("> ファイルBlankを削除")
		try fm.removeItem(atPath: "Blank")
		print("> シンボリックリンクAliasを削除")
		try fm.removeItem(atPath: "Package/Alias")
		print("> フォルダModuleを削除\r\n")
		try fm.removeItem(atPath: "Package/Module")
			// 特に指定しなくても,フォルダを削除しようとしていたら,フォルダの中身の有無を問わず, removeItem はフォルダを削除してくれる
			// 削除するものがなければエラーが発生する
			// システムのゴミ箱に捨てるのであれば, fm.trashItem(at: URL(fileURLWithPath: "Package/Module"), resultingItemURL: nil) を用いる

		// 状態を確認する関数
		func check(_ pt: String) {
			if fm.fileExists(atPath: pt) {
				print("   存在しています")
			}
			else {
				print("   存在していません")
			}
			if fm.isReadableFile(atPath: pt) {
				print("   読込可能です")
			}
			if fm.isWritableFile(atPath: pt) {
				print("   書込可能です")
			}
			if fm.isExecutableFile(atPath: pt) {
				print("   実行可能です")
			}
			if fm.isDeletableFile(atPath: pt) {
				print("   削除可能です")
			}
			if fm.isUbiquitousItem(at: URL(fileURLWithPath: pt)) {
				print("   iCloudに保存されています")
			}
		}

		// 権限を確認/変更

		print("> 実行ファイルを作成します")
		fm.createFile(atPath: "Package/Swift.swift", contents: """
		#! /usr/bin/env swift

		print("Hello world!")
		""".data(using: .utf8), attributes: nil)

		print("> このファイルに対する現在の状態を確認")
		check("Package/Swift.swift")

		print("> 読込/書込権限を剥奪")
		try fm.setAttributes([FileAttributeKey.posixPermissions: 0o044], ofItemAtPath: "Package/Swift.swift")

		print("> 状態を確認")
		check("Package/Swift.swift")

		print("> 読込/実行権限を付加")
		try fm.setAttributes([FileAttributeKey.posixPermissions: 0o544], ofItemAtPath: "Package/Swift.swift")

		print("> 状態を確認")
		check("Package/Swift.swift")

		/*
			ファイル属性 posixPermissions は数値により権限を指定する
				4: 読込可能 (Readable)
				2: 書込可能 (Writable)
				1: 実行可能 (eXecutable)
			これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
			Swiftでは8進数で表記するために,前に0oを付加する
			e.g. [FileAttributeKey.posixPermissions: 0o754]
				ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
				ゲストは 5 = 4 + 1 だから,読込可能,実行可能
				その他は 4 だから,読込のみ可能
		*/

		print("> 実行")
		try Process.run(URL(fileURLWithPath: "Package/Swift.swift"), arguments: [], terminationHandler: nil).waitUntilExit()

		print("\r\n")

	}
	catch{
		print("エラーが発生しました")
	}
}