#include <stdio.h>
#include <string.h>
#include <math.h>
#include "Header.h"

void Operators(){
    char str1[100]="abc"; // strcatで結合しても十分に入る大きさ
    char str2[]="def";

    printf("\nこれから演算子を試します\n");
    printf("\n算術演算子\n");
    printf("24   + 5 = %d\n",24+5);
    printf("24   - 5 = %d\n",24-5);
    printf("24   * 5 = %d\n",24*5);
    printf("24.0 / 5 = %f\n",24.0/5);
    printf("24   %% 5 = %d\n",24%5); // float,doubleは使えない
    printf("\n※ float,doubleで剰余を求めるには,以下の関数を使う\n  #include <math.h>\n");
    printf("fmod(24.8,5) = %f\n",fmod(24.8,5));
    printf("\n※ 冪乗を求めるには,以下の関数を使う\n  #include <math.h>\n");
    printf("pow(24,5) = %f\n",pow(24,5));
    printf("\n比較演算子\n");
    printf("24 <  5 = %d\n",24< 5);
    printf("24 <= 5 = %d\n",24<=5);
    printf("24 >  5 = %d\n",24> 5);
    printf("24 >= 5 = %d\n",24>=5);
    printf("24 == 5 = %d\n",24==5);
    printf("24 != 5 = %d\n",24!=5);
    printf("\n論理演算子\n");
    printf("1 && 0 = %d\n",1&&0);
    printf("1 || 0 = %d\n",1||0);
    printf("   ! 0 = %d\n",  !0);
    printf("\n三項演算子\n");
    printf("1 ? \"yes\" : \"no\" = \"%s\"\n",1?"yes":"no");
    printf("0 ? \"yes\" : \"no\" = \"%s\"\n",0?"yes":"no");
    printf("\n文字列関係\n");
    printf("文字列には基本的に演算子は存在しない。\n");
    printf("str1 = \"%s\",str2 = \"%s\"のとき\n",str1,str2);
    strcat(str1,str2);
    printf("strcat(str1,str2) → str1 = \"%s\"\n",str1);
    printf("strcmp(str1,str2) = %d\n",strcmp(str1,str2));
    printf("strlen(str1) = %lu\n",strlen(str1));
    printf("\n型演算子\n");
    printf("(double)1 = %lf\n",(double)1);
    printf("\nその他演算子\n");
    printf("sizeof(\"string\") = %lu\n",sizeof("string"));
}