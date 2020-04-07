#include <stdio.h>
#include <string.h>
#include "Header.h"

void Repeat(){

	printLn2(1,"これからループ処理を試します",2);

	printLn2(1,"for (m=0; m<3; m++) {…}",1);
	for (int m=0;m<3;m++) {printf("m=%dのループ",m);nl(1);}

	printLn2(1,"while (~) {…}",1);
	char str1[30]={};
	while (strlen(str1)<6) {
		strcat(str1,"*");
		printf("%s",str1);nl(1);
	}

	printLn2(1,"do {…} while (~)",1);
	char str2[30]={};
	do {
		strcat(str2,"+");
		printf("%s",str2);nl(1);
	} while (strlen(str2)<6);

}