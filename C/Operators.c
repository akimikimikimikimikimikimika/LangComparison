#include <stdio.h>
#include <string.h>
#include <math.h>
#include "Header.h"

void Operators(){

    char str1[100]="abc"; // strcatで結合しても十分に入る大きさ
    char str2[]="def";

    printf("\r\nこれから演算子を試します\r\n");
    printf("\r\n算術演算子\r\n");
    printf("24   + 5 = %d\r\n",24+5);
    printf("24   - 5 = %d\r\n",24-5);
    printf("24   * 5 = %d\r\n",24*5);
    printf("24.0 / 5 = %f\r\n",24.0/5);
    printf("24   %% 5 = %d\r\n",24%5); // float,doubleは使えない
    /*
        float,doubleは使えない
        ※ float,doubleで剰余を求めるには,この関数を使う : fmod(24.8,5)  (#include <math.h>)
        ※ 冪乗を求めるには,以下の関数を使う : pow(24,5)  (#include <math.h>)
    */

    printf("\r\n比較演算子\r\n");
    printf("24 <  5 = %d\r\n",24< 5);
    printf("24 <= 5 = %d\r\n",24<=5);
    printf("24 >  5 = %d\r\n",24> 5);
    printf("24 >= 5 = %d\r\n",24>=5);
    printf("24 == 5 = %d\r\n",24==5);
    printf("24 != 5 = %d\r\n",24!=5);

    printf("\r\n論理演算子\r\n");
    printf("1 && 0 = %d\r\n",1&&0);
    printf("1 || 0 = %d\r\n",1||0);
    printf("   ! 0 = %d\r\n",  !0);

    printf("\r\n三項演算子\r\n");
    printf("1 ? \"yes\" : \"no\" = \"%s\"\r\n",1?"yes":"no");
    printf("0 ? \"yes\" : \"no\" = \"%s\"\r\n",0?"yes":"no");

    printf("\r\n文字列関係\r\n");
    printf("文字列には基本的に演算子は存在しない。\r\n");
    printf("str1 = \"%s\", str2 = \"%s\"のとき\r\n",str1,str2);
    strcat(str1,str2);
    printf("strcat(str1,str2) → str1 = \"%s\"\r\n",str1);
    printf("strcmp(str1,str2) = %d\r\n",strcmp(str1,str2));
    printf("strlen(str1) = %lu\r\n",strlen(str1));

    printf("\r\n型演算子\r\n");
    printf("(double)1 = %lf\r\n",(double)1);

    printf("\r\nその他演算子\r\n");
    printf("sizeof(\"string\") = %lu\r\n",sizeof("string"));

}