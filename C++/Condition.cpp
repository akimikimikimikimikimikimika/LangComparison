#include <iostream>
#include "Header.hpp"

using namespace std;

void Condition(){
    bool test1 = true;
    bool test2 = false;

    cout << "\r\nこれから条件分岐を試します\r\n\r\n";

    if (test1) {
        cout << "どうやらtest1は真のようです\r\n";
    }

    if (!test1) {
        cout << "どうやらtest1は偽のようです\r\n";
    }
    else if (test2) {
        cout << "どうやらtest2は真のようです\r\n";
    }
    else if (!test2 && test1) {
        cout << "真偽が混在しているようです\r\n";
    }
    else {
        cout << "どれでもないようです\r\n";
    }


    int val = 1;
    switch (val) {
        case 0:
        case 1:
            cout << to_string(val)+"は特別な値である\r\n";break;
        case 2:
        case 4:
            cout << to_string(val)+"は素数ではない\r\n";break;
        case 3:
        case 5:
            cout << to_string(val)+"は素数である\r\n";break;
    }
}