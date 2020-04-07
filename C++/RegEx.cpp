#include <iostream>
#include <regex>

using namespace std;

void RegEx(){

	cout <<
	endl <<
	"これから正規表現を試します" << endl;

	string text="The Quick Brown Fox Jumps Over The Lazy Dog";
	cout <<
		text << " →" << endl;

	cout <<
	endl <<

	"検索" << endl;
		smatch found;
		/*
			stringに対する検索: smatch
			char*に対する検索: cmatch
		*/
		if (regex_search(text,found,regex("the ([a-z]+) ([a-z]+) fox",regex_constants::icase))) {
			cout <<
			"マッチ:" << found.str() << " (" << found.position() << "から" << found.length() << "文字)" << endl <<
			"サブマッチ:" << endl;
			for (int n=0;n<3;n++) {
				cout << found[n].str() << " (" << found[n].length() << "文字)" << endl;
			}
		}
		else cout << "マッチしていません";

	cout <<
	endl <<

	"マッチの確認" << endl;
		regex re=regex("fox jumps",regex::icase);
		// 部分一致を含む
		if (regex_search(text,re)) cout << "狐が飛んでいます" << endl;
		else cout << "狐は飛んでいません" << endl;
		// 完全一致のみ検索
		if (regex_match(text,re)) cout << "ただそれだけです" << endl;
		else cout << "言いたいことは他にもある" << endl;
		/*
			regex_searchは部分一致で true/false
			regex_matchは完全一致で true/false
		*/

	cout <<
	endl <<

	"置換" << endl;
		string replaced=regex_replace(text,regex("([a-z]+)o([a-z]+)"),"« $1ö$2 »");
		cout <<
		replaced << endl;
		replaced=regex_replace(text,regex("([a-z]+)o([a-z]+)"),"« $1ö$2 »",regex_constants::format_first_only);
		cout <<
		"format_first_only:" << endl <<
		replaced << endl;

}