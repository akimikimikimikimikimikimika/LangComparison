#! /usr/bin/env pwsh

"`r`nこれからファイル操作を試します`r`n";

"> カレントディレクトリをホームに変更`r`n";
Set-Location -Path $Home;

# ファイル/フォルダ/シンボリックリンクの作成

"> Emptyという空フォルダを作成";
New-Item Empty -ItemType Directory;

"> Blankという空ファイルを作成";
New-Item Blank -Force;
	# -Force を取り除いた場合,既にBlankが存在していたらエラーになってしまう
	# -Value で書き込む内容を指定できる

"> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成";
New-Item -Value Blank -Path Empty -Name Symlink -ItemType SymbolicLink;
	# -ItemType HardLink とすると,ハードリンクが作成される
	# -ItemType Junction とすると,ジャンクションが作成される (Windowsのみ)

"> Untitled.mdというMarkdownファイルを作成して書込み`r`n";
	# 既にUntitled.mdが存在すれば上書きされる
"# Header 1" > Untitled.md;

# 移動/名称変更
"> フォルダEmptyをPackageに名称変更";
Move-Item Empty Package;

"> Packageフォルダ内のSymlinkファイルをAliasに名称変更";
Move-Item Package/Symlink Package/Alias; # 或いは Rename-Item Package/Symlink -newName Alias

"> Untitled.mdを移動して,名称変更`r`n";
Move-Item Untitled.md Package/Headers.md;

# 追記

"> Markdownファイルに追記`r`n";
"## Header 2`r`n### Header 3" >> Package/Headers.md;

"> Markdownファイルを読込み";
cat Package/Headers.md;

"`r`n";

# 再帰的にフォルダ作成

"> フォルダを一気に作成`r`n";
New-Item Package/Module/Submodule/Item -ItemType Directory;
	# 特に指定せずに,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

# ファイル/フォルダの複製
"> BlankとModuleを複製`r`n";
Copy-Item Blank Package/Blank;
Copy-Item Package/Module "Package/Module Copy" -Recurse;
	# -Recurseオプションを付ければ,フォルダの中身もまとめてコピーする

# ファイル/フォルダの削除
"> ファイルBlankを削除";
Remove-Item Blank;

"> シンボリックリンクAliasを削除";
Remove-Item Package/Alias;

"> フォルダModuleを削除`r`n";
Remove-Item Package/Module -Recurse;
	# -Recurseオプションを付ければ,フォルダ内が空でなくても削除できる

# 状態を確認する関数

function check($pt) {
	if (Test-Path $pt) {
		"   存在しています";
	}
	else {
		"   存在していません";
	}

	if (Test-Path $pt -PathType Leaf) {
		"   ファイルです";
	}
	if (Test-Path $pt -PathType Container) {
		"   フォルダです";
	}

}

"> Headers.mdの内容を確認`r`n";
check("Package/Headers.md");

"> 実行ファイルを作成します`r`n";
@'
#! /usr/bin/env pwsh
"Hello world!";
'@ >> Package/PowerShell.ps1

"> 実行";
Package/PowerShell.ps1;

"`r`n";