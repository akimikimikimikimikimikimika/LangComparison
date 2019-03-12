#include <iostream>
#include <string>
#include "Header.hpp"

using namespace std;

void Loop(){
    cout << "\r\nこれからループ処理を試します\r\n\r\n";

    cout << "\r\nfor (n=0; n<3; n++) {…}\r\n";
    for (int n=0;n<3;n++) cout << "n="+to_string(n)+"のループ\r\n";

    cout << "\r\nwhile (~) {…}\r\n";
    string str="";
    while (str.length()<6) {
        str+="*";
        cout << str << "\r\n";
    }

    cout << "\r\ndo {…} while (~)\r\n";
    str="";
    do {
        str+="+";
        cout << str << "\r\n";
    } while (str.length()<6);
}