#include <stdio.h>
#include "Header.h"

// defineマクロはコンパイル時にソースコード内に埋め込まれる

// ソースコード中の someConst が42に置き換えられた上でコンパイルされる
#define someConst 42

// ソースコード中の maximum(6,3) が a=6 b=3 として代入されてコンパイルされる
#define maximum(a,b) (a<b?b:a)

// 関数ポインタで扱う関数
int square(int value) {
	return value*value;
}
long cube(long value) {
	return value*value*value;
}
	// Cでは,関数の中で関数を定義することはできない

void Values(){

	// Cで扱えるプリミティブな値

	// 文字•文字配列
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

	// 整数
	const short shortInt=127; // 16 bit
	const int integer=127; // 16/32 bit
	const long longInt=127; // 32 bit
	const long long longLongInt=127; // 64 bit
	const unsigned short uShortInt=127; // 16 bit
	const unsigned int uInteger=127; // 16/32 bit
	const unsigned long uLongInt=127; // 32 bit
	const unsigned long long uLongLongInt=127; // 64 bit

	// 浮動小数
	const float fl=3.14;
	const double db=3.14;
	const long double ldb=3.14;

	// 関数ポインタ
	int (*func1)(int) = square; // 戻り値の型 (*変数)(引数の型)

	typedef long (*CUBE)(long);
	CUBE func2 = cube;
	/* 関数ポインタは型の定義が非常にややこしくなるので,このように別名定義で扱うことが多い。 */

	printLn2(1,"色々な値を試します",1);
	printLn2(1,"プリミティブ値",1);
	printf("char: %c",character);nl(1);
	printf("char[]: %s",string1);nl(1);
	printf("char[10]: %s",string2);nl(1);
	printf("char*: %s",string3);nl(1);
	printf("short: %d",shortInt);nl(1);
	printf("int: %d",integer);nl(1);
	printf("long: %ld",longInt);nl(1);
	printf("long long: %lld",longLongInt);nl(1);
	printf("unsigned short: %u",uShortInt);nl(1);
	printf("unsigned int: %u",uInteger);nl(1);
	printf("unsigned long: %lu",uLongInt);nl(1);
	printf("unsigned long long: %llu",uLongLongInt);nl(1);
	printf("float: %f",fl);nl(1);
	printf("double: %lf",db);nl(1);
	printf("long double: %Lf",ldb);nl(1);
	printf("int (*)(int): %p → %d",func1,func1(6));nl(1);
	printf("long (*)(long): %p → %ld",func2,func2(6));nl(1);
	printLn2(1,"#defineから",1);
	printf("通常の置換: %d",someConst);nl(1);
	printf("マクロ関数: %d",maximum(6,3));nl(1);

	nl(2);

}
/*
	変数: int x
	定数: const int x
		※ 一般的には,安全性のため書き換えることがなければ const を付加した方が良いと言われている。
*/