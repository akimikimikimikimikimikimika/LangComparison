#include <stdio.h>
#include "Header.h"

void Arguments(int argc, char *argv[]) {

	nn();printf("このファイルを実行するにあたっての引数は以下の通りです:");nn();
	for (int i=1;i<argc;i++) {printf(" %d: %s",i,argv[i]);n();}

	nnn();

}

void ArgumentsDemo() {

	nn();printf("このファイルを実行するにあたっての引数は以下の通りです:");nn();
	printf(" 1: このデモは,引数を付してコマンドを実行することで体験できます");n();
	printf(" 2: ");n();
	printf(" 3: コマンドラインに以下のように入力して実行します");n();
	printf(" 4: ");n();
	printf(" 5: C/Build 引数1 引数2…");n();
	printf(" 6: ");n();
	printf(" 7: すると,引数1,引数2…が順に出力されます");n();
	printf(" 8: ");n();

	nnn();

}