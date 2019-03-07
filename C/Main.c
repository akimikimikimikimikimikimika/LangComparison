#include <stdio.h>
#include "Header.h"

/*
	Cのコンパイル
	clang -o Stdinout.o -c Stdinout.c ; clang -o Values.o -c Values.c ; clang -o Operators.o -c Operators.c ; clang -o Condition.o -c Condition.c ; clang -o Loop.o -c Loop.c ; clang -o Build Main.c Stdinout.o Condition.o Loop.o ; rm Stdinout.o Values.o Operators.o Condition.o Loop.o

	※ これはClangでコンパイルする例。GCCを用いる場合は,適宜 clang を gcc に置き換えて使用する。
	これにより,Unix系OSでは実行ファイルが生成され,Windowsでは.exeファイルが生成される。
*/

int main(){
	int *action;
	printf("こんにちは。私の名前はC。\n");
	while (1) {
		printf("\n\n何がしたい?\n\n");
		printf("1. 標準入出力を試す\n");
		printf("2. 色々な値を試す\n");
		printf("3. 演算子を試す\n");
		printf("4. 条件分岐を試す\n");
		printf("5. 繰り返しを試す\n");
		printf("\n");
		printf("0. 終了\n");
		printf("\n");
		scanf("%d",action);
		while(getchar()!='\n');
		printf("\n\n\n");
		if (*action==1) Stdinout();
		else if (*action==2) Values();
		else if (*action==3) Operators();
		else if (*action==4) Condition();
		else if (*action==5) Condition();
		else if (*action==0) break;
		else printf("指定したアクションは見つかりませんでした\n\n");
	}
	return 0;
}