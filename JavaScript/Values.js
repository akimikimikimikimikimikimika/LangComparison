
"use strict";

// 文字列
let text = "ジャバスクリプト";
let lines = `
First line
Second line
Third line
`;
let string = new String(text);
/*
	変数展開/式展開の仕方
	`The value is ${val*2}`
*/

// 数値
let integer = 6;
let floating = .0375e-6;
let number = new Number(6);
let pInf = Infinity;
let nInf = -Infinity;
let nan = NaN; // 数値でないことを示す値

// 真偽値
let bool = true;
let boolean = new Boolean(bool);

// ヌル値
let nil = null; // 値なしを示す値

// 未定義値
let ud = undefined; // 定義されていないことを示す。オブジェクトで存在しないプロパティは常にこの値。

// 配列
let list = [1, "second", 3, 3.14, false];
let array = new Array(list);

// オブジェクト
let dict = {
	"a":1,
	b:"second",
	"c":3,
	d:3.14,
	"e":false
};
let object = new Object(dict);

// 関数
function cube(val) {
	return val**3;
};
// クロージャ (無名関数)
let func1 = function(val) {
	return val**2;
};
let func2 = new Function("val","return val**2"); // new Function(受け取る引数..., 関数の内容);
let func3 = (val) => {
	return val**2;
};
	/*
		3つ目のような表記はアロー関数(=>)と呼ばれている。
		今回の平方を求める関数の場合,アロー関数は次のように簡略化できる。
		• 引数が1個の場合,引数を括弧で括る必要はない (引数が0又は2以上の時は必要)
			val=>{
				return val**2;
			};
		• 関数本文が1行の場合,波括弧で括る必要はない。この時,実行内容は関数の戻り値となる
			(val)=>val**2;
			但し,オブジェクトを返す場合は,括弧で括る必要がある : (args...)=>({keys:values})
		メソッドとしてアロー関数を指定する場合は, this が当該オブジェクトを指さないことに注意しなければならない。
		又,狭い範囲で変数を利用するためのブロックとして,以下のような即時実行関数の表記がしばしば採られる。
			(()=>{
				// ブロックの内容
			})();
	*/

console.log(`

色々な値を試します

文字列: ${text}
   長さ: ${text.length}
文字列2:
${lines}
数値:
   整数: ${integer},${func1(integer)},${cube(integer)}
   浮動小数: ${floating}
   無限大: ${pInf},${nInf}
   不正な値: ${nan}
真偽値: ${bool}
ヌル値: ${nil}
未定義値: ${ud}
配列:
   ${list}
   2番目: ${list[2]}
   大きさ: ${list.length}
オブジェクト:
   ${dict}
   b= ${dict["b"]}
関数:
${cube}
クロージャ (無名関数) 1:
${func1}
クロージャ (無名関数) 2:
${func2}
クロージャ (無名関数) 3:
${func3}
`);
