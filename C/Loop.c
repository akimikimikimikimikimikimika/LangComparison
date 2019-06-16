#include <stdio.h>
#include <string.h>
#include "Header.h"

void Loop(){

	n();printf("これからループ処理を試します");nn();

	n();printf("for (m=0; m<3; m++) {…}");n();
	for (int m=0;m<3;m++) {printf("m=%dのループ",m);n();}

	n();printf("while (~) {…}");n();
	char str1[30]={};
	while (strlen(str1)<6) {
		strcat(str1,"*");
		printf("%s",str1);n();
	}

	n();printf("do {…} while (~)");n();
	char str2[30]={};
	do {
		strcat(str2,"+");
		printf("%s",str2);n();
	} while (strlen(str2)<6);

}