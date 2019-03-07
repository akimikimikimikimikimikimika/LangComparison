#include <iostream>
#include "Header.hpp"

using namespace std;

void Condition(){
    bool test1 = true;
    bool test2 = false;

    cout << "\nこれから条件分岐を試します\n\n";

    if (test1) {
        cout << "どうやらtest1は真のようです\n";
    }

    if (!test1) {
        cout << "どうやらtest1は偽のようです\n";
    }
    else if (test2) {
        cout << "どうやらtest2は真のようです\n";
    }
    else if (!test2 && test1) {
        cout << "真偽が混在しているようです\n";
    }
    else {
        cout << "どれでもないようです\n";
    }


    int val = 1;
    switch (val) {
        case 0:
        case 1:
            cout << to_string(val)+"は特別な値である\n";break;
        case 2:
        case 4:
            cout << to_string(val)+"は素数ではない\n";break;
        case 3:
        case 5:
            cout << to_string(val)+"は素数である\n";break;
    }
}