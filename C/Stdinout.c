#include <stdio.h>
#include <string.h>
#include "Header.h"

void Stdinout(){

	char aboutYou[256];
	printf("こんにちは。私の名前はC。");n();
	printf("多くの言語の祖です。");n();
	printf("あなたのことを教えてください");n();
	scanf("%s",aboutYou);
	while(getchar()!='\n');
	printf("あなたは %s ですね。わかりました。",aboutYou);n();

	nn();
	
}