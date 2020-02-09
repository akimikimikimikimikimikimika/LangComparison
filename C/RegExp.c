#include <stdio.h>
#include <string.h>
#include <regex.h>
#include "Header.h"

void RegExp(){

	printLn2(1,"これから正規表現を試します",1);



	printLn2(1,"文字検索",1);
	char text[60]="IllUsTrAtE";
	char *results;
	printf("%s →",text);nr(1);
	results = strstr(text,"s");
		// resultsには開始位置を示すポインタを代入し,結果を表示しようとすると,それ以降の全ての文字列が表示される
	if (results!=NULL) {printf("s: マッチ ... %s",results);nr(1);}
	else {printLn("s: マッチしていません",1);}
	results = strstr(text,"x");
	if (results!=NULL) {printf("x: マッチ ... %s",results);nr(1);}
	else {printLn("x: マッチしていません",1);}



	printLn2(1,"検索",1);
	strcpy(text,"<a> <b> <c>");
	char match[100];
	regex_t regexp;
	regmatch_t res[100];
	printf("%s → ",text);
	// 正規表現コンパイル
	regcomp(&regexp,"<([a-z])> <([a-z])> <([a-z])>",REG_ICASE|REG_EXTENDED);
	// 検索を実行
	int found=regexec(&regexp,text,100,res,0);
	if (found==0) {
		nr(1);
		for (int i=0;i<100;i++) {
			if (res[i].rm_so>=0 && res[i].rm_eo>=0) {
				// マッチした範囲の開始位置(rm_so)と終了位置(rm_eo)が有効な値を抽出
				strncpy(match,text+res[i].rm_so,res[i].rm_eo-res[i].rm_so);
					/*
						textからマッチする文字列を抽出
						strncpy(書き込むポインタ,開始位置,大きさ)
						※ 文字列をコピーする関数はstrcpy。strncpyは定めた範囲の文字列をコピーする
							strcpy(書き込むポインタ,文字列)
					*/
				printf("%s (%lld~%lld)",match,res[i].rm_so,res[i].rm_eo);nr(1);
				memset(match,'\0',strlen(match));
			}
		}
	}
	else {
		printLn("見つかりません",1);
	}
	regfree(&regexp);
		// 正規表現をメモリから解放

	nr(2);

}