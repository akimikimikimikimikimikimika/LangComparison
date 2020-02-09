#! /usr/bin/env node

// 基本操作用の配列
let array=[2,5,4,6,1,3];

// 配列の中身を書き換えるメソッド類
/*
	中身を書き換えるメソッドであるが,中身が変わるだけで配列そのものは変わらないので, let のままでも良い
*/

let sorted=Array.from(array);
sorted.sort(); // [1,2,3,4,5,6]

let reversed=Array.from(array);
reversed.reverse(); // [3,1,6,4,5,2]

let filled=Array.from(array);
filled.fill(9,2,5); // [2,5,9,9,9,3] (2≤x<5 の範囲を9で埋める)

let copied=Array.from(array);
copied.copyWithin(0,2,4); // [4,6,1,5,4,6,1,3] (0番目を 2≤x<4 の範囲の内容で埋める)

/*
	Array.from(x) は配列xの内容をコピーした別のオブジェクトを生成する
	本来は,配列ではないけど,配列もどきなオブジェクトであれば何でも新しい配列に変換できる
*/

let popped=["l","i","s","t","s"];
popped.pop();

let shifted=["p","l","i","s","t"];
shifted.shift();

let pushed=["l","i","s","t"];
pushed.push("s");

let unshifted=["l","i","s","t"];
unshifted.unshift("p");
/*

	pop,shift,push,unshift

	• pop()
		配列末尾の1要素を削除 + 削除した要素を返す
	• shift()
		配列先頭の1要素を削除 + 削除した要素を返す
	• push(i1,i2...)
		配列末尾にi1,i2...を追加 + 新たな配列の長さを返す
	• unshift(i1,i2...)
		配列先頭にi1,i2...を追加 + 新たな配列の長さを返す

*/

let spliced1=[0,1,2,3,4,5];
spliced1.splice(3,2); // [0,1,2,5] (3番目から2つ分の要素を削除)

let spliced2=[0,1,2,3,4,5];
spliced2.splice(2,2,6,7,8); // [0,1,6,7,8,4,5] (2番目から2つ分の要素を削除し,そこに6,7,8を補完する)

let spliced3=[0,1,2,3,4,5];
spliced3.splice(3,0,6,7,8); // [0,1,2,6,7,8,3,4,5] (3番目の位置に6,7,8を追加する)

// 配列自体は書き換えないメソッド類

let concatenated=[1,2].concat(3,[4,5]);   // concatの引数には追加する配列要素或いは結合させる配列を指定する

let sliced=[2,5,4,1,3].slice(3,5);   // 3≤x<5 の範囲の要素を抽出

// 反復処理系メソッド類
// メソッドを実行する際に関数を渡して,配列内の要素毎に関数を実行して処理するメソッド

let feSample=["A","B","C"];
var feOutput="";
feSample.forEach((value,index)=>{
	for (var n=0;n<index+1;n++) feOutput+=value;
	feOutput+="\n";
});
/*
	forEach
	配列内の各要素に対して処理を行う関数を実行する。

	forEach(function(value,index,array){
		// index: 配列の要素のインデックス番号
		// value: インデックスに対応する要素の値
		// array: 配列自体

		// ここに処理内容を記載する

	})
*/

let mixed=[0,2,4,3,8,10];

let some=mixed.some((value,index)=>{
	return value==index; // 値とインデックスが等しいかチェック
}); // true (0と3が条件を満たす)

let every=mixed.every((value,index)=>{
	return value==index; // 値とインデックスが等しいかチェック
}); // false (0と3しか条件を満たさない)

let found=mixed.find((value)=>{
	return !(value**0.5)%1; // 値の平方根が整数かチェック
}); // 4 (最初に条件を満たすのは4である)

let foundIndex=mixed.findIndex((value)=>{
	return !(value**0.5)%1; // 値の平方根が整数かチェック
}); // 2 (最初に条件を満たすのは2番目の値である)

let filtered=mixed.filter((value,index)=>{
	return value==index*2; // 値がインデックスの2倍が等しいかチェック
}); // [0,2,4,8,10] (条件を満たさない3が取り除かれた配列になる)

let mapped=mixed.map((value)=>{
	return value**2; // 値を2乗する
}); // [0,4,16,9,64,100] (各々の値が平方になった配列になる)

/*
	some/every
	配列内の各要素に対して関数で定められた条件を満たすかテストする。

	some() : 要素のうち1つでも条件を満たせば真を返す。つまりOR
	every() : 全ての要素が条件を満たせば真を返す。つまりAND

	some/everyに渡す関数は,その要素が条件を満たす時にtrue,満たさない時にfalseを返す。
	some或いはevery(function(value,index,array){
		if (条件を満たす) return true;
		else return false;
	})

	find/findIndex
	関数で定められた条件を配列の先頭から順に当てはめ,一番最初に合致したものを返す。

	find() : 条件を満たした要素の値を探す
	findIndex() : 条件を満たした要素のインデックスを探す

	find/findIndexに渡す関数は,その要素が条件を満たす時にtrue,満たさない時にfalseを返す。
	find或いはfindIndex(function(value,index,array){
		if (条件を満たす) return true;
		else return false;
	})

	filter
	配列内の要素のうち関数で定められた条件を満たす要素から成る配列を生成する。

	filterに渡す関数は,その要素が条件を満たす時にtrue,満たさない時にfalseを返す。
	filter(function(value,index,array){
		if (条件を満たす) return true;
		else return false;
	})

	map
	配列内の各々の要素に関して関数を実行し,その戻り値より成る配列を返す。

	mapに渡す関数は,valueに対する処理をした後の新たな値を返す。
	map(function(value,index,array){
		// value を newValue にする処理
		return newValue;
	})

*/

let results=[2.5,2.4,2.8,2.7,2.6];
let reduced=results.reduce(function(acc,val){
	return acc+val/results.length; // 平均値を求める
},0);
let reducedFromRight=results.reduceRight(function(acc,val){
	return acc+val/results.length; // 平均値を求める
},0);
/*
	reduce/reduceRight
	配列全体を1つの値にまとめる。
	配列の要素を1つずつ順に"1つの値"にしていくので,合計のような形で1つにまとめるのにふさわしい。

	reduce() : 要素を左から順に処理する。
	reduceRight() : 要素を右から順に処理する。

	reduce/reduceRightに渡す関数は,現在の値を処理を終了した後の値を返す。

	reduce(function(accumulator,value,index,array){
		// ここで accumulator と value から newAccumulator を生成する処理をする
		return newAccumulator;
	},initial)
	これを配列[a,b,c]に関して実行すると...
	accumulator=initial に設定される。
	value=a として関数を実行する。戻り値は新たな accumulator になる。
	value=b として関数を実行する。戻り値は新たな accumulator になる。
	value=c として関数を実行する。戻り値は新たな accumulator になる。
	最後に accumulator を reduce() の戻り値として返す。
	reduceRight() は c→b→a の順にこれが実行される。
*/

console.log(`

これから配列を試します
(☆は配列そのものを書き換える操作を示す)

array=[2,5,4,6,1,3]

大きさ
array.length = ${array.length}

要素取り出し
array[2] = ${array[2]}

☆ ソート
array.sort() → ${sorted}
☆ 逆順
array.reverse() → ${reversed}

☆ 埋める
array.fill(0,2,5) → ${filled}
array.copyWithin(0,2,4) → ${copied}

☆ 要素の追加•削除
["l","i","s","t","s"].pop() → ${popped}
["p","l","i","s","t"].shift() → ${shifted}
["l","i","s","t"].push("s") → ${pushed}
["l","i","s","t"].unshift("p") → ${unshifted}
[0,1,2,3,4,5].splice(3,2) → ${spliced1}
[0,1,2,3,4,5].splice(2,2,6,7,8) → ${spliced2}
[0,1,2,3,4,5].splice(3,0,6,7,8) → ${spliced3}

配列の結合
[1,2].concat(3,[4,5]) = ${concatenated}

配列の抽出
[2,5,4,1,3].slice(3,5) = ${sliced}

要素の含有•位置
["a","t","t","r"].includes("r") = ${   ["a","t","t","r"].includes("r")   }
["a","t","t","r"].indexOf("t") = ${   ["a","t","t","r"].indexOf("t")   }
["a","t","t","r"].lastIndexOf("t") = ${   ["a","t","t","r"].lastIndexOf("t")   }

条件マッチをチェック
[0,2,4,3,8,10]
.some(値=インデックス) = ${some}
.every(値=インデックス) = ${every}

マッチする値/インデックスを検索
[0,2,4,3,8,10]
.find(値の平方根が整数) = ${found}
.findIndex(値の平方根が整数) = ${foundIndex}

要素を絞る/要素を変換
[0,2,4,3,8,10]
.filter(値=インデックス×2) = ${filtered}
.map(値を2乗にする) = ${mapped}

要素を単一の値に変換
[2.5,2.4,2.8,2.7,2.6]
.reduce(平均) = ${reduced}
.reduceRight(平均) = ${reducedFromRight}

`);
