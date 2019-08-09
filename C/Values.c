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

	n();printf("色々な値を試します");n();
	n();printf("プリミティブ値");n();
	printf("char: %c",character);n();
	printf("char[]: %s",string1);n();
	printf("char[10]: %s",string2);n();
	printf("char*: %s",string3);n();
	printf("short: %d",shortInt);n();
	printf("int: %d",integer);n();
	printf("long: %ld",longInt);n();
	printf("long long: %lld",longLongInt);n();
	printf("unsigned short: %u",uShortInt);n();
	printf("unsigned int: %u",uInteger);n();
	printf("unsigned long: %lu",uLongInt);n();
	printf("unsigned long long: %llu",uLongLongInt);n();
	printf("float: %f",fl);n();
	printf("double: %lf",db);n();
	printf("long double: %Lf",ldb);n();

	nn();

}
/*
	変数: int x
	定数: const int x
		※ 一般的に安全性のため,書き換えることがなければ const を付加した方が良いと言われている。
*/