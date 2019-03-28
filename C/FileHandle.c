#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include "Header.h"

void FileHandle() {

    FILE *fh;
    FILE *fh2;

    printf("\r\nこれからファイル操作を試します\r\n");
        // printf : <stdio.h>

    printf("> カレントディレクトリをホームに変更\r\n");
    chdir(getenv("HOME"));
        // chdir : <unistd.h>
        // getenv : <stdlib.h>

    // ファイル/フォルダ/シンボリックリンクの作成

    printf("\r\n> Emptyという空フォルダを作成\r\n");
    if (mkdir("Empty",0744)==-1) error(); // 成功すれば0,失敗すれば-1
        // mkdir : <sys/stat.h>

    printf("> Blankという空ファイルを作成\r\n");
    if ((fh = fopen("Blank","w")) != NULL) fclose(fh);
    else error(); // 失敗すれば,NULLが返される
        // fopen,fclose : <stdio.h>

    printf("> フォルダEmptyの中にファイルBlankのシンボリックリンクSymlinkを作成\r\n");
    if (symlink("Blank","Empty/Symlink")==-1) error(); // 成功すれば0,失敗すれば-1
        // symlink : <unistd.h>

    // 書込み

    printf("\r\n> Untitled.mdというMarkdownファイルを作成して書込み\r\n");
    if ((fh = fopen("Untitled.md","w")) != NULL) {
        fputs("# Header 1",fh);
            // fputs : <stdio.h>
        fclose(fh);
    }
    else error();

    // 移動/名称変更

    printf("\r\n> フォルダEmptyをPackageに名称変更\r\n");
    if (rename("Empty","Package")!=0) error();
    printf("> Packageフォルダ内のSymlinkファイルをAliasに名称変更\r\n");
    if (rename("Package/Symlink","Package/Alias")!=0) error();
    printf("> Untitled.mdを移動して,名称変更\r\n");
    if (rename("Untitled.md","Package/Headers.md")!=0) error();
        // rename : <stdio.h>

    // 追記

    printf("\r\n> Markdownファイルに追記\r\n");
    if ((fh = fopen("Package/Headers.md","a")) != NULL) {
        fseek(fh,0,SEEK_END); // 書き込みカーソルをファイル末端に移動
        fputs("\r\n## Header 2\r\n### Header 3",fh);
        fclose(fh);
    }
    else error();

    // 読込み

    printf("\r\n> Markdownファイルを読込み\r\n");
    if ((fh = fopen("Package/Headers.md","r")) != NULL) {
        char lines[300];
        while (fgets(lines,300,fh)!=NULL) printf("%s",lines);
        fclose(fh);
    }
    else error();

    // ファイルの複製

    printf("\r\n> Markdownファイルを複製\r\n");
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

    printf("\r\n> ファイルBlankを削除\r\n");
    if (remove("Blank")!=0) error();
    printf("> シンボリックリンクAliasを削除\r\n");
    if (remove("Package/Alias")!=0) error();
    printf("> フォルダModuleを作成した直後に削除\r\n");
    if (mkdir("Package/Module",0744)==-1) error(); // 成功すれば0,失敗すれば-1
    if (remove("Package/Module")==-1) error(); // 成功すれば0,失敗すれば-1
        // remove : <stdio.h>

}

void error() {
    printf("   何らかの理由で操作に失敗しました\r\n");
}