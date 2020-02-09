#include <stdio.h>
#include <string.h>
#include "Header.h"

// C

/*
	コンパイル       make c-build
	実行            make c-run
	実行ファイルの削除 make c-clean
	clean+build    make c-retry
	コンパイラの表示  make c-cmd

	Makefileを利用してコンパイルを実行する。
	コンパイラにはClangが使用される。
	-e C=[コンパイラ] で別のコンパイルコマンドを指定できる。
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
		printLn("こんにちは。私の名前はC。",1);
		while (1) {
			printLn2(2,"何がしたい?",2);
			printLn("1. 標準入出力を試す",1);
			printLn("2. 色々な値を試す",1);
			printLn("3. 演算子を試す",1);
			printLn("4. 条件分岐を試す",1);
			printLn("5. 繰り返しを試す",1);
			printLn("6. 数学的演算を試す",1);
			printLn("7. 文字列操作を試す",1);
			printLn("8. 文字列フォーマットを試す",1);
			printLn("9. 正規表現を試す",1);
			printLn("a. 日付と時刻を試す",1);
			printLn("d. ファイル操作を試す",1);
			printLn("e. ファイルパスを試す",1);
			printLn("h. コマンドライン引数を試す",1);
			nr(1);
			printLn("0. 終了",1);
			nr(1);
			scanf("%s",action);
			while(getchar()!='\n');
			nr(3);
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
			else printLn("指定したアクションは見つかりませんでした",2);
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

void nr(unsigned int n) {
	for (int i=0;i<n;i++) printf("\r\n");
}

void printLn(const char* text,unsigned int n) {
	printLn2(0,text,n);
}

void printLn2(unsigned int begin,const char* text,unsigned int end) {
	nr(begin);
	printf("%s",text);
	nr(end);
}