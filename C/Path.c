#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include "Header.h"

#define CD_SIZE 512

void Path() {

	char cd[CD_SIZE];
	char *home = getenv("HOME");

	memset(cd, '\0', CD_SIZE);
	getcwd(cd, CD_SIZE);

	printf("ホームディレクトリ:       %s",home);n();
	printf("カレントディレクトリ:     %s",cd);n();

}