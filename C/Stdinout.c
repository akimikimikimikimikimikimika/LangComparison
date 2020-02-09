#include <stdio.h>
#include <string.h>
#include "Header.h"

void Stdinout(){

	char aboutYou[256];
	printLn("こんにちは。私の名前はC。",1);
	printLn("多くの言語の祖です。",1);
	printLn("あなたのことを教えてください",1);
	scanf("%s",aboutYou);
	while(getchar()!='\n');
	printf("あなたは %s ですね。わかりました。",aboutYou);nr(1);

	nr(2);

}