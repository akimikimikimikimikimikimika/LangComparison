#include <stdio.h>
#include "Header.h"

void Condition(){
    int test1 = 1;
    int test2 = 0;

    printf("\r\nこれから条件分岐を試します\r\n\r\n");

    if (test1) {
        printf("どうやらtest1は真のようです\r\n");
    }

    if (!test1) {
        printf("どうやらtest1は偽のようです\r\n");
    }
    else if (test2) {
        printf("どうやらtest2は真のようです\r\n");
    }
    else if (!test2 && test1) {
        printf("真偽が混在しているようです\r\n");
    }
    else {
        printf("どれでもないようです\r\n");
    }


    int val = 1;
    switch (val) {
        case 0:
        case 1:
            printf("%dは特別な値である\r\n",val);break;
        case 2:
        case 4:
            printf("%dは素数ではない\r\n",val);break;
        case 3:
        case 5:
            printf("%dは素数である\r\n",val);break;
    }
}