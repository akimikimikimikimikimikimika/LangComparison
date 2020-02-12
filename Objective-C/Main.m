#import "Header.h"
// #include 又は #import
/*
	Foundation にアクセスするには本来 #import <Foundation/Foundation.h> が必要だが,Header.hで既にインポート済なので別に記載する必要はない。
*/

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
	if (argc==1) {
		printLn(@"こんにちは。私の名前はObjective-C。",1);
	}
	else if (argc==2) {
		NSString* param=[NSString stringWithUTF8String:argv[1]];
		if ([param isEqual:@"Operators"]) Operators();
		else if ([param isEqual:@"Sprintf"]) Sprintf();
		else if ([param isEqual:@"File"]) File();
		else if ([param isEqual:@"Class"]) ClassTest();
	}
}