#include <stdio.h>
#include "Header.h"

void Values(){
	const char character=67; // C
	const char string1[]="シー";
	const char string2[10]="シー";
	const char *string3="シー";
		/*
			char str[]
				• 文字配列
				• 変数宣言時の文字列のサイズでメモリを確保
				• 代入が可能
					str = "newstring" や str[1] = 'e'
				• 関数の戻り値としては使用不可 (変数宣言した関数内で変数の寿命が切れる)
			char str[10]
				• 文字配列
				• 指定した数値のサイズでメモリを確保
				• 代入が可能
					str = "newstring" や str[1] = 'e'
				• 関数の戻り値としては使用不可 (変数宣言した関数内で変数の寿命が切れる)
			char* str
				• ポインタ
				• 変数宣言時の文字列のサイズでメモリを確保
				• 代入はできない
					だから,極力 const char* とすべきである
				• 関数の戻り値としては使用不可 (変数宣言した関数内で変数の寿命が切れる)
		*/
	const short shortInt=127; // 16 bit
	const int integer=127; // 16/32 bit
	const long longInt=127; // 32 bit
	const long long longLongInt=127; // 64 bit
	const unsigned short uShortInt=127; // 16 bit
	const unsigned int uInteger=127; // 16/32 bit
	const unsigned long uLongInt=127; // 32 bit
	const unsigned long long uLongLongInt=127; // 64 bit
	const float fl=3.14;
	const double db=3.14;
	const long double ldb=3.14;

	printLn2(1,"色々な値を試します",1);
	printLn2(1,"プリミティブ値",1);
	printf("char: %c",character);nr(1);
	printf("char[]: %s",string1);nr(1);
	printf("char[10]: %s",string2);nr(1);
	printf("char*: %s",string3);nr(1);
	printf("short: %d",shortInt);nr(1);
	printf("int: %d",integer);nr(1);
	printf("long: %ld",longInt);nr(1);
	printf("long long: %lld",longLongInt);nr(1);
	printf("unsigned short: %u",uShortInt);nr(1);
	printf("unsigned int: %u",uInteger);nr(1);
	printf("unsigned long: %lu",uLongInt);nr(1);
	printf("unsigned long long: %llu",uLongLongInt);nr(1);
	printf("float: %f",fl);nr(1);
	printf("double: %lf",db);nr(1);
	printf("long double: %Lf",ldb);nr(1);

	nr(2);

}
/*
	変数: int x
	定数: const int x
		※ 一般的には,安全性のため書き換えることがなければ const を付加した方が良いと言われている。
*/