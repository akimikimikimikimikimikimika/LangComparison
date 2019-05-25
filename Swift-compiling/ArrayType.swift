
import Foundation

func ArrayType() {

	// コード中で as NSArray と明記している場合は,NSArrayのメソッドやプロパティにアクセスしていることを表すが,Arrayと重複がない場合は,特に明記しなくても利用できる。重複する場合は,明記しなければならない。

	// 配列の中身を書き換えるメソッド類
	/*
		中身を書き換えるメソッドのように, mutating と指定されているメソッドは,配列を書き換える扱いなので, let ではなく var で指定しなければならない
	*/

	var appended=[2,4,8]
	appended.append(16)

	var inserted=[2,4,8]
	inserted.insert(6, at: 2)

	var removed=[2,4,6,8]
	removed.remove(at: 2)

	var firstRemoved=[2,4,6,8]
	firstRemoved.removeFirst() // 削除された最初の要素が返される

	var lastRemoved=[2,4,6,8]
	lastRemoved.removeLast() // 削除された最後の要素が返される

	var firstRemoved2=[2,4,6,8]
	firstRemoved2.removeFirst(2) // 先頭から2つの要素が削除される

	var lastRemoved2=[2,4,6,8]
	lastRemoved2.removeLast(2) // 末尾から2つの要素が削除される

	var severalRemoved=[2,4,6,8,10]
	severalRemoved.removeSubrange(1...3) // 指定した範囲の要素が削除される

	// 配列の中身を書き換えるメソッド+配列自体は書き換えないメソッド
	// 同じ機能のものがそれぞれの目的で用意されている

	var sortedArray=[2,5,4,1,3]
	sortedArray.sort() // = [2,5,4,1,3].sorted()

	var reversedArray=[2,5,4,1,3]
	reversedArray.reverse() // = [2,5,4,1,3].reversed()

	var shuffledArray=[2,5,4,1,3]
	shuffledArray.shuffle() // = [2,5,4,1,3].shuffled()
	/*
		sort/reverse/shuffle
		これらはそれぞれsorted/reversed/shuffledという似た名前のメソッドが存在する
		sort/sorted を例にとれば

		array.sort()   : arrayに含まれる要素の順番を改変する。つまり,array自体を変更する。
		array.sorted() : arrayの要素の順番を直した新たな配列を返す。つまり,array自体は変化しない。

	*/

	// 反復処理系メソッド類
	// メソッドを実行する際に関数を渡して,配列内の要素毎に関数を実行して処理するメソッド

	let feSample=["A","B","C"]
	var feOutput=""
	feSample.forEach({ (value:String) in
		feOutput+=value
		feOutput+="\n"
	})
	/*
		forEach
		配列内の各要素に対して処理を行う関数を実行する。

		forEach({ (value:Element) -> Void in
			// value: 要素の値

			// ここに処理内容を記載する

		})
	*/

	let mixed=[0,2,4,3,8,10]

	let contain=mixed.contains(where:{ (value:Int) -> Bool in
		return (value%2)>0 // 2で割り切れないかチェック
	}) // true (3が条件を満たす)
	let contain2=mixed.contains(3) // 単に値の存在を確認するだけのものもある

	let satisfy=mixed.allSatisfy({ (value:Int) -> Bool in
		return (value%2)>0 // 2で割り切れないかチェック
	}) // false (3しか条件を満たさない)

	let first1=mixed.first(where:{ (value:Int) -> Bool in
		return (value%4)==2 // 4で割って余り2の数かチェック
	}) ?? -1 // 2 (配列内で最初に余り2なのは2)
	let first2=mixed.firstIndex(where:{ (value:Int) -> Bool in
		return (value%4)==2 // 4で割って余り2の数かチェック
	}) ?? -1 // 1 (配列内で最初に余り2なのは1番目の要素)

	let last1=mixed.last(where:{ (value:Int) -> Bool in
		return (value%4)==2 // 4で割って余り2の数かチェック
	}) ?? -1 // 10 (配列内で最後に余り2なのは10)
	let last2=mixed.lastIndex(where:{ (value:Int) -> Bool in
		return (value%4)==2 // 4で割って余り2の数かチェック
	}) ?? -1 // 5 (配列内で最後に余り2なのは5番目の要素)

	let mapped=mixed.map({ (value:Int) -> Int in
		return Int(pow(Double(value),2)) // 値を2乗する
		/*
			pow(Int,Int) -> Int はないので, pow(Double,Double) -> Double を利用する
			その場合,引数でInt->Doubleの変換をして,戻り値でDouble->Intの変換がが必要になる
		*/
	}) // [0,4,16,9,64,100] (各々の値が平方になった配列になる)

	var filtered=[0,2,4,3,8,10]
	filtered.removeAll(where:{ (value:Int) -> Bool in
		return (value%2) != 0 // 値が2で割り切れないかチェック
	}) // [0,2,4,8,10] (条件を満たした3が取り除かれた配列になる)

	/*
		contains/allSatisfy
		配列内の各要素に対して関数で定められた条件を満たすかテストする。

		contains() : 要素のうち1つでも条件を満たせば真を返す。つまりOR
		allSatisfy() : 全ての要素が条件を満たせば真を返す。つまりAND

		contains/allSatisfyに渡す関数は,その要素が条件を満たす時にtrue,満たさない時にfalseを返す。
		contains(where:{ (value:Element) -> Bool in
			if 条件を満たす {return true}
			else {return false}
		})
		allSatisfy({ (value:Element) -> Bool in
			if 条件を満たす {return true}
			else {return false}
		})

		first/firstIndex/last/lastIndex
		関数で定められた条件を配列の先頭/末尾から順に当てはめ,一番最初に合致したものを返す。

		first() : 先頭から当てはめて条件を満たした要素の値を探す
		firstIndex() : 先頭から当てはめて条件を満たした要素のインデックスを探す
		last() : 末尾から当てはめて条件を満たした要素の値を探す
		lastIndex() : 末尾から当てはめて条件を満たした要素のインデックスを探す

		first/firstIndex/last/lastIndexに渡す関数は,その要素が条件を満たす時にtrue,満たさない時にfalseを返す。
		first或いはlast(where:{ (value:Element) -> Bool in
			if 条件を満たす {return true}
			else {return false}
		}) ?? 見つからなかった場合の値
		firstIndex或いはlastIndex(where:{ (value:Element) -> Bool in
			if 条件を満たす {return true}
			else {return false}
		}) ?? 見つからなかった場合の値

		• first/firstIndex/last/lastIndexの戻り値は,条件に合致する値が見つからなかった場合も考慮して Element?型 (nil又はElement型の値) である。例に示した [Int] 配列でも Int? ではなく nilを含まない Int型 にするために, ?? -1 を末尾に加えた。(別に必要ではない)
		• firstIndex/lastIndex には,特定の値の位置を検索するための次のようなものもある:

			firstIndex(of:値) -> 指定した値が見つかった位置
			lastIndex(of:値) -> 指定した値が見つかった位置

		map
		配列内の各々の要素に関して関数を実行し,その戻り値より成る配列を返す。

		mapに渡す関数は,valueに対する処理をした後の新たな値を返す。
		map({ (value:Element) -> Element2 in
			// value を newValue にする処理
			return newValue
		})

		removeAll
		配列内の要素のうち関数で定められた条件を満たす要素を取り除いた配列を生成する。

		removeAllに渡す関数は,その要素が条件を満たす時にtrue,満たさない時にfalseを返す。
		removeAll(function(value:Element) -> Bool in
			if 条件を満たす {return true}
			else {return false}
		})

	*/

	let results=[2.5,2.4,2.8,2.7,2.6]
	let reduced=results.reduce(0,{ (acc:Double,val:Double) in
		return acc+val/Double(results.count) // 平均値を求める
	})
	/*
		reduce
		配列全体を1つの値にまとめる。
		配列の要素を1つずつ順に"1つの値"にしていくので,合計のような形で1つにまとめるのにふさわしい。

		reduceに渡す関数は,現在の値を処理を終了した後の値を返す。

		reduce(initial,{ (accumulator,value) in
			// ここで accumulator と value から newAccumulator を生成する処理をする
			return newAccumulator
		})
		これを配列[a,b,c]に関して実行すると...
		accumulator=initial に設定される。
		value=a として関数を実行する。戻り値は新たな accumulator になる。
		value=b として関数を実行する。戻り値は新たな accumulator になる。
		value=c として関数を実行する。戻り値は新たな accumulator になる。
		最後に accumulator を reduce() の戻り値として返す。
	*/

	print("""

	これから配列を試します

	["a","b","c","d","e"]
	.count    = \(["a","b","c","d","e"].count)
	.capacity = \(["a","b","c","d","e"].capacity)
	.isEmpty  = \(["a","b","c","d","e"].isEmpty)

	.first           = "\(["a","b","c","d","e"].first ?? "nil")"
	.last            = "\(["a","b","c","d","e"].last ?? "nil")"
	.randomElement() = "\(["a","b","c","d","e"].randomElement() ?? "nil")"

	☆ ソート
	[2,5,4,1,3].sort()   → \(sortedArray)
	[2,5,4,1,3].sorted() = \([2,5,4,1,3].sorted())
	☆ 逆順
	[1,2,3,4,5].reverse()  → \(reversedArray)
	[1,2,3,4,5].reversed() = \([1,2,3,4,5].reversed())
	☆ シャッフル
	[1,2,3,4,5].shuffle()  → \(shuffledArray)
	[1,2,3,4,5].shuffled() = \([1,2,3,4,5].shuffled())

	☆ 要素の追加•削除
	[2,4,8].append(16) → \(appended)
	[2,4,8].insert(6, at: 2) → \(inserted)

	[2,4,6,8].removeFirst() → \(firstRemoved)
	[2,4,6,8].removeLast() → \(lastRemoved)
	[2,4,6,8].removeFirst(2) → \(firstRemoved2)
	[2,4,6,8].removeLast(2) → \(lastRemoved2)
	[2,4,6,8,10].removeSubrange(1...3) → \(severalRemoved)

	条件マッチをチェック
	[0,2,4,3,8,10]
	.contains(where:2で割り切れない) = \(contain)
	.allSatisfy(2で割り切れない) = \(satisfy)

	マッチする値/インデックスを検索
	[0,2,4,3,8,10]
	.first(where:4で割って余り2) = \(first1)
	.firstIndex(where:4で割って余り2) = \(first2)
	.last(where:4で割って余り2) = \(last1)
	.lastIndex(where:4で割って余り2) = \(last2)

	要素を絞る/要素を変換
	[0,2,4,3,8,10]
	.removeAll(where:値が2で割り切れない) → \(filtered)
	.map(値を2乗にする) = \(mapped)

	要素を単一の値に変換
	[2.5,2.4,2.8,2.7,2.6]
	.reduce(平均) = \(reduced)
	""")

	print("\r\n")

}