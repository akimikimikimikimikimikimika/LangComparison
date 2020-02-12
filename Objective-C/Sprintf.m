#include "Header.h"

void Sprintf() {

	printLn2(1,@"これから文字列フォーマットを試します",1);

	/*
		本来は
			[NSString stringWithFormat:@"フォーマット文字列", 値1, 値2 ...]
		と指定するのだが,マクロ変数
			#define fmt NSString stringWithFormat
		が Header.h にあるので,簡単に
			[fmt:@"フォーマット文字列", 値1, 値2 ...]
		と表記している
	*/

	printLn2(1,@"#define fmt NSString stringWithFormat",1);

	printLn2(1,@"整数",1);
	printLn([fmt:@"[fmt:@\"%%u\",255] = @\"%u\" // 符号なし整数",255],1);
	printLn([fmt:@"[fmt:@\"%%d\",255] = @\"%d\" // DEC",255],1);
	printLn([fmt:@"[fmt:@\"%%o\",255] = @\"%o\" // OCT",255],1);
	printLn([fmt:@"[fmt:@\"%%x\",255] = @\"%x\" // HEX",255],1);
	printLn([fmt:@"[fmt:@\"%%X\",255] = @\"%X\" // HEX",255],1);

	printLn2(1,@"実数",1);
	printLn([fmt:@"[fmt:@\"%%f\",0.018] = @\"%f\"",0.018],1);
	printLn([fmt:@"[fmt:@\"%%g\",0.018] = @\"%g\"",0.018],1);
	printLn([fmt:@"[fmt:@\"%%e\",0.018] = @\"%e\"",0.018],1);
	printLn([fmt:@"[fmt:@\"%%E\",0.018] = @\"%E\"",0.018],1);

	printLn2(1,@"文字",1);
	printLn([fmt:@"[fmt:@\"%%c\",115] = @\"%c\"",115],1);
	printLn([fmt:@"[fmt:@\"%%@\",@\"abc\"] = @\"%@\"",@"abc"],1);
	printLn([fmt:@"[fmt:@\"%%s\",\"abc\"] = @\"%s\"","abc"],1);
	/*
		Objective-Cの文字列(NSString)には %@ を使う
		%s はCの文字列(char*)に使える
	*/

	printLn2(1,@"ポインタ",1);
	printLn([fmt:@"[fmt:@\"%%p\",@\"NSObject\"] = @\"%p\"",@"NSObject"],1);

	printLn2(1,@"基数の表記",1);
	printLn([fmt:@"[fmt:@\"%%#o\",255] = @\"%#o\"",255],1);
	printLn([fmt:@"[fmt:@\"%%#x\",255] = @\"%#x\"",255],1);
	printLn([fmt:@"[fmt:@\"%%#X\",255] = @\"%#X\"",255],1);

	printLn2(1,@"正負の表記",1);
	printLn([fmt:@"[fmt: @\"%%d\",+18] = @\"%d\"" ,+18],1);
	printLn([fmt:@"[fmt:@\"%%+d\",+18] = @\"%+d\"",+18],1);
	printLn([fmt:@"[fmt:@\"%% d\",+18] = @\"% d\"",+18],1);
	printLn([fmt:@"[fmt: @\"%%d\",-18] = @\"%d\"" ,-18],1);
	printLn([fmt:@"[fmt:@\"%%+d\",-18] = @\"%+d\"",-18],1);
	printLn([fmt:@"[fmt:@\"%% d\",-18] = @\"% d\"",-18],1);

	printLn2(1,@"精度",1);
	printLn([fmt:@"[fmt:@\"%%.3d\",18]    = @\"%.3d\" // u,d,b,o,x: 整数桁数",18],1);
	printLn([fmt:@"[fmt:@\"%%.3f\",0.018] = @\"%.3f\" // f: 小数点以下の桁数",0.018],1);
	printLn([fmt:@"[fmt:@\"%%.3e\",0.018] = @\"%.3e\" // e,g: 有効桁数-1",0.018],1);

	printLn2(1,@"幅",1);
	printLn([fmt:@"[fmt:@\"%%10d\",18]    = @\"%10d\"",18],1);
	printLn([fmt:@"[fmt:@\"%%10f\",0.018] = @\"%10f\"",0.018],1);
	printLn([fmt:@"[fmt:@\"%%10e\",0.018] = @\"%10e\"",0.018],1);

	printLn2(1,@"0埋め",1);
	printLn([fmt:@"[fmt:@\"%%010d\",18]    = @\"%010d\"",18],1);
	printLn([fmt:@"[fmt:@\"%%010f\",0.018] = @\"%010f\"",0.018],1);
	printLn([fmt:@"[fmt:@\"%%010e\",0.018] = @\"%010e\"",0.018],1);

	printLn2(1,@"左寄せ",1);
	printLn([fmt:@"[fmt:@ \"%%10d\",18]    = @\"%10d\"", 18],1);
	printLn([fmt:@"[fmt:@\"%%-10d\",18]    = @\"%-10d\"",18],1);

	printLn2(1,@"組合せ",1);
	printLn([fmt:@"[fmt:@\"%%d年%%d月%%d日\",2007,7,14] = @\"%d年%d月%d日\"",2007,7,14],1);
	printLn([fmt:@"[fmt:@\"x = %%+08.2f\",0.375]      = @\"x = %+08.2f\"",0.375],1);

	printLn2(1,@"引数並び",1);
	printLn([fmt:@"[fmt:@\"%%3$d年%%1$d月%%2$d日\",7,14,2007] = @\"%3$d年%1$d月%2$d日\"",7,14,2007],1);
	printLn([fmt:@"[fmt:@\"%%2$@は%%2$@。%%1$@は%%1$@。\",@\"あれ\",@\"これ\"] = @\"%2$@は%2$@。%1$@は%1$@。\"",@"あれ",@"これ"],1);

}