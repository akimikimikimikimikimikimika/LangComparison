#include <iostream>
#include <string>
#include <codecvt>
#include "Header.hpp"

using namespace std;

#define someConst 42
#define maximum(a,b) (a<b?b:a)

void Values(){
	wstring_convert<codecvt_utf8<wchar_t>,wchar_t> cv;

	bool boolean=false;
	char character=67; // C
	short shortInt=127; // 16 bit
	int integer=127; // 16/32 bit
	long longInt=127; // 32 bit
	long long longLongInt=127; // 64 bit
	float fl=3.14;
	double db=3.14;
	string str="シープラ";
	wstring wstr=L"シープラ";

	cout << "\r\n色々な値を試します\r\n";
	cout << "\r\nプリミティブ値\r\n";
	cout << "bool:" << boolean << "\r\n";
	cout << "char:" << character << "\r\n";
	cout << "short int:" << shortInt << "\r\n";
	cout << "int:" << integer << "\r\n";
	cout << "long int:" << longInt << "\r\n";
	cout << "long long int:" << longLongInt << "\r\n";
	cout << "float:" << fl << "\r\n";
	cout << "double:" << db << "\r\n";
	cout << "\r\nオブジェクト\r\n";
	cout << "string:" << str << " #include <string>\r\n";
	cout << "   大きさ:" << str.length() << "\r\n";
	cout << "wstring:" << cv.to_bytes(wstr) << " #include <string>\r\n";
	cout << "   大きさ:" << wstr.length() << "\r\n";
	cout << "\r\n#defineから\r\n";
	cout << "定数:" << someConst << "\r\n";
	cout << "マクロ関数:" << maximum(6,3) << "\r\n";
}