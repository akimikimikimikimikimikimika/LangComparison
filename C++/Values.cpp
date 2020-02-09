#include <iostream>
#include <string>
#include <stdarg.h>
#include <codecvt>
#include "Header.hpp"

using namespace std;

// defineマクロはコンパイル時にソースコード内に埋め込まれる

// ソースコード中の someConst が42に置き換えられた上でコンパイルされる
#define someConst 42

// ソースコード中の maximum(6,3) が a=6 b=3 として代入されてコンパイルされる
#define maximum(a,b) (a<b?b:a)

void Values(){

	// プリミティブな値
	const bool boolean=false;
	const char character=67; // C
	const short shortInt=127; // 16 bit
	const int integer=127; // 16/32 bit
	const long longInt=127; // 32 bit
	const long long longLongInt=127; // 64 bit
	const unsigned short uShortInt=127; // 16 bit
	const unsigned int uInteger=127; // 16/32 bit
	const unsigned long uLongInt=127; // 32 bit
	const unsigned long long uLongLongInt=127; // 64 bit
	const float fl=3.14;
	const double db=3.14;
	const long double ldb=3.14;
	char charArray[] = "シープラ";
	string str="シープラ";
	wstring wstr=L"シープラ";

	// 配列
	double dblArr[] = {2.4,3.6,4.8};

	cout << "\
色々な値を試します" << "\n\
プリミティブ値" << "\n\
bool:" << boolean << "\n\
char:" << character << "\n\
short:" << shortInt << "\n\
int:" << integer << "\n\
long:" << longInt << "\n\
long long:" << longLongInt << "\n\
unsigned short:" << uShortInt << "\n\
unsigned int:" << uInteger << "\n\
unsigned long:" << uLongInt << "\n\
unsigned long long:" << uLongLongInt << "\n\
float:" << fl << "\n\
double:" << db << "\n\
long double:" << ldb << "\n\
char *:" << charArray << "\n\
" << "\n\
配列" << "\n\
double [] = " << dblArr << "\n\
" << "\n\
オブジェクト" << "\n\
string:" << str << " #include <string>" << "\n\
   大きさ:" << str.length() << "\n\
" << "\n\
#defineから" << "\n\
定数:" << someConst << "\n\
マクロ関数:" << maximum(6,3) << "\n\
";

	cout << endl << endl;

}
/*
	変数: int x
	定数: const int x
		※ 一般的に安全性のため,書き換えることがなければ const を付加した方が良いと言われている。
*/