#! /usr/local/bin/bash

echo
echo これからファイル操作を試します
echo
echo

echo "> カレントディレクトリをホームに変更"; echo
cd "$HOME"

# ファイル/フォルダ/シンボリックリンクの作成

echo "> Emptyという空フォルダを作成"
mkdir Empty

echo "> Blankという空ファイルを作成"
touch Blank
	# 既にBlankが存在していたら何もしない

echo "> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成"; echo
ln -s Blank Empty/Symlink
	# ln Blank Empty/Link とすると,ハードリンクが作成される

# 書込み

echo "> Untitled.mdというMarkdownファイルを作成して書込み"; echo
	# 既にUntitled.mdが存在すれば上書きされる
echo "# Header 1" > Untitled.md

# 移動/名称変更

echo "> フォルダEmptyをPackageに名称変更"
mv Empty Package

echo "> Packageフォルダ内のSymlinkファイルをAliasに名称変更"
mv Package/Symlink Package/Alias

echo "> Untitled.mdを移動して,名称変更"; echo
mv Untitled.md Package/Headers.md

# 追記

echo "> Markdownファイルに追記"; echo
echo -e "## Header 2\r\n### Header 3" >> Package/Headers.md

# 読込み

echo "> Markdownファイルを読込み"
cat Package/Headers.md

echo

# 再帰的にフォルダ作成

echo "> フォルダを一気に作成"; echo
mkdir -p Package/Module/Submodule/Item
	# -pオプションを付ければ,作成するフォルダItemの上位フォルダModule,Submoduleが存在していなくても,同時に生成される

# ファイル/フォルダの複製

echo "> BlankとModuleを複製"; echo
cp Blank Package/Blank
cp -fr Package/Module "Package/Module Copy"
	# -rオプションを付ければ,フォルダの中身もまとめてコピーする

# ファイル/フォルダの削除

echo "> ファイルBlankを削除"
rm Blank

echo "> シンボリックリンクAliasを削除"
unlink Package/Alias
	# シンボリックリンクはrmだけでなく,unlinkでも削除できる

echo "> フォルダModuleを削除"; echo
rm -fr Package/Module
	# -rオプションを付ければ,フォルダであっても削除できる

# 状態を確認する関数

check(){

	if [ -e "$1" ]; then
		echo "   存在しています"
	else
		echo "   存在していません"
	fi

	if [ -L "$1" ]; then
		echo "   シンボリックリンクです"
		echo "   リンク先: "`readlink -f "$1"`
		if [ -f "$1" ]; then
			echo "   リンク先はファイルです"
		fi
		if [ -d "$1" ]; then
			echo "   リンク先はフォルダです"
		fi
	else
		if [ -f "$1" ]; then
			echo "   ファイルです"
		fi
		if [ -d "$1" ]; then
			echo "   フォルダです"
		fi
	fi

	if [ -r "$1" ]; then
		echo "   読込可能です"
	fi
	if [ -w "$1" ]; then
		echo "   書込可能です"
	fi
	if [ -x "$1" ]; then
		echo "   実行可能です"
	fi

	if [ ! -s "$1" ]; then
		echo "   空です"
	fi

}

# 権限を確認/変更

echo "> 実行ファイルを作成します"
echo '''
#! /usr/local/bin/bash
echo "Hello world!"
''' >> Package/Bash.sh

echo "> このファイルに対する現在の状態を確認"
check Package/Bash.sh

echo "> 読込/書込権限を剥奪"
chmod 044 Package/Bash.sh

echo "> 状態を確認"
check Package/Bash.sh

echo "> 読込/実行権限を付加"
chmod 544 Package/Bash.sh

echo "> 状態を確認"
check Package/Bash.sh

<< chmodについて
	chmodは数値により権限を指定する
		4: 読込可能 (Readable)
		2: 書込可能 (Writable)
		1: 実行可能 (eXecutable)
	これらの和を3つ並べて指定する。1つ目はユーザの権限,2つ目はゲストの権限,3つ目はその他の者の権限である。
	e.g. chmod 754
		ユーザは 7 = 4+2+1 だから,読込可能,書込可能,実行可能
		ゲストは 5 = 4 + 1 だから,読込可能,実行可能
		その他は 4 だから,読込のみ可能
chmodについて

echo

echo "> 実行"
Package/Bash.sh

printf "\r\n\r\n"