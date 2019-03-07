#include <iostream>
#include <string>
#include "Header.hpp"

using namespace std;

void Loop(){
    cout << "\nこれからループ処理を試します\n\n";

    cout << "\nfor (n=0; n<3; n++) {…}\n";
    for (int n=0;n<3;n++) cout << "n="+to_string(n)+"のループ\n";

    cout << "\nwhile (~) {…}\n";
    string str="";
    while (str.length()<6) {
        str+="*";
        cout << str << "\n";
    }

    cout << "\ndo {…} while (~)\n";
    str="";
    do {
        str+="+";
        cout << str << "\n";
    } while (str.length()<6);
}