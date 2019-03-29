#include <stdio.h>
#include <string.h>
#include "Header.h"

void Values(){
	char character=67; // C
	char string[]="シー"; // C
	short shortInt=127; // 16 bit
	int integer=127; // 16/32 bit
	long longInt=127; // 32 bit
	long long longLongInt=127; // 64 bit
	float fl=3.14;
	double db=3.14;

	printf("\r\n色々な値を試します\r\n");
	printf("\r\nプリミティブ値\r\n");
	printf("char: %c\r\n",character);
	printf("char[]: %s\r\n",string);
	printf("short int: %d\r\n",shortInt);
	printf("int: %d\r\n",integer);
	printf("long int: %ld\r\n",longInt);
	printf("long long int: %lld\r\n",longLongInt);
	printf("float: %f\r\n",fl);
	printf("double: %lf\r\n",db);
}