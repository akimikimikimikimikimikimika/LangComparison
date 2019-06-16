#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include "Header.h"

void FileHandle() {

	FILE *fh;
	FILE *fh2;

	n();printf("これからファイル操作を試します");n();
		// printf : <stdio.h>

	printf("> カレントディレクトリをホームに変更");n();
	chdir(getenv("HOME"));
		// chdir : <unistd.h>
		// getenv : <stdlib.h>

	// ファイル/フォルダ/シンボリックリンクの作成

	n();printf("> Emptyという空フォルダを作成");n();
	if (mkdir("Empty",0744)==-1) error(); // 成功すれば0,失敗すれば-1
		// mkdir : <sys/stat.h>

	printf("> Blankという空ファイルを作成");n();
	if ((fh = fopen("Blank","w")) != NULL) fclose(fh);
	else error(); // 失敗すれば,NULLが返される
		// fopen,fclose : <stdio.h>

	printf("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成");n();
	if (symlink("Blank","Empty/Symlink")==-1) error(); // 成功すれば0,失敗すれば-1
		// symlink : <unistd.h>

	// 書込み

	printf("> Untitled.mdというMarkdownファイルを作成して書込み");n();
	if ((fh = fopen("Untitled.md","w")) != NULL) {
		fputs("# Header 1",fh);
			// fputs : <stdio.h>
		fclose(fh);
	}
	else error();

	// 移動/名称変更

	n();printf("> フォルダEmptyをPackageに名称変更");n();
	if (rename("Empty","Package")!=0) error();
	printf("> Packageフォルダ内のSymlinkファイルをAliasに名称変更");n();
	if (rename("Package/Symlink","Package/Alias")!=0) error();
	printf("> Untitled.mdを移動して,名称変更");n();
	if (rename("Untitled.md","Package/Headers.md")!=0) error();
		// rename : <stdio.h>

	// 追記

	n();printf("> Markdownファイルに追記");n();
	if ((fh = fopen("Package/Headers.md","a")) != NULL) {
		fseek(fh,0,SEEK_END); // 書き込みカーソルをファイル末端に移動
		fputs("\r\n## Header 2\r\n### Header 3",fh);
		fclose(fh);
	}
	else error();

	// 読込み

	n();printf("> Markdownファイルを読込み");n();
	if ((fh = fopen("Package/Headers.md","r")) != NULL) {
		char lines[300];
		while (fgets(lines,300,fh)!=NULL) printf("%s",lines);
		fclose(fh);
	}
	else error();

	// ファイルの複製
	// ...と言っても,ファイルを読み込んで,そのまま別のファイルに書き込んでいるだけ。

	n();printf("> Markdownファイルを複製");n();
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

	n();printf("> ファイルBlankを削除");n();
	if (remove("Blank")!=0) error();
	printf("> シンボリックリンクAliasを削除");n();
	if (remove("Package/Alias")!=0) error();
	printf("> フォルダModuleを作成した直後に削除");n();
	if (mkdir("Package/Module",0744)==-1) error(); // 成功すれば0,失敗すれば-1
	if (remove("Package/Module")==-1) error(); // 成功すれば0,失敗すれば-1
		// remove : <stdio.h>

}

void error() {
	printf("\t何らかの理由で操作に失敗しました");n();
}