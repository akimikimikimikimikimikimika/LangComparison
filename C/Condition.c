#include <stdio.h>
#include "Header.h"

void Condition(){
	int test1 = 1;
	int test2 = 0;

	printLn2(1,"これから条件分岐を試します",2);

	if (test1) {
		printLn("どうやらtest1は真のようです",1);
	}

	if (!test1) {
		printLn("どうやらtest1は偽のようです",1);
	}
	else if (test2) {
		printLn("どうやらtest2は真のようです",1);
	}
	else if (!test2 && test1) {
		printLn("真偽が混在しているようです",1);
	}
	else {
		printLn("どれでもないようです",1);
	}


	int val = 8;
	switch (val) {
		case 0:
		case 1:
			printf("%dは特別な値である",val);nr(1);
			break;
		case 8:
		case 9:
		case 10:
			printLn("これに隣接する数にも言えたりするが,",1);
			// breakを省くと,case 8,9,10を実行すれば,直下のcase 4,6も実行する
		case 4:
		case 6:
			printf("%dは素数ではない",val);nr(1);
			break;
		case 2:
		case 3:
		case 5:
		case 7:
			printf("%dは素数である",val);nr(1);
			break;
	}

	nr(2);

}