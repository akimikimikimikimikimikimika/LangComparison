#include <stdio.h>
#include "Header.h"

void Values(){
	const char character=67; // C
	const char string[]="シー"; // C
	const short shortInt=127; // 16 bit
	const int integer=127; // 16/32 bit
	const long longInt=127; // 32 bit
	const long long longLongInt=127; // 64 bit
	const float fl=3.14;
	const double db=3.14;

	n();printf("色々な値を試します");n();
	n();printf("プリミティブ値");n();
	printf("char: %c",character);n();
	printf("char[]: %s",string);n();
	printf("short int: %d",shortInt);n();
	printf("int: %d",integer);n();
	printf("long int: %ld",longInt);n();
	printf("long long int: %lld",longLongInt);n();
	printf("float: %f",fl);n();
	printf("double: %lf",db);n();

	nn();
	
}
/*
	変数: int x
	定数: const int x
		※ 一般的に安全性のため,書き換えることがなければ const を付加した方が良いと言われている。
*/