#include <stdio.h>
#include "Header.h"

void Arguments(int argc, char *argv[]) {

	printLn2(2,"このファイルを実行するにあたっての引数は以下の通りです:",2);
	for (int i=1;i<argc;i++) {printf(" %d: %s",i,argv[i]);nl(1);}

	nl(3);

}

void ArgumentsDemo() {

	printLn2(2,"このファイルを実行するにあたっての引数は以下の通りです:",2);
	printLn(" 1: このデモは,引数を付してコマンドを実行することで体験できます",1);
	printLn(" 2: ",1);
	printLn(" 3: コマンドラインに以下のように入力して実行します",1);
	printLn(" 4: ",1);
	printLn(" 5: C/Build 引数1 引数2…",1);
	printLn(" 6: ",1);
	printLn(" 7: すると,引数1,引数2…が順に出力されます",1);
	printLn(" 8: ",1);

	nl(3);

}