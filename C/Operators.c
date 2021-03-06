#include <stdio.h>
#include <string.h>
#include <math.h>
#include "Header.h"

void Operators(){

	char str1[100]="abc"; // strcatで結合しても十分に入る大きさ
	char str2[]="def";

	printLn2(1,"これから演算子を試します",1);
	printLn2(1,"算術演算子",1);
	printf("24   + 5 = %d",24+5);nl(1);
	printf("24   - 5 = %d",24-5);nl(1);
	printf("24   * 5 = %d",24*5);nl(1);
	printf("24.0 / 5 = %f",24.0/5);nl(1);
	printf("24   %% 5 = %d",24%5);nl(1); // float,doubleは使えない
	/*
		float,doubleは使えない
		※ float,doubleで剰余を求めるには,この関数を使う : fmod(24.8,5)  (#include <math.h>)
		※ 冪乗を求めるには,以下の関数を使う : pow(24,5)  (#include <math.h>)
	*/

	printLn2(1,"比較演算子",1);
	printf("24 <  5 = %d",24< 5);nl(1);
	printf("24 <= 5 = %d",24<=5);nl(1);
	printf("24 >  5 = %d",24> 5);nl(1);
	printf("24 >= 5 = %d",24>=5);nl(1);
	printf("24 == 5 = %d",24==5);nl(1);
	printf("24 != 5 = %d",24!=5);nl(1);

	printLn2(1,"論理演算子",1);
	printf("1 && 0 = %d",1&&0);nl(1);
	printf("1 || 0 = %d",1||0);nl(1);
	printf("   ! 0 = %d",  !0);nl(1);

	printLn2(1,"三項演算子",1);
	printf("1 ? \"yes\" : \"no\" = \"%s\"",1?"yes":"no");nl(1);
	printf("0 ? \"yes\" : \"no\" = \"%s\"",0?"yes":"no");nl(1);

	printLn2(1,"型演算子",1);
	printf("(double)1 = %lf",(double)1);nl(1);

	printLn2(1,"その他演算子",1);
	printf("sizeof(\"string\") = %lu",sizeof("string"));nl(1);

	nl(2);

}