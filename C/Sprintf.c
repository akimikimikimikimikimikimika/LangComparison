#include <stdio.h>
#include "Header.h"

void Sprintf(){

	printLn2(1,"これから文字列フォーマットを試します",1);

	printLn2(1,"整数",1);
	printf("sprintf(\"%%d\",255) = %d (整数)",255);nr(1); // int,short
	printf("sprintf(\"%%i\",255) = %i (整数)",255);nr(1);
	printf("sprintf(\"%%u\",255) = %u (符号なし整数)",255);nr(1); // unsigned int,unsigned short
	printf("sprintf(\"%%o\",255) = %o (OCT)",255);nr(1); // int,short,unsigned int,unsigned short
	printf("sprintf(\"%%x\",255) = %x (HEX)",255);nr(1); // int,short,unsigned int,unsigned short
	printf("sprintf(\"%%X\",255) = %X (HEX)",255);nr(1); // int,short,unsigned int,unsigned short
	/*
		long, unsigned long 型の整数で上のような演算を行いたい場合は,それぞれ指定子の前に l を付加する。
		e.g. %d → %ld
		long long の場合は %lld のようにする
	*/

	printLn2(1,"実数",1);
	printf("sprintf(\"%%f\",0.018) = \"%f\"",0.018);nr(1);
	printf("sprintf(\"%%g\",0.018) = \"%g\"",0.018);nr(1);
	printf("sprintf(\"%%e\",0.018) = \"%e\"",0.018);nr(1);
	printf("sprintf(\"%%E\",0.018) = \"%E\"",0.018);nr(1);
	/*
		double 型の整数で上のような演算を行いたい場合は,それぞれ指定子の前に l を付加する。
		...というか,今時は浮動小数の演算は基本的に double なので,それが普通である。
		e.g. %f → %lf
		long double の場合は %Lf とする
	*/

	printLn2(1,"文字",1);
	printf("sprintf(\"%%c\",115)   = \"%c\"",115);nr(1); // char
	printf("sprintf(\"%%s\",\"abc\") = \"%s\"","abc");nr(1); // char *

	printLn2(1,"基数の表記",1);
	printf("sprintf(\"%%#o\",255) = \"%#o\"",255);nr(1);
	printf("sprintf(\"%%#x\",255) = \"%#x\"",255);nr(1);
	printf("sprintf(\"%%#x\",255) = \"%#X\"",255);nr(1);

	printLn2(1,"正負の表記",1);
	printf("sprintf( \"%%d\",+18) = \"%d\"",+18);nr(1);
	printf("sprintf(\"%%+d\",+18) = \"%+d\"",+18);nr(1);
	printf("sprintf(\"%% d\",+18) = \"% d\"",+18);nr(1);
	printf("sprintf( \"%%d\",-18) = \"%d\"",-18);nr(1);
	printf("sprintf(\"%%+d\",-18) = \"%+d\"",-18);nr(1);
	printf("sprintf(\"%% d\",-18) = \"% d\"",-18);nr(1);

	printLn2(1,"精度",1);
	printf("sprintf(\"%%.3d\",18)    = \"%.3d\"",18);nr(1);      // d,i,u,o,x: 整数桁数
	printf("sprintf(\"%%.3f\",0.018) = \"%.3f\"",0.018);nr(1);   // f: 小数点以下の桁数
	printf("sprintf(\"%%.3e\",0.018) = \"%.3e\"",0.018);nr(1);   // e: 小数点以下の有効桁数
	printf("sprintf(\"%%.2s\",\"abc\") = \"%.2s\"","abc");nr(1); // s: 文字数

	printLn2(1,"幅",1);
	printf("sprintf(\"%%10d\",18)    = \"%10d\"",18);nr(1);
	printf("sprintf(\"%%10f\",0.018) = \"%10f\"",0.018);nr(1);
	printf("sprintf(\"%%10e\",0.018) = \"%10e\"",0.018);nr(1);
	printf("sprintf(\"%%10s\",\"ab\")  = \"%10s\"","ab");nr(1);

	printLn2(1,"0埋め",1);
	printf("sprintf(\"%%010d\",18)    = \"%010d\"",18);nr(1);
	printf("sprintf(\"%%010f\",0.018) = \"%010f\"",0.018);nr(1);
	printf("sprintf(\"%%010e\",0.018) = \"%010e\"",0.018);nr(1);

	printLn2(1,"左寄せ",1);
	printf("sprintf( \"%%10d\",18) = \"%10d\"",18);nr(1);
	printf("sprintf(\"%%-10d\",18) = \"%-10d\"",18);nr(1);

	printLn2(1,"組合せ",1);
	printf("sprintf(\"%%d年%%d月%%d日\",2007,7,14) = \"%d年%d月%d日\"",2007,7,14);nr(1);
	printf("sprintf(\"x = %%+08.2f\",0.375)      = \"x = %+08.2f\"",0.375);nr(1);

	printLn2(1,"引数並び",1);
	printf("sprintf(\"%%3$d年%%1$d月%%2$d日\",7,14,2007) = \"%3$d年%1$d月%2$d日\"",7,14,2007);nr(1);
	printf("sprintf(\"%%2$sは%%2$s。%%1$sは%%1$s。\",\"あれ\",\"これ\") = \"%2$sは%2$s。%1$sは%1$s。\"","あれ","これ");nr(1);

	nr(2);

}
/*
	%% とすることで % という文字として扱われる

	• printf("フォーマットテキスト",args)
		引数argsをフォーマットテキストにしたがってフォーマットして出力する
	• sprintf(str,"フォーマットテキスト",args)
		引数argsをフォーマットテキストにしたがってフォーマットし,文字列str (char *)に書き込まれる
*/