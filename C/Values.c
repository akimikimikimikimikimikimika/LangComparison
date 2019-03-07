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

    printf("\n色々な値を試します\n");
    printf("\nプリミティブ値\n");
    printf("char: %c\n",character);
    printf("char[]: %s\n",string);
    printf("short int: %d\n",shortInt);
    printf("int: %d\n",integer);
    printf("long int: %ld\n",longInt);
    printf("long long int: %lld\n",longLongInt);
    printf("float: %f\n",fl);
    printf("double: %lf\n",db);
}