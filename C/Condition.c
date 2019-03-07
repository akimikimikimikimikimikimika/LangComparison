#include <stdio.h>
#include "Header.h"

void Condition(){
    int test1 = 1;
    int test2 = 0;

    printf("\nこれから条件分岐を試します\n\n");

    if (test1) {
        printf("どうやらtest1は真のようです\n");
    }

    if (!test1) {
        printf("どうやらtest1は偽のようです\n");
    }
    else if (test2) {
        printf("どうやらtest2は真のようです\n");
    }
    else if (!test2 && test1) {
        printf("真偽が混在しているようです\n");
    }
    else {
        printf("どれでもないようです\n");
    }


    int val = 1;
    switch (val) {
        case 0:
        case 1:
            printf("%dは特別な値である\n",val);break;
        case 2:
        case 4:
            printf("%dは素数ではない\n",val);break;
        case 3:
        case 5:
            printf("%dは素数である\n",val);break;
    }
}