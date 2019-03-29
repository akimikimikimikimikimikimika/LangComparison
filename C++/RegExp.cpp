#include <iostream>
#include <regex>
#include "Header.hpp"

using namespace std;

void RegExp(){

	cout << "\r\n" << "これから正規表現を試します" << "\r\n";

	cout << "\r\n" << "マッチの確認" << "\r\n";
	string test1="qUiVeR";
	regex re=regex("^qu",regex::icase);
	if (regex_search(test1,re)) {
		cout << test1 << " はquで始まります" << "\r\n";
	}
	else {
		cout << test1 << " はquで始まりません" << "\r\n";
	}
	if (regex_match(test1,re)) {
		cout << test1 << " はquに完全一致します" << "\r\n";
	}
	else {
		cout << test1 << " はquに完全一致しません" << "\r\n";
	}
	/*
		regex_searchは部分一致で true/false
		regex_matchは完全一致で true/false
	*/

	cout << "\r\n" << "検索" << "\r\n";
	string text="IllUsTrAtE";
	smatch results;
	/*
		stringに対する検索: smatch
		char*に対する検索: cmatch
	*/
	if (regex_search(text,results,regex("l+",regex_constants::icase))) {
		cout << "マッチ:" << results.str() << " (" << results.position() << "から" << results.length() << "文字)" << "\r\n";
	}
	else {cout << "マッチしていません";}

	cout << "\r\n" << "置換" << "\r\n";
	text="<a> <b> <c>";
	string replace=regex_replace(text,regex("<([a-z])>"),"{$1}");
	cout << "regex_replace: " << text << " → " << replace << "\r\n";
	text="<a> <b> <c>";
	replace=regex_replace(text,regex("<([a-z])>"),"{$1}",regex_constants::format_first_only);
	cout << "regex_replace: " << text << " → " << replace << "\r\n";

}