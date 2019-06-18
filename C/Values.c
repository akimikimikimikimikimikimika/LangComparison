#include <stdio.h>
#include "Header.h"

void Values(){
	const char character=67; // C
	const char string[]="シー"; // C
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
	printf("char[]: %s",string);n();
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