#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include "Header.hpp"

using namespace std;

void FileHandle() {

	FILE *fh;
	FILE *fh2;

	cout << endl << "これからファイル操作を試します" << endl << endl;

	cout << "> カレントディレクトリをホームに変更" << endl;
	chdir(getenv("HOME"));
		// chdir : <unistd.h>
		// getenv : <stdlib.h>

	// ファイル/フォルダ/シンボリックリンクの作成

	cout << endl << "> Emptyという空フォルダを作成" << endl;
	if (mkdir("Empty",0744)==-1) error(); // 成功すれば0,失敗すれば-1
		// mkdir : <sys/stat.h>

	cout << "> Blankという空ファイルを作成" << endl;
	if ((fh = fopen("Blank","w")) != NULL) fclose(fh);
	else error(); // 失敗すれば,NULLが返される
		// fopen,fclose : <stdio.h>

	cout << "> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成" << endl;
	if (symlink("Blank","Empty/Symlink")==-1) error(); // 成功すれば0,失敗すれば-1
		// symlink : <unistd.h>

	// 書込み

	cout << endl << "> Untitled.mdというMarkdownファイルを作成して書込み" << endl;
	if ((fh = fopen("Untitled.md","w")) != NULL) {
		fputs("# Header 1",fh);
			// fputs : <stdio.h>
		fclose(fh);
	}
	else error();

	// 移動/名称変更

	cout << endl << "> フォルダEmptyをPackageに名称変更" << endl;
	if (rename("Empty","Package")!=0) error();
	cout << "> Packageフォルダ内のSymlinkファイルをAliasに名称変更" << endl;
	if (rename("Package/Symlink","Package/Alias")!=0) error();
	cout << "> Untitled.mdを移動して,名称変更" << endl;
	if (rename("Untitled.md","Package/Headers.md")!=0) error();
		// rename : <stdio.h>

	// 追記

	cout << endl << "> Markdownファイルに追記" << endl;
	if ((fh = fopen("Package/Headers.md","a")) != NULL) {
		fseek(fh,0,SEEK_END); // 書き込みカーソルをファイル末端に移動
		fputs("\r\n## Header 2\r\n### Header 3",fh);
		fclose(fh);
	}
	else error();

	// 読込み

	cout << endl << "> Markdownファイルを読込み" << endl;
	if ((fh = fopen("Package/Headers.md","r")) != NULL) {
		char lines[300];
		while (fgets(lines,300,fh)!=NULL) printf("%s",lines);
		fclose(fh);
	}
	else error();

	// ファイルの複製
	// ...と言っても,ファイルを読み込んで,そのまま別のファイルに書き込んでいるだけ。

	cout << endl << "> Markdownファイルを複製" << endl;
	if ((fh = fopen("Package/Headers.md","r")) != NULL) {
		if ((fh2 = fopen("Package/Duplicated.md","w")) != NULL) {
			char lines[300];
			while (fgets(lines,300,fh)!=NULL) fputs(lines,fh2);
			fclose(fh2);
		}
		else error();
		fclose(fh);
	}
	else error();

	// ファイルの削除

	cout << endl << "> ファイルBlankを削除" << endl;
	if (remove("Blank")!=0) error();
	cout << "> シンボリックリンクAliasを削除" << endl;
	if (remove("Package/Alias")!=0) error();
	cout << "> フォルダModuleを作成した直後に削除" << endl;
	if (mkdir("Package/Module",0744)==-1) error(); // 成功すれば0,失敗すれば-1
	if (remove("Package/Module")==-1) error(); // 成功すれば0,失敗すれば-1
		// remove : <stdio.h>

	cout << endl << endl;
	
}

void error() {
	cout << "   " << "何らかの理由で操作に失敗しました" << endl;
}