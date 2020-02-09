#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include "Header.h"

void FileHandle() {

	FILE *fh;
	FILE *fh2;

	printLn2(1,"これからファイル操作を試します",1);
		// printf : <stdio.h>

	printLn("> カレントディレクトリをホームに変更",1);
	chdir(getenv("HOME"));
		// chdir : <unistd.h>
		// getenv : <stdlib.h>

	// ファイル/フォルダ/シンボリックリンクの作成

	printLn2(1,"> Emptyという空フォルダを作成",1);
	if (mkdir("Empty",0744)==-1) error(); // 成功すれば0,失敗すれば-1
		// mkdir : <sys/stat.h>

	printLn("> Blankという空ファイルを作成",1);
	if ((fh = fopen("Blank","w")) != NULL) fclose(fh);
	else error(); // 失敗すれば,NULLが返される
		// fopen,fclose : <stdio.h>

	printLn("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成",1);
	if (symlink("Blank","Empty/Symlink")==-1) error(); // 成功すれば0,失敗すれば-1
		// symlink : <unistd.h>

	// 書込み

	printLn("> Untitled.mdというMarkdownファイルを作成して書込み",1);
	if ((fh = fopen("Untitled.md","w")) != NULL) {
		fputs("# Header 1",fh);
			// fputs : <stdio.h>
		fclose(fh);
	}
	else error();

	// 移動/名称変更

	printLn2(1,"> フォルダEmptyをPackageに名称変更",1);
	if (rename("Empty","Package")!=0) error();
	printLn("> Packageフォルダ内のSymlinkファイルをAliasに名称変更",1);
	if (rename("Package/Symlink","Package/Alias")!=0) error();
	printLn("> Untitled.mdを移動して,名称変更",1);
	if (rename("Untitled.md","Package/Headers.md")!=0) error();
		// rename : <stdio.h>

	// 追記

	printLn2(1,"> Markdownファイルに追記",1);
	if ((fh = fopen("Package/Headers.md","a")) != NULL) {
		fseek(fh,0,SEEK_END); // 書き込みカーソルをファイル末端に移動
		fputs("\r\n## Header 2\r\n### Header 3",fh);
		fclose(fh);
	}
	else error();

	// 読込み

	printLn2(1,"> Markdownファイルを読込み",1);
	if ((fh = fopen("Package/Headers.md","r")) != NULL) {
		char lines[300];
		while (fgets(lines,300,fh)!=NULL) printf("%s",lines);
		fclose(fh);
	}
	else error();

	// ファイルの複製
	// ...と言っても,ファイルを読み込んで,そのまま別のファイルに書き込んでいるだけ。

	printLn2(1,"> Markdownファイルを複製",1);
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

	printLn2(1,"> ファイルBlankを削除",1);
	if (remove("Blank")!=0) error();
	printLn("> シンボリックリンクAliasを削除",1);
	if (remove("Package/Alias")!=0) error();
	printLn("> フォルダModuleを作成した直後に削除",1);
	if (mkdir("Package/Module",0744)==-1) error(); // 成功すれば0,失敗すれば-1
	if (remove("Package/Module")==-1) error(); // 成功すれば0,失敗すれば-1
		// remove : <stdio.h>

}

void error() {
	printLn("\t何らかの理由で操作に失敗しました",1);
}