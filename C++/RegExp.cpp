#include <iostream>
#include <regex>
#include "Header.hpp"

using namespace std;

void RegExp(){

	cout << "\r\n" << "これから正規表現を試します" << "\r\n";

	string text="The Quick Brown Fox Jumps Over The Lazy Dog";
	cout << text << " →\r\n";

	cout << "\r\n" << "検索" << "\r\n";
	smatch found;
	/*
		stringに対する検索: smatch
		char*に対する検索: cmatch
	*/
	if (regex_search(text,found,regex("the ([a-z]+) ([a-z]+) fox",regex_constants::icase))) {
		cout << "マッチ:" << found.str() << " (" << found.position() << "から" << found.length() << "文字)" << "\r\n";
	}
	else {cout << "マッチしていません";}

	cout << "\r\n" << "マッチの確認" << "\r\n";
	regex re=regex("fox jumps",regex::icase);
	if (regex_search(text,re)) { // 部分一致を含む
		cout << "狐が飛んでいます" << "\r\n";
	}
	else {
		cout << "狐は飛んでいません" << "\r\n";
	}
	if (regex_match(text,re)) { // 完全一致のみ検索
		cout << "ただそれだけです" << "\r\n";
	}
	else {
		cout << "言いたいことは他にもある" << "\r\n";
	}
	/*
		regex_searchは部分一致で true/false
		regex_matchは完全一致で true/false
	*/

	cout << "\r\n" << "置換" << "\r\n";
	string replaced=regex_replace(text,regex("([a-z]+)o([a-z]+)"),"« $1ö$2 »");
	cout << replaced << "\r\n";
	replaced=regex_replace(text,regex("([a-z]+)o([a-z]+)"),"« $1ö$2 »",regex_constants::format_first_only);
	cout << "format_first_only:\r\n" << replaced << "\r\n";

}