#include <stdio.h>
#include "Header.h"

void Arguments(int argc, char *argv[]) {

	printf("\r\n\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n\r\n");
	for (int i=1;i<argc;i++) printf(" %d: %s\r\n",i,argv[i]);

	printf("\r\n\r\n\r\n");

}