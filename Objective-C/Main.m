#include <Foundation/Foundation.h>
#include <stdio.h>
#include "Header.h"
// #include 又は #import

// Objective-C

/*
	コンパイル       make objc-build
	実行            make objc-run
	実行ファイルの削除 make objc-clean
	clean+build    make objc-retry
	コンパイラの表示  make objc-cmd

	Makefileを利用してコンパイルを実行する。
*/

int main(int argc, char *argv[]) {
	printf("こんにちは。私の名前はObjective-C。\r\n");
	ClassTest();
}