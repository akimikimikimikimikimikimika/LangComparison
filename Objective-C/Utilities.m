#import <Foundation/Foundation.h>

void print(NSString* str) {
	printf("%s",[str UTF8String]);
}

void nl(NSUInteger n) {
	for (NSUInteger i=0;i<n;i++) printf("\n");
}

void printLn(NSString* text,NSUInteger n) {
	print(text);
	nl(n);
}

void printLn2(NSUInteger begin,NSString* text,NSUInteger end) {
	nl(begin);
	print(text);
	nl(end);
}