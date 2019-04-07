#include <stdio.h>
#include <string.h>
#include "Header.h"

/*
	Cのコンパイル
		find C -name *.c -exec clang -std=c17 -o C/Build {} +

	※ これはClangでコンパイルする例。GCCを用いる場合は,適宜 clang を gcc に置き換えて使用する。
	これにより,Unix系OSでは実行ファイルが生成され,Windowsでは.exeファイルが生成される。
*/

int main(int argc, char *argv[]){
	char action[10];
	char *demo[] = {"","このプログラムを直接実行してみよう。","ここにあるよ: C/Build","","コマンドラインに以下のように入力して実行します","","C/Build 引数1 引数2…","","すると,引数1,引数2…が順に出力されます"};
	if (argc>1) Arguments(argc,argv);
	else {
		printf("こんにちは。私の名前はC。\r\n");
		while (1) {
			printf("\r\n\r\n何がしたい?\r\n\r\n");
			printf("1. 標準入出力を試す\r\n");
			printf("2. 色々な値を試す\r\n");
			printf("3. 演算子を試す\r\n");
			printf("4. 条件分岐を試す\r\n");
			printf("5. 繰り返しを試す\r\n");
			printf("6. 正規表現を試す\r\n");
			printf("7. ファイル操作を試す\r\n");
			printf("8. ファイルパスを試す\r\n");
			printf("9. 数学的演算を試す\r\n");
			printf("a. 日付と時刻を試す\r\n");
			printf("f. コマンドライン引数を試す\r\n");
			printf("\r\n");
			printf("0. 終了\r\n");
			printf("\r\n");
			scanf("%s",action);
			while(getchar()!='\n');
			printf("\r\n\r\n\r\n");
			if (cmp(action,"0")) break;
			else if (cmp(action,"1")) Stdinout();
			else if (cmp(action,"2")) Values();
			else if (cmp(action,"3")) Operators();
			else if (cmp(action,"4")) Condition();
			else if (cmp(action,"5")) Loop();
			else if (cmp(action,"6")) RegExp();
			else if (cmp(action,"7")) FileHandle();
			else if (cmp(action,"8")) Path();
			else if (cmp(action,"9")) Math();
			else if (cmp(action,"a")) DateTime();
			else if (cmp(action,"f")) Arguments(9,demo);
			else printf("指定したアクションは見つかりませんでした\r\n\r\n");
		}
	}
	return 0;
}

int cmp(char *s1,char *s2) {
	return strcmp(s1,s2)==0;
}