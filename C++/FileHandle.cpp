#include <iostream>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include "Header.hpp"

using namespace std;

void FileHandle() {

	FILE *fh;
	FILE *fh2;

	cout << "\r\n" << "これからファイル操作を試します" << "\r\n\r\n";

	cout << "> カレントディレクトリをホームに変更" << "\r\n";
	chdir(getenv("HOME"));
		// chdir : <unistd.h>
		// getenv : <stdlib.h>

	// ファイル/フォルダ/シンボリックリンクの作成

	cout << "\r\n" << "> Emptyという空フォルダを作成" << "\r\n";
	if (mkdir("Empty",0744)==-1) error(); // 成功すれば0,失敗すれば-1
		// mkdir : <sys/stat.h>

	cout << "> Blankという空ファイルを作成" << "\r\n";
	if ((fh = fopen("Blank","w")) != NULL) fclose(fh);
	else error(); // 失敗すれば,NULLが返される
		// fopen,fclose : <stdio.h>

	cout << "> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成" << "\r\n";
	if (symlink("Blank","Empty/Symlink")==-1) error(); // 成功すれば0,失敗すれば-1
		// symlink : <unistd.h>

	// 書込み

	cout << "\r\n" << "> Untitled.mdというMarkdownファイルを作成して書込み" << "\r\n";
	if ((fh = fopen("Untitled.md","w")) != NULL) {
		fputs("# Header 1",fh);
			// fputs : <stdio.h>
		fclose(fh);
	}
	else error();

	// 移動/名称変更

	cout << "\r\n" << "> フォルダEmptyをPackageに名称変更" << "\r\n";
	if (rename("Empty","Package")!=0) error();
	cout << "> Packageフォルダ内のSymlinkファイルをAliasに名称変更" << "\r\n";
	if (rename("Package/Symlink","Package/Alias")!=0) error();
	cout << "> Untitled.mdを移動して,名称変更" << "\r\n";
	if (rename("Untitled.md","Package/Headers.md")!=0) error();
		// rename : <stdio.h>

	// 追記

	cout << "\r\n" << "> Markdownファイルに追記" << "\r\n";
	if ((fh = fopen("Package/Headers.md","a")) != NULL) {
		fseek(fh,0,SEEK_END); // 書き込みカーソルをファイル末端に移動
		fputs("\r\n## Header 2\r\n### Header 3",fh);
		fclose(fh);
	}
	else error();

	// 読込み

	cout << "\r\n" << "> Markdownファイルを読込み" << "\r\n";
	if ((fh = fopen("Package/Headers.md","r")) != NULL) {
		char lines[300];
		while (fgets(lines,300,fh)!=NULL) printf("%s",lines);
		fclose(fh);
	}
	else error();

	// ファイルの複製
	// ...と言っても,ファイルを読み込んで,そのまま別のファイルに書き込んでいるだけ。

	cout << "\r\n" << "> Markdownファイルを複製" << "\r\n";
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

	cout << "\r\n" << "> ファイルBlankを削除" << "\r\n";
	if (remove("Blank")!=0) error();
	cout << "> シンボリックリンクAliasを削除" << "\r\n";
	if (remove("Package/Alias")!=0) error();
	cout << "> フォルダModuleを作成した直後に削除" << "\r\n";
	if (mkdir("Package/Module",0744)==-1) error(); // 成功すれば0,失敗すれば-1
	if (remove("Package/Module")==-1) error(); // 成功すれば0,失敗すれば-1
		// remove : <stdio.h>

}

void error() {
	printf("   何らかの理由で操作に失敗しました\r\n");
}