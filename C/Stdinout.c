#include <stdio.h>
#include <string.h>
#include "Header.h"

void Stdinout(){
	char aboutYou[256];
	printf("こんにちは。私の名前はC。\r\n");
	printf("多くの言語の祖です。\r\n");
	printf("あなたのことを教えてください\r\n");
	scanf("%s",aboutYou);
	while(getchar()!='\r\n');
	printf("あなたは %s ですね。わかりました。\r\n",aboutYou);
}