#include <stdio.h>
#include "Header.h"

void Sprintf(){

	n();printf("これから文字列フォーマットを試します");n();

	n();printf("整数");n();
	printf("sprintf(\"%%d\",255) = %d (整数)",255);n(); // int,short
	printf("sprintf(\"%%i\",255) = %i (整数)",255);n();
	printf("sprintf(\"%%u\",255) = %u (符号なし整数)",255);n(); // unsigned int,unsigned short
	printf("sprintf(\"%%o\",255) = %o (OCT)",255);n(); // int,short,unsigned int,unsigned short
	printf("sprintf(\"%%x\",255) = %x (HEX)",255);n(); // int,short,unsigned int,unsigned short
	printf("sprintf(\"%%X\",255) = %X (HEX)",255);n(); // int,short,unsigned int,unsigned short
	/*
		long, unsigned long 型の整数で上のような演算を行いたい場合は,それぞれ指定子の前に l を付加する。
		e.g. %d → %ld
	*/

	n();printf("実数");n();
	printf("sprintf(\"%%f\",0.018) = \"%f\"",0.018);n();
	printf("sprintf(\"%%g\",0.018) = \"%g\"",0.018);n();
	printf("sprintf(\"%%e\",0.018) = \"%e\"",0.018);n();
	printf("sprintf(\"%%E\",0.018) = \"%E\"",0.018);n();
	/*
		double 型の整数で上のような演算を行いたい場合は,それぞれ指定子の前に l を付加する。
		...というか,今時は浮動小数の演算は基本的に double なので,それが普通である。
		e.g. %f → %lf
	*/

	n();printf("文字");n();
	printf("sprintf(\"%%c\",115)   = \"%c\"",115);n(); // char
	printf("sprintf(\"%%s\",\"abc\") = \"%s\"","abc");n(); // char *

	n();printf("基数の表記");n();
	printf("sprintf(\"%%#o\",255) = \"%#o\"",255);n();
	printf("sprintf(\"%%#x\",255) = \"%#x\"",255);n();
	printf("sprintf(\"%%#x\",255) = \"%#X\"",255);n();

	n();printf("正負の表記");n();
	printf("sprintf( \"%%d\",+18) = \"%d\"",+18);n();
	printf("sprintf(\"%%+d\",+18) = \"%+d\"",+18);n();
	printf("sprintf(\"%% d\",+18) = \"% d\"",+18);n();
	printf("sprintf( \"%%d\",-18) = \"%d\"",-18);n();
	printf("sprintf(\"%%+d\",-18) = \"%+d\"",-18);n();
	printf("sprintf(\"%% d\",-18) = \"% d\"",-18);n();

	n();printf("精度");n();
	printf("sprintf(\"%%.3d\",18)    = \"%.3d\"",18);n();      // d,i,u,o,x: 整数桁数
	printf("sprintf(\"%%.3f\",0.018) = \"%.3f\"",0.018);n();   // f: 小数点以下の桁数
	printf("sprintf(\"%%.3e\",0.018) = \"%.3e\"",0.018);n();   // e: 小数点以下の有効桁数
	printf("sprintf(\"%%.2s\",\"abc\") = \"%.2s\"","abc");n(); // s: 文字数

	n();printf("幅");n();
	printf("sprintf(\"%%10d\",18)    = \"%10d\"",18);n();
	printf("sprintf(\"%%10f\",0.018) = \"%10f\"",0.018);n();
	printf("sprintf(\"%%10e\",0.018) = \"%10e\"",0.018);n();
	printf("sprintf(\"%%10s\",\"ab\")  = \"%10s\"","ab");n();

	n();printf("0埋め");n();
	printf("sprintf(\"%%010d\",18)    = \"%010d\"",18);n();
	printf("sprintf(\"%%010f\",0.018) = \"%010f\"",0.018);n();
	printf("sprintf(\"%%010e\",0.018) = \"%010e\"",0.018);n();

	n();printf("左寄せ");n();
	printf("sprintf( \"%%10d\",18) = \"%10d\"",18);n();
	printf("sprintf(\"%%-10d\",18) = \"%-10d\"",18);n();

	n();printf("組合せ");n();
	printf("sprintf(\"%%d年%%d月%%d日\",2007,7,14) = \"%d年%d月%d日\"",2007,7,14);n();
	printf("sprintf(\"x = %%+08.2f\",0.375)      = \"x = %+08.2f\"",0.375);n();

	n();printf("引数並び");n();
	printf("sprintf(\"%%3$d年%%1$d月%%2$d日\",7,14,2007) = \"%3$d年%1$d月%2$d日\"",7,14,2007);n();
	printf("sprintf(\"%%2$sは%%2$s。%%1$sは%%1$s。\",\"あれ\",\"これ\") = \"%2$sは%2$s。%1$sは%1$s。\"","あれ","これ");n();

	nn();

}
/*
	%% とすることで % という文字として扱われる

	• printf("フォーマットテキスト",args)
		引数argsをフォーマットテキストにしたがってフォーマットして出力する
	• sprintf("フォーマットテキスト",args)
		引数argsをフォーマットテキストにしたがってフォーマットし,文字列(char *)として出力する
*/