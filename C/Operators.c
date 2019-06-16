#include <stdio.h>
#include <string.h>
#include <math.h>
#include "Header.h"

void Operators(){

	char str1[100]="abc"; // strcatで結合しても十分に入る大きさ
	char str2[]="def";

	n();printf("これから演算子を試します");n();
	n();printf("算術演算子");n();
	printf("24   + 5 = %d",24+5);n();
	printf("24   - 5 = %d",24-5);n();
	printf("24   * 5 = %d",24*5);n();
	printf("24.0 / 5 = %f",24.0/5);n();
	printf("24   %% 5 = %d",24%5);n(); // float,doubleは使えない
	/*
		float,doubleは使えない
		※ float,doubleで剰余を求めるには,この関数を使う : fmod(24.8,5)  (#include <math.h>)
		※ 冪乗を求めるには,以下の関数を使う : pow(24,5)  (#include <math.h>)
	*/

	n();printf("比較演算子");n();
	printf("24 <  5 = %d",24< 5);n();
	printf("24 <= 5 = %d",24<=5);n();
	printf("24 >  5 = %d",24> 5);n();
	printf("24 >= 5 = %d",24>=5);n();
	printf("24 == 5 = %d",24==5);n();
	printf("24 != 5 = %d",24!=5);n();

	n();printf("論理演算子");n();
	printf("1 && 0 = %d",1&&0);n();
	printf("1 || 0 = %d",1||0);n();
	printf("   ! 0 = %d",  !0);n();

	n();printf("三項演算子");n();
	printf("1 ? \"yes\" : \"no\" = \"%s\"",1?"yes":"no");n();
	printf("0 ? \"yes\" : \"no\" = \"%s\"",0?"yes":"no");n();

	n();printf("型演算子");n();
	printf("(double)1 = %lf",(double)1);n();

	n();printf("その他演算子");n();
	printf("sizeof(\"string\") = %lu",sizeof("string"));n();

	nn();

}