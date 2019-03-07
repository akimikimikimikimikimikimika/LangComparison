#include <stdio.h>
#include <string.h>
#include "Header.h"

void Loop(){
    printf("\nこれからループ処理を試します\n\n");

    printf("\nfor (n=0; n<3; n++) {…}\n");
    for (int n=0;n<3;n++) printf("n=%dのループ\n",n);

    printf("\nwhile (~) {…}\n");
    char str1[30]={};
    while (strlen(str1)<6) {
        strcat(str1,"*");
        printf("%s\n",str1);
    }

    printf("\ndo {…} while (~)\n");
    char str2[30]={};
    do {
        strcat(str2,"+");
        printf("%s\n",str2);
    } while (strlen(str2)<6);
}