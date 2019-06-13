#! /usr/local/bin/perl

# 基本操作用の配列
my @array=(2,5,4,6,1,3);

# 配列自体は書き換えないメソッド類

my @sorted=sort @array; # (1,2,3,4,5,6)
=comment
	sort : 並び替えの仕方を指定することもできる
	省略した場合は,"文字列/数値を昇順で並び替え"と等しい

	sort { $a <=> $b } @array # 数値を昇順で並び替え
	sort { $b <=> $a } @array # 数値を降順で並び替え
	sort { $a cmp $b } @array # 文字列を昇順で並び替え
	sort { $b cmp $a } @array # 文字列を降順で並び替え
=cut

my @reversed=reverse @array; # (3,1,6,4,5,2)

# 配列の中身を書き換えるメソッド類

my @popped=("l","i","s","t","s");
pop @popped;

my @shifted=("p","l","i","s","t");
shift @shifted;

my @pushed=("l","i","s","t");
push @pushed,"s";

my @unshifted=("l","i","s","t");
unshift @unshifted,"p";
=comment

	pop,shift,push,unshift

	• pop @array
		配列末尾の1要素を削除 + 削除した要素を返す
	• shift @array
		配列先頭の1要素を削除 + 削除した要素を返す
	• push @array,$i1,$i2...
		配列末尾に$i1,$i2...を追加 + 新たな配列の長さを返す
	• unshift @array,$i1,$i2...
		配列先頭に$i1,$i2...を追加 + 新たな配列の長さを返す

=cut

my @spliced1=(0,1,2,3,4,5);
splice @spliced1,3,2; # (0,1,2,5) (3番目から2つ分の要素を削除)

my @spliced2=(0,1,2,3,4,5);
splice @spliced2,2,2,(6,7,8); # (0,1,6,7,8,4,5) (2番目から2つ分の要素を削除し,そこに6,7,8を補完する)

my @spliced3=(0,1,2,3,4,5);
splice @spliced3,3,0,(6,7,8); # (0,1,2,6,7,8,3,4,5) (3番目の位置に6,7,8を追加する)

# 反復処理系メソッド類
# メソッドを実行する際にブロックを指定して,配列内の要素毎にブロックを実行して処理するメソッド

my @mixed=(0,2,4,3,8,10);

my @grepped=grep { $_ % 2 == 0 } @mixed; # 値が偶数かチェック
# (0,2,4,8,10) (条件を満たさない3が取り除かれた配列になる)

my @mapped=map { $_ ** 2 } @mixed; # 値を2乗する
# (0,4,16,9,64,100) (各々の値が平方になった配列になる)

=comment
	grep
	配列内の要素のうち関数で定められた条件を満たす要素から成る配列を生成する。

	grepに渡す条件式は,その要素が条件を満たす時に1,満たさない時に0を返す。
	grep {
		$_ # 値を受け取る
		if (条件を満たす) 1
		else 0
	} @array

	map
	配列内の各々の要素に関して関数を実行し,その戻り値より成る配列を返す。

	mapに渡す条件式は,$_に対する処理をした後の新たな値を返す。
	map {
		# $_ を newValue にする処理
	} @array
=cut

# 配列の参照 (ポインタ)
# PerlでもC言語のようなポインタで配列を取り扱えるが,ポインタ演算はできない

my @normal=(1,2,3,4); # 通常の配列
my $ref=[5,6,7,8];    # 参照配列
@normal[0]; # 配列の要素を取得
$ref->[0];  # 参照配列の要素を取得
\@normal; # 変換 : 配列 → 参照配列
@$ref;    # 変換 : 参照配列 → 配列

print <<"Array";

これから配列を試します
(☆は配列そのものを書き換える操作を示す)

\@array=(2,5,4,6,1,3)

大きさ
scalar(\@array) = @{[scalar(@array)]}

要素取り出し
\@array[2]       = @{[@array[2]]}
\@array[2,3,1,4] = @{[@array[2,3,1,4]]} (指定した順に取り出す)
\@array[2..4]    = @{[@array[2..4]]}

ソート
sort \@array = @sorted
逆順
reverse \@array = @reversed

☆ 要素の追加•削除
pop ("l","i","s","t","s") → @popped
shift ("p","l","i","s","t") → @shifted
push ("l","i","s","t"),"s" → @pushed
unshift ("l","i","s","t"),"p" → @unshifted
splice (0,1,2,3,4,5),3,2 → @spliced1
splice (0,1,2,3,4,5),2,2,(6,7,8) → @spliced2
splice (0,1,2,3,4,5),3,0,(6,7,8) → @spliced3

要素を絞る/要素を変換
grep {偶数} (0,2,4,3,8,10) = @grepped
map {値を2乗にする} (0,2,4,3,8,10) = @mapped

配列•参照配列
(1,2,3,4) = @normal
[5,6,7,8] = $ref

Array

print "\r\n\r\n";