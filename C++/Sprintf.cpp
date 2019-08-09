#include <iostream>
#include <iomanip> // setprecision,setw,setfill
#include "Header.hpp"

using namespace std;

void Sprintf(){

	cout << endl << "これから文字列フォーマットを試します" << endl;

	/*
		C++ では printf を使う代わりに cout とフラグを使って出力することができる
		フラグは1度指定するとそれ以降の全ての出力は,フラグが変更されない限り適用されてしまう
		フラグ指定前のフラグの状態を保存しておき,それを適用させてその度にリセットすることが必要。
		但し,setwは例外で,使用する都度指定しないと適用されない
	*/
	std::ios::fmtflags savedFlags = cout.flags(); // 初期状態のフラグを保存

	cout << endl;
	cout << 255 << endl; // %d
	cout << 0.018 << endl; // %f (厳密には桁数が値に即して変動する)
	cout << "abc" << endl; // %s

	cout << endl << "真偽値" << endl;
	cout << "true : " << true << endl;
	cout << "boolalpha<<true : " << boolalpha << true << endl;
	cout.flags(savedFlags); // フラグ状態の復元

	cout << endl << "基数" << endl;
	cout << "dec<<255 : " << dec << 255 << endl; // %d
	cout << "oct<<255 : " << oct << 255 << endl; // %o
	cout << "hex<<255 : " << hex << 255 << endl; // %x
	cout << "hex<<uppercase<<255 : " << hex << uppercase << 255 << endl; // %X
	cout.flags(savedFlags);

	cout << endl << "基数の表記" << endl;
	cout << "oct<<showbase<<255 : " << oct << showbase << 255 << endl; // %#o
	cout << "hex<<showbase<<255 : " << hex << showbase << 255 << endl; // %#x
	cout.flags(savedFlags);

	cout << endl << "浮動小数" << endl;
	cout << "     fixed<<0.018 : " <<      fixed << 0.018 << endl; // %f
	cout << "scientific<<0.018 : " << scientific << 0.018 << endl; // %e
	cout << "scientific<<uppercase<<0.018 : " << scientific << uppercase << 0.018 << endl; // %E
	cout.flags(savedFlags);

	cout << endl << "正負の表記" << endl;
	cout << "showpos<<+18 : " << showpos << +18 << endl; // %+d
	cout << "showpos<<-18 : " << showpos << -18 << endl; // %+d
	cout.flags(savedFlags);

	cout << endl << "幅" << endl;
	cout << "setw(10)<<18 : " << setw(10) << 18 << endl; // %10d
	cout << "setw(10)<<0.018 : " << setw(10) << 0.018 << endl; // %10f
	cout << "setw(10)<<\"ab\" : " << setw(10) << "ab" << endl; // %10s
	cout.flags(savedFlags);

	cout << endl << "精度" << endl;
	cout << "     fixed<<setprecision(5)<<0.018 : " <<      fixed << setprecision(5) << 0.018 << endl; // %.5f
	cout << "scientific<<setprecision(5)<<0.018 : " << scientific << setprecision(5) << 0.018 << endl; // %.5e
	cout.flags(savedFlags);

	cout << endl << "0埋め" << endl;
	// cout.fill('0') と指定するので,必ずしも埋める文字は0である必要はない
	char noFill=cout.fill('0'); // 埋める文字を指定し,指定前の文字をnoFillにセットする
	cout << "setw(10)<<fill('0')<<18 : " << setw(10) << 18 << endl; // %010d
	cout << "setw(10)<<fill('0')<<0.018 : " << setw(10) << 0.018 << endl; // %010f
	cout.fill(noFill); // noFillから設定を元に戻しておく

	cout << endl << "配置" << endl;
	cout << showpos << setw(10);
	cout << "setw(10)<<    left<<18 : " << setw(10) <<     left << 18 << endl; // %10d
	cout << "setw(10)<<   right<<18 : " << setw(10) <<    right << 18 << endl; // %-10d
	cout << "setw(10)<<internal<<18 : " << setw(10) << internal << 18 << endl;
	cout.flags(savedFlags);

	cout << endl << endl;

}