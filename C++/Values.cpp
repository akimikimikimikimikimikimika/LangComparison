#include <iostream>
#include <string>
#include <stdarg.h>
#include <codecvt>
#include "Header.hpp"

using namespace std;

#define someConst 42
#define maximum(a,b) (a<b?b:a)

void Values(){
	wstring_convert<codecvt_utf8<wchar_t>,wchar_t> cv;

	// プリミティブな値
	bool boolean=false;
	char character=67; // C
	short shortInt=127; // 16 bit
	int integer=127; // 16/32 bit
	long longInt=127; // 32 bit
	long long longLongInt=127; // 64 bit
	float fl=3.14;
	double db=3.14;
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
short int:" << shortInt << "\n\
int:" << integer << "\n\
long int:" << longInt << "\n\
long long int:" << longLongInt << "\n\
float:" << fl << "\n\
double:" << db << "\n\
char *:" << charArray << "\n\
" << "\n\
配列" << "\n\
double [] = " << dblArr << "\n\
" << "\n\
オブジェクト" << "\n\
string:" << str << " #include <string>" << "\n\
   大きさ:" << str.length() << "\n\
wstring:" << cv.to_bytes(wstr) << " #include <string>" << "\n\
   大きさ:" << wstr.length() << "\n\
" << "\n\
#defineから" << "\n\
定数:" << someConst << "\n\
マクロ関数:" << maximum(6,3) << "\n\
";

}