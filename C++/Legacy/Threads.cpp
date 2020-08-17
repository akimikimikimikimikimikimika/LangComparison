#include <iostream>
#include <thread>
#include <vector>
#include <cmath>

using namespace std;

// 9個のスレッドそれぞれで6回のループ
	// スレッドの内容を定義するこの関数をヘッダーファイルで定義するとコンパイルエラーになる
void mtAction(int m) {
	for (int n=1;n<7;n++) printf("|(%d,%d)| = %8.5f\n",m,n,std::hypot(m,n));
	// cout << << ... で出力する場合,値ごとにバラバラの出力になる
}

void Threads(){

	cout << "同時に実行可能な数: " << std::thread::hardware_concurrency() << endl;

	std::vector<std::thread> threads;

	for (int m=1;m<10;m++) threads.push_back(std::thread(mtAction,m));
	cout << "スレッドの終了を待ちます" << endl;
	for (std::thread &onethread : threads) onethread.join();
	cout << "スレッドは終了しました" << endl;

	cout << endl << endl;

}