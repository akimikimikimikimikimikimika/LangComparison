#include <stdio.h>
#include <string.h>
#include "Header.h"

void String(){

	int integer;
	char str1[100]="someFunc()"; // strcatで結合しても十分に入る大きさ
	char str2[100];
	char str3[100]="def ";
	char *strptr;

	printLn2(1,"これから文字列操作を試します",1);

	// 文字列の長さを測定
	integer = strlen("someString");
	printf("strlen(\"someString\") = %d",integer);nr(1);

	// str1の文字列の内容をstr2にコピー
	strcpy(str2,str1);
	printf("strcpy: \"%s\" → \"%s\"",str1,str2);nr(1);

	// str1の文字列の内容をstr3の後に付け加える
	strcat(str3,str1); // str3=str3+str1
	printf("strcat: \"%s\" → \"%s\"",str1,str3);nr(1);

	// str1とstr3の内容を比較
	integer = strcmp(str1,str3);
	printf("strcmp: %d",integer);nr(1);

	// str3の中から文字列を検索
	strptr = strstr(str3,"some");
	printf("strstr: %s",strptr);nr(1);

	nr(2);

}