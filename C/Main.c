#include <stdio.h>
#include <string.h>
#include "Header.h"

// C

/*
	Cのコンパイル
		(cd C ; clang -std=c17 -o bin *.c)

	※ これはClangでコンパイルする例。GCCを用いる場合は,適宜 clang を gcc に置き換えて使用する。
	これにより,Unix系OSでは実行ファイルが生成され,Windowsでは.exeファイルが生成される。
*/

int main(int argc, char *argv[]){
	/*
		コマンドライン引数のデータ
		argc : 引数の数
		argv : 引数配列
	*/

	char action[10];

	/*
		コマンドライン引数によってアクションを変化させる
		引数なし → メニューを表示
		各項目名 → 指定した項目を実行
		それ以外 → Argumentsで表示
	*/
	if (argc==1) {
		printf("こんにちは。私の名前はC。");n();
		while (1) {
			nn();printf("何がしたい?");nn();
			printf("1. 標準入出力を試す");n();
			printf("2. 色々な値を試す");n();
			printf("3. 演算子を試す");n();
			printf("4. 条件分岐を試す");n();
			printf("5. 繰り返しを試す");n();
			printf("6. 数学的演算を試す");n();
			printf("7. 文字列操作を試す");n();
			printf("8. 文字列フォーマットを試す");n();
			printf("9. 正規表現を試す");n();
			printf("a. 日付と時刻を試す");n();
			printf("d. ファイル操作を試す");n();
			printf("e. ファイルパスを試す");n();
			printf("h. コマンドライン引数を試す");n();
			n();
			printf("0. 終了");n();
			n();
			scanf("%s",action);
			while(getchar()!='\n');
			nnn();
			if (cmp(action,"0")) break;
			else if (cmp(action,"1")) Stdinout();
			else if (cmp(action,"2")) Values();
			else if (cmp(action,"3")) Operators();
			else if (cmp(action,"4")) Condition();
			else if (cmp(action,"5")) Loop();
			else if (cmp(action,"6")) Math();
			else if (cmp(action,"7")) String();
			else if (cmp(action,"8")) Sprintf();
			else if (cmp(action,"9")) RegExp();
			else if (cmp(action,"a")) DateTime();
			else if (cmp(action,"d")) FileHandle();
			else if (cmp(action,"e")) Path();
			else if (cmp(action,"h")) ArgumentsDemo();
			else printf("指定したアクションは見つかりませんでした");nn();
		}
	}
	else if (argc==2) {
		if (cmp(argv[1],"Stdinout")) Stdinout();
		else if (cmp(argv[1],"Values")) Values();
		else if (cmp(argv[1],"Operators")) Operators();
		else if (cmp(argv[1],"Condition")) Condition();
		else if (cmp(argv[1],"Loop")) Loop();
		else if (cmp(argv[1],"Math")) Math();
		else if (cmp(argv[1],"String")) String();
		else if (cmp(argv[1],"Sprintf")) Sprintf();
		else if (cmp(argv[1],"RegExp")) RegExp();
		else if (cmp(argv[1],"DateTime")) DateTime();
		else if (cmp(argv[1],"FileHandle")) FileHandle();
		else if (cmp(argv[1],"Path")) Path();
		else if (cmp(argv[1],"Arguments")) ArgumentsDemo();
		else Arguments(argc,argv);
	}
	else Arguments(argc,argv);

	return 0;
}

int cmp(char *s1,char *s2) {
	return strcmp(s1,s2)==0;
}

void n() {
	printf("\r\n");
}

void nn() {
	n();n();
}

void nnn() {
	n();n();n();
}