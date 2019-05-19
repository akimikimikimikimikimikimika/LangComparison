#include <iostream>
#include <thread>
#include <vector>
#include <ctgmath>
#include "Header.hpp"

/*
	本コードは,スレッド処理を導入するために,標準に準拠するよう記述されているが,どうもこのコードを含めると使用しているコンパイラでコンパイルできなくなるので削除している。
*/

using namespace std;

void Thread(){

	cout << "同時に実行可能な数: " << std::thread::hardware_concurrency() << "\r\n";

	std::vector<std::thread> threads;

	for (int m=0;m<9;m++) {
		threads.push_back(std::thread(mtAction,m));
	}
	cout << "スレッドの終了を待ちます" << "\r\n";
	for (std::thread &onethread : threads) {
		onethread.join();
	}
	cout << "スレッドは終了しました" << "\r\n";

}

// 9個のスレッドそれぞれで6回のループ
void mtAction(int m) {
	for (int n=0;n<7;n++) {
		cout << "|(" << m << "," << n << ")| = " << std::hypot(m,n) << "\r\n";
	}
}