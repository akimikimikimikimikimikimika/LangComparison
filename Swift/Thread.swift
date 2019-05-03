#! /usr/bin/swift

import Foundation
import Dispatch

print("\r\nこれからスレッドを試します\r\n")

/*
	スレッドに関して取り扱う方法は次のような方法がある
	• Dispatch による処理 (Dispatchで定義)
	• BlockOperation (NSBlockOperation) による処理 (Foundationで定義)
	• Operation (NSOperation) による処理 (Foundationで定義)
	• Thread (Foundationで定義)
	最後の1つを除くとどれも,実行内容を定義して,それをキューに追加して利用する
	実行の仕方に関して次の2種類が存在する
	• concurrent (並列実行)
		concurrentな処理をキューに追加すると,それらはプロセッサの許す限り1度に実行される。
		処理速度を向上させられるが,処理が開始する順序も処理が完了する順序も実行する毎に変化する。
		各処理内のコードは1行毎に順に実行されるが,全体としての実行順序はバラバラである。
	• serial (直列実行)
		concurrentな処理がキューに並ぶ中にserialな処理を投入しても,serialな処理だけは単独で実行する。
		値を共有している場合など,順番に処理しなければならない場合に有効である。
		BlockOperationでは直列実行はできない
*/

var counter:Int = 0

print("\r\nDispatch\r\n")
/*
	Dispatchを使う場合,単純にキューに処理内容を追加することで簡単に並列処理を実現できる
	キューはシステムが用意するものと,ユーザーが独自で用意するものがある

		DispatchQueue.main
			システムが用意する直列実行キュー (メインディスパッチキュー)
		DispatchQueue.global(qos: .userInitiated)
			システムが用意する並列実行キュー (グローバルディスパッチキュー)
			qosにはディスパッチの優先度 (QoS: Quality of Service) を指定する。優先度順に以下の5種類。
				.userIntereactive
				.userInitiated
				.default
				.utility
				.background
		DispatchQueue(label: "キューの名前", qos: .userInitiated, attributes: .concurrent)
			ユーザー定義の並列実行キュー (プライベートディスパッチキュー)
			attributes: .concurrent を除くと,直列実行になる
	DispatchGroupを使うと,複数のキューやそれらの処理の進捗を把握できる
*/

let dg = DispatchGroup()
// 並列処理を作成する
let cdq = DispatchQueue(label: "並列処理", qos: .userInitiated, attributes: .concurrent) // 並列処理用キューを用意
for m in 1...9 {
	cdq.async(group: dg) {
		for n in 1...6 {
			print("|(\(m),\(n))| = \(hypot(Double(m),Double(n)))")
		}
	}
}
// 直列処理を作成する
let sdq = DispatchQueue(label: "直列処理", qos: .userInitiated) // 直列処理用キューを用意
for m in 1...3 {
	sdq.async(group: dg) {
		counter+=1
		print("直列処理\(m) (\(counter)番目の処理)")
	}
}

// キュー内の全ての処理が完了するまで待機する
print("終了を待ちます")
dg.wait()
print("終了しました")

counter=0

print("\r\nBlockOperation (NSBlockOperation)\r\n")
/*
	BlockOperationはOperationのサブクラスであり,Dispatchのように具体的に並列処理が定義できる
	但し,concurrentな利用に限る
*/

// キューを用意
let oq = OperationQueue()
for m in 1...9 {
	let bo = BlockOperation {
		for n in 1...6 {
			print("|(\(m),\(n))| = \(hypot(Double(m),Double(n)))")
		}
	}
	oq.addOperation(bo)
}

// キュー内の全ての処理が完了するまで待機
print("終了を待ちます")
oq.waitUntilAllOperationsAreFinished()
print("終了しました")

print("\r\nOperation (NSOperation)\r\n")
/*
	Operationは処理を抽象的に定義できる
	Operationを使う場合,処理内容を指定したカスタムクラスを定義し,クラスからインスタンスを生成して,それをキューに追加することで並列処理を実現できる
	カスタムクラスで次のメソッド/プロパティを上書きする必要がある
	• concurrent
		func start()      // 実行内容を定義する
		isExecuting:Bool  // 処理が実行中かどうかをシステムに伝える
		isFinished:Bool   // 処理が完了したかどうかをシステムに伝える
		isConcurrent:Bool // concurrentであることをシステムに伝える。常にtrueを返さなければならない
	尚,BlockOperationはシステムに用意されたカスタムクラスである
*/

// 処理内容を定義
class ConcurrentOperation:Operation {

	// 引数なしのイニシャライザを設定する場合は, override init にする
	init(order o:Int){
		self.order = o
		super.init()
	}

	var order:Int

	// 処理の開始前と終了後に,これから実行することをシステムに伝える
	override func start(){
		if !self.isCancelled { // 処理がキャンセルされていないことを確認する
			self.status = .executing // 実行中フラグをつける

			// 実行内容
			let m = order
			for n in 1...6 {
				print("|(\(m),\(n))| = \(hypot(Double(m),Double(n)))")
			}

			self.status = .finished // 実行完了フラグをつける
		}
	}

	// status: クラス内で処理の進捗を示す列挙型の値
	// 必要はないが,isExecuting,isFinishedを示すのに便利である

	// 列挙型の値の定義
	enum Status {
		case ready
		case executing
		case finished
	}
	// statusプロパティの値の変化を監視している
	private var status:Status = .ready {
		willSet { // 値の変更前に呼び出される
			// isExecuting,isFinishedがこれから変化することをシステムに伝えなければならない
			self.willChangeValue(forKey: "isExecuting")
			self.willChangeValue(forKey: "isFinished")
		}
		didSet { // 値の変更後に呼び出される
			// isExecuting,isFinishedが変化したことをシステムに伝えなければならない
			self.didChangeValue(forKey: "isExecuting")
			self.didChangeValue(forKey: "isFinished")
		}
	}

	override var isExecuting: Bool {
		return self.status == .executing // 実行中フラグの場合に実行しているとする
	}

	override var isFinished: Bool {
		return self.status == .finished // 実行完了フラグの場合に完了しているとする
	}

	override var isConcurrent: Bool {
		return true
	}

}

class SerialOperation:Operation {

	init(order o:Int) {
		self.order = o
		super.init()
	}
	var order:Int

	override func main() {
		counter+=1
		print("直列処理\(self.order) (\(counter)番目の処理)")
	}

}

// キューを用意
// let oq = OperationQueue()

for n in 1...9 {
	let co = ConcurrentOperation(order: n) // concurrentな処理を作成
	oq.addOperation(co) // キューに追加
}

for n in 1...3 {
	let so = SerialOperation(order: n)
	oq.addOperation(so)
}

// キュー内の全ての処理が完了するまで待機
print("終了を待ちます")
oq.waitUntilAllOperationsAreFinished()
print("終了しました")

print("\r\n")