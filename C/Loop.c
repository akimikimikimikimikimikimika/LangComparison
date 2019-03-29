#include <stdio.h>
#include <string.h>
#include "Header.h"

void Loop(){

	printf("\r\nこれからループ処理を試します\r\n\r\n");

	printf("\r\nfor (n=0; n<3; n++) {…}\r\n");
	for (int n=0;n<3;n++) printf("n=%dのループ\r\n",n);

	printf("\r\nwhile (~) {…}\r\n");
	char str1[30]={};
	while (strlen(str1)<6) {
		strcat(str1,"*");
		printf("%s\r\n",str1);
	}

	printf("\r\ndo {…} while (~)\r\n");
	char str2[30]={};
	do {
		strcat(str2,"+");
		printf("%s\r\n",str2);
	} while (strlen(str2)<6);

}