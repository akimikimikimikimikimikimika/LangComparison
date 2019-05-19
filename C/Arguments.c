#include <stdio.h>
#include "Header.h"

void Arguments(int argc, char *argv[]) {

	printf("\r\n\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n\r\n");
	for (int i=1;i<argc;i++) printf(" %d: %s\r\n",i,argv[i]);

	printf("\r\n\r\n\r\n");

}

void ArgumentsDemo() {

	printf("\r\n\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n\r\n");
	printf(" 1: このデモは,引数を付してコマンドを実行することで体験できます\r\n");
	printf(" 2: \r\n");
	printf(" 3: コマンドラインに以下のように入力して実行します\r\n");
	printf(" 4: \r\n");
	printf(" 5: C/Build 引数1 引数2…\r\n");
	printf(" 6: \r\n");
	printf(" 7: すると,引数1,引数2…が順に出力されます\r\n");
	printf(" 8: \r\n");

	printf("\r\n\r\n\r\n");

}