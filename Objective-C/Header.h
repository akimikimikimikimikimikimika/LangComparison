#import <Foundation/Foundation.h>
#import "Classdef.h"

#ifndef OBJCDEF
	#define OBJCDEF
		// Main.m
		int main(int argc, char *argv[]);
		// Operators.m
		void Operators(void);
		// Sprintf.m
		void Sprintf(void);
		// File.m
		void File(void);
			void check(NSString* pt);
		// Class.m
		void ClassTest(void);
			char *vtoc(Vector *v);
		// Utilities.m
		void print(NSString*);
		void nr(NSUInteger);
		void printLn(NSString*,NSUInteger);
		void printLn2(NSUInteger,NSString*,NSUInteger);
	#define fmt NSString stringWithFormat
#endif