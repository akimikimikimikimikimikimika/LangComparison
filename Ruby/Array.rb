#! /usr/local/bin/ruby

# 基本操作用の配列
array=[2,5,4,6,1,3]

# 配列自体は書き換えないメソッド類

picked=array.sample
	# arrayの要素から無秩序に1つ抽出
	# array.sample(n) でn個抽出

sorted=array.sort # [1,2,3,4,5,6]
	# array.sort! とすればarray自体が並び替えられる

=begin
	sort : 並び替えの仕方を指定することもできる
	省略した場合は,"文字列/数値を昇順で並び替え"と等しい

	array.sort { a <=> b } # 数値を昇順で並び替え
	array.sort { b <=> a } # 数値を降順で並び替え
=end

reversed=array.reverse # [3,1,6,4,5,2]
	# array.reverse! とすればarray自体が逆順になる

rotated1=array.rotate( 2) # [4,6,1,3,2,5]
rotated2=array.rotate(-2) # [1,3,2,5,4,6] (逆の操作)
	# array.rotate! とすれば,array自体の順番を変化させる
	# array.rotate(2) とすれば,arrayの2番目の要素が先頭にくるようにずらしていく

shuffled=array.shuffle
	# array.suffle! とすればarray自体がかき乱される

filled=array.clone()
filled.fill(9,2,5) # [2,5,9,9,9,3] (2≤x<5 の範囲を9で埋める)

odd=[1,3,5]
low=[1,2,3]
unioned=low.union(odd) # [1,2,3,5] (重複なく配列を結合)

# 配列の中身を書き換えるメソッド類

popped=["l","i","s","t","s"]
popped.pop

shifted=["p","l","i","s","t"]
shifted.shift

pushed=["l","i","s","t"]
pushed.push("s")

unshifted=["l","i","s","t"]
unshifted.unshift("p")

sliced=[0,1,2,3,4,5]
sliced.slice!(3,2) # [0,1,2,5] (3番目から2つ分の要素を削除)
	# sliceはそれ自体取り除いた要素から成る配列を返す
	# slice! と違い slice は配列の中身を書き換えず, array[3,2] = array.slice(3,2) である

deleted=[0,1,2,3,4,5]
deleted.delete(3) # [0,1,2,4,5] (3番目の要素を削除)
# delete_at(pos) はpos番目の要素を削除する

inserted=[0,1,2,3,4,5]
inserted.insert(3,6,7,8) # [0,1,2,6,7,8,3,4,5] (3番目の位置に6,7,8を追加する)


# 反復処理系メソッド類
# メソッドを実行する際にブロックを指定して,配列内の要素毎にブロックを実行して処理するメソッド

mixed=[0,2,4,3,8,10]

foundIndex=mixed.find_index {|value|
	(value**0.5)%1==0 # 値の平方根が整数かチェック
} # 2 (最初に条件を満たすのは2番目の値である)

filtered=mixed.filter! {|value|
	value%2==0 # 値が偶数かチェック
} # [0,2,4,8,10] (条件を満たさない3が取り除かれた配列になる)

mapped=mixed.map {|value|
	value**2 # 値を2乗する
} # [0,4,16,9,64,100] (各々の値が平方になった配列になる)

=begin

	find_index
	ブロックで定められた条件を配列の先頭から順に当てはめ,一番最初に合致したもののインデックスを返す。

	ブロックは,その要素が条件を満たす時にtrue,満たさない時にfalseを返す。
	find_index { |value|
		if (条件を満たす) true
		else false
	}

	filter!
	select!
	keep_if
	配列内の要素のうちブロックで定められた条件を満たさない要素を削除する。

	ブロックは,その要素が条件を満たす時にtrue,満たさない時にfalseを返す。
	filter!或いはselect!或いはkeep_if { |value|
		if (条件を満たす) true
		else false
	}

	これらは与えられた配列を戻り値として返すが,全て条件を満たす場合(配列が全く変化しない場合)は, filter! や select! では nil を返す

	条件を満たす場合に削除する
	reject!
	delete_if
	なるものもある

	map
	配列内の各々の要素に関して関数を実行し,その戻り値より成る配列を返す。

	mapに渡す関数は,valueに対する処理をした後の新たな値を返す。
	map(function(value,index,array){
		// value を newValue にする処理
		return newValue;
	})

=end

print """

これから配列を試します
(☆は配列そのものを書き換える操作を示す)

array=[2,5,4,6,1,3]

大きさ
array.length=#{array.length}

要素取り出し
array[2]       = #{array[0]}
array[2,4]     = #{array[2,4]} (pick 4 items from 2)
array[2..4]    = #{array[2..4]} (pick 2≦x≦4)
array[2...4]   = #{array[2...4]} (pick 2≦x<4)
array.first    = #{array.first}
array.first(3) = #{array.first(3)}
array.last     = #{array.last}
array.last(3)  = #{array.last(3)}

ソート
array.sort = #{sorted}
逆順
array.reverse = #{reversed}
回転
array.rotate( 2) = #{rotated1}
array.rotate(-2) = #{rotated2}
シャッフル
array.shuffle = #{shuffled}

☆ 埋める
array.fill(0,2,5) → #{filled}

結合
[1,2,3].union([1,3,5]) = #{unioned}

要素の含有•位置
[1,0,0,1,0].include?(3) = #{[1,0,0,1,0].include?(3)}
[1,0,0,1,0].index(1)    = #{[1,0,0,1,0].index(1)}
[1,0,0,1,0].rindex(1)   = #{[1,0,0,1,0].rindex(1)}

☆ 要素の追加•削除
[\"l\",\"i\",\"s\",\"t\",\"s\"].pop → #{popped}
[\"p\",\"l\",\"i\",\"s\",\"t\"].shift → #{shifted}
[\"l\",\"i\",\"s\",\"t\"].push(\"s\") → #{pushed}
[\"l\",\"i\",\"s\",\"t\"].unshift(\"p\") → #{unshifted}
[0,1,2,3,4,5].slice(3,2) → #{sliced}
[0,1,2,3,4,5].delete(3) → #{deleted}
[0,1,2,3,4,5].insert(3,6,7,8) → #{inserted}

インデックスを検索
[0,2,4,3,8,10].findIndex(値の平方根が整数) = #{foundIndex}

要素を絞る/要素を変換
[0,2,4,3,8,10].map {値を2乗にする} = #{mapped}

""";

print "\r\n\r\n";