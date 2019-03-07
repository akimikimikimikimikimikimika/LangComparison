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

	cout << "\n色々な値を試します\n";
	cout << "\nプリミティブ値\n";
	cout << "bool:" << boolean << "\n";
	cout << "char:" << character << "\n";
	cout << "short int:" << shortInt << "\n";
	cout << "int:" << integer << "\n";
	cout << "long int:" << longInt << "\n";
	cout << "long long int:" << longLongInt << "\n";
	cout << "float:" << fl << "\n";
	cout << "double:" << db << "\n";
	cout << "\nオブジェクト\n";
	cout << "string:" << str << " #include <string>\n";
	cout << "   大きさ:" << str.length() << "\n";
	cout << "wstring:" << cv.to_bytes(wstr) << " #include <string>\n";
	cout << "   大きさ:" << wstr.length() << "\n";
	cout << "\n#defineから\n";
	cout << "定数:" << someConst << "\n";
	cout << "マクロ関数:" << maximum(6,3) << "\n";
}