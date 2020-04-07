#! /usr/bin/env php
<?php

require_once("Utility.php");

function Arrays() {
	global $i;
	global $a;

	# 基本操作用の配列
	$array=[2,5,4,6,1,3];

	$picked=$array[array_rand($array)];
		# $arrayの要素から無秩序に1つ抽出
		# array_rand($array,n) でn個(のインデックスを)抽出

	/*
		ポインタを利用した配列要素の取り出しかた

		key($array) : 現在のポインタの位置(インデックス)を返す
		current($array) : 現在のポインタ位置の要素を取り出す
		next($array) : ポインタを1つ進め,進めた先の要素を取り出す (既に末端にいて進む先がない場合はFALSEを返す)
		prev($array) : ポインタを1つ戻し,戻した先の要素を取り出す (既に先頭にいて戻す先がない場合はFALSEを返す)
		end($array) : ポインタを末端に移動させ,末端の要素を取り出す
		reset($array) : ポインタを先頭に移動させ,先頭の要素を取り出す

		配列を生成した時点で,ポインタは配列の先頭を指すように初期化されている
	*/

	$sorted=$array;
	sort($sorted); # ☆ [1,2,3,4,5,6]

	# sort,asort : 並び替えの仕方を指定することもできる
	# 省略した場合は,"文字列/数値を昇順で並び替え"と等しい
	# asortは連想配列にも利用可能
	# 逆順にするには rsort を利用

	# sort($array,SORT_REGULAR) : 要素の型に合わせ,比較演算子で比較判定し並べ替える (デフォルト)
	# sort($array,SORT_NUMERIC) : 要素を数値として大きさ順に並べ替える
	# sort($array,SORT_STRING) : 要素を文字列として辞書順に並べ替える
	# sort($array,SORT_NATURAL) : 要素を文字列として自然順に並べ替える
	# sort($array,SORT_LOCALE_STRING) : 要素を文字列としてロケールの書式に合わせて並べ替える

	/*
		たとえば...
		SORT_STRING  では ["item1","item10","item12","item2"] と並び替えるが,
		SORT_NATURAL では ["item1","item2","item10","item12"] と並び替える。
	*/

	$reversed=array_reverse($array); # [3,1,6,4,5,2]

	$shuffled=$array;
	shuffle($shuffled); # ☆

	$padded=array_pad($array,9,7); # [2,5,4,6,1,3,7,7,7]
		# 配列の大きさが9個になるように,7を末尾に追加して埋め合わせる
		# -9にすれば,先頭に追加して埋め合わせる

	$replaced=$array;
	array_replace($replaced,[1=>0,4=>7]); # ☆ [2,0,4,6,7,3]
		# 配列$replacedを第2引数の連想配列に定めたルールで置き換える
		# 連想配列のインデックス置換対象のインデックスを示し,対応する値が置換先の値になる

	$popped=["l","i","s","t","s"];
	array_pop($popped); # ☆

	$shifted=["p","l","i","s","t"];
	array_shift($shifted); # ☆

	$pushed=["l","i","s","t"];
	array_push($pushed,"s"); # ☆

	$unshifted=["l","i","s","t"];
	array_unshift($unshifted,"p"); # ☆
	/*

		pop,shift,push,unshift

		• array_pop()
			配列末尾の1要素を削除 + 削除した要素を返す
		• array_shift()
			配列先頭の1要素を削除 + 削除した要素を返す
		• array_push($i1,$i2...)
			配列末尾にi1,i2...を追加 + 新たな配列の長さを返す
		• array_unshift($i1,$i2...)
			配列先頭にi1,i2...を追加 + 新たな配列の長さを返す

	*/

	$spliced1=[0,1,2,3,4,5];
	array_splice($spliced1,3,2); # ☆ [0,1,2,5] (3番目から2つ分の要素を削除)

	$spliced2=[0,1,2,3,4,5];
	array_splice($spliced2,2,2,[6,7,8]); # ☆ [0,1,6,7,8,4,5] (2番目から2つ分の要素を削除し,そこに6,7,8を補完する)

	$spliced3=[0,1,2,3,4,5];
	array_splice($spliced3,3,0,[6,7,8]); # ☆ [0,1,2,6,7,8,3,4,5] (3番目の位置に6,7,8を追加する)



	$mixed=[0,2,4,3,8,10];

	$filtered=array_filter($mixed,function($value,$index){
		return $value==$index*2; # 値がインデックスの2倍が等しいかチェック
	},ARRAY_FILTER_USE_BOTH); # [0,2,4,8,10] (条件を満たさない3が取り除かれた配列になる)

	$mapped=array_map(function($value){
		return $value**2; # 値を2乗する
	},$mixed); # [0,4,16,9,64,100] (各々の値が平方になった配列になる)

	$walked=$mixed;
	array_walk($walked,function(&$value){
		$value=$value**2; # 値を2乗する
	}); # ☆ [0,4,16,9,64,100] (各々の値が平方になった配列になる)
	/*
		array_filter
		配列内の要素のうち関数で定められた条件を満たす要素から成る配列を生成する。

		array_filterに渡す関数は,その要素が条件を満たす時にTRUE,満たさない時にFALSEを返す。
		array_filter($array,function($value,$index){
			if (条件を満たす) return TRUE;
			else return FALSE;
		},$flag);

		$flag には次の値を指定することができる
		$flag==0: コールバックには値のみ渡す (デフォルト)
			function($value){ return TRUE/FALSE; }
		$flag==ARRAY_FILTER_USE_KEY: コールバックにはインデックスのみ渡す
			function($index){ return TRUE/FALSE; }
		$flag==ARRAY_FILTER_USE_BOTH: コールバックには値,インデックスの双方を渡す
			function($value,$index){ return TRUE/FALSE; }

		array_map
		配列内の各々の要素に関して関数を実行し,その戻り値より成る配列を返す。
		array_walk
		配列内の各々の要素に関して関数を実行し,参照を書き換えることで配列を書き換える。

		2つの関数は値を返すか,参照に代入するかの違いと,新たな配列を返すか,配列そのものを書き換えるかの違いがある。

		array_map(function($value){
			# $value を $newValue にする処理
			return $newValue;
		},$array);

		array_walk($array,function(&$value,$index,$arg){
			# $value を $newValue にする処理
			$value = $newValue;
		},$arg);

		array_walkの引数は array_walk($array,callback func,$arg); の形になっており,3番目の引数 $arg を指定した場合,コールバック関数では3番目の引数でその値を受け取ることができる。
		又, &$value を参照にせず単に $value にすれば,配列の書き換えはできなくなるが,所謂 foreach に相当する関数として機能する。
	*/

	$results=[2.5,2.4,2.8,2.7,2.6];
	$reduced=array_reduce($results,function($acc,$val) use($results) {
		return $acc+$val/count($results); // 平均値を求める
	},0);
	$sum=array_sum($results);
	$product=array_product($results);

	println(<<<"Values"

		これから配列を試します
		(☆は配列そのものを書き換える操作を示す)

		\$array=[2,5,4,6,1,3]

		大きさ
		count(\$array) = {$i(count($array))} = sizeof(\$array)

		要素取り出し
		\$array[2] = $array[2]

		☆ ソート
		sort(\$array) → {$a($sorted)}
		逆順
		array_reverse(\$array) = {$a($reversed)}
		☆ シャッフル
		shuffle(\$array) → {$a($shuffled)}

		インデックス•値を反転
		array_flip(\$array) = {$i(array_flip($array))}

		埋める
		array_fill(3,2,8) = {$i(array_fill(3,2,8))}
		array_pad(\$array,9,7) = {$a($padded)}

		結合
		array_merge([1,2],[3,4,5]) = {$a(array_merge([1,2],[3,4,5]))}

		抽出
		array_slice([0,1,2,3,4,5],3,5) = {$a(array_slice([0,1,2,3,4,5],2,4))}

		☆ 置換
		array_replace(\$array,[1=>0,4=>7]) → {$a($replaced)}

		要素の含有•位置
		array_search(1,[1,0,0,1,0]) = {$i(array_search(1,[1,0,0,1,0]))}

		☆ 要素の追加•削除
		array_pop(["l","i","s","t","s"]) → {$a($popped)}
		array_shift(["p","l","i","s","t"]) → {$a($shifted)}
		array_push(["l","i","s","t"],"s") → {$a($pushed)}
		array_unshift(["l","i","s","t"],"p") → {$a($unshifted)}
		array_splice([0,1,2,3,4,5],3,2) → {$a($spliced1)}
		array_splice([0,1,2,3,4,5],2,2,[6,7,8]) → {$a($spliced2)}
		array_splice([0,1,2,3,4,5],3,0,[6,7,8]) → {$a($spliced3)}

		2配列間の演算
		array_diff(\$array,[6,2],[5,3]) = {$a(array_diff($array,[6,2],[5,3]) /* 引き算 */)}
		array_intersect(\$array,[6,2],[2,4]) = {$a(array_intersect($array,[6,2],[2,4]) /* 共通部分の抽出 */)}

		要素の重複を解消
		array_unique([1,0,0,1,0]) = {$a(array_unique([1,0,0,1,0]))}

		要素を絞る/要素を変換
		\$mixed=[0,2,4,3,8,10]
		array_filter(\$mixed,値=インデックス×2) = {$a($filtered)}
		array_map(値を2乗にする,\$mixed) = {$a($mapped)}
		array_walk(\$mixed,値を2乗にする) = {$a($walked)} ☆

		要素を単一の値に変換
		\$results=[2.5,2.4,2.8,2.7,2.6]
		array_reduce(\$results,平均) = $reduced
		array_sum(\$results) = $sum
		array_product(\$results) = $product

	Values);

	pnl(2);

}

if (running_directly(__FILE__)) Arrays();

?>