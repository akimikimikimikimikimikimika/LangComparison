#! /usr/bin/env swift

import Foundation

print("\r\nこれから例外処理を試します\r\n")

// do節内で起こりうる例外は捕捉される
do {
	// 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
	throw NSError(domain: "あなたは過ちを犯した!!", code: 1, userInfo: nil)
}
// 例外をキャッチすればcatch節が実行される
catch {
	print("エラーが発生しました")
}

// エラーを発生させ得る関数は throws を付加する
func ErrorEmitter() throws -> Void {
	throw NSError(domain: "あなたは過ちを犯した!!", code: 1, userInfo: nil)
}

// エラーを発生させ得る関数を利用する場合は do+try を利用しなければならない
do {
	try ErrorEmitter()
}
catch {
	print("エラーが発生しました")
}

try? ErrorEmitter() // エラーが発生しても無視される
/*
try! ErrorEmitter()
	: エラーが絶対に発生しない前提で利用する。エラーが発生すればクラッシュする。
*/

print("\r\n")