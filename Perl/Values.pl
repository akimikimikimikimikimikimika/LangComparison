#! /usr/local/bin/perl

use Math::Complex;

# スカラ (変数名は必ず $ で始まる)
my $string = "パール";
my $lines = <<"Lines";

First line
Second line
Third line
Lines
=comment
	変数展開/式展開の仕方
	"The value is $val"
	"The value is ${val}"
	"The value is @{[$val*2]}"
	⚠︎ 変数展開はスカラでのみ可。それ以外は式展開を使う。
	⚠︎ シングルクオート不可。エスケープ文字も使えなくなる。
=cut
my $integer = 6;
my $float = .0375e-6;
my $complex = 3+1*i;
my $ud = undef;

# 配列,リスト (変数名は必ず @ で始まる)
my @array = (1, "second", 3, 3.14);
	# 但し,配列のスカラ要素や,配列の大きさなど,スカラ値を取り出す場合は,変数名を@ではなく$で始める
# ハッシュ (変数名は必ず % で始まる)
my %hash = (
	a => 1,
	b => "second",
	c => 3,
	d => 3.14
);
	# 但し,配列のスカラ要素や,配列の大きさなど,スカラ値を取り出す場合は,変数名を%ではなく$で始める
# 範囲
@ranI = 5..8; # 5≦x≦8
# 関数 (サブルーチン)
sub cube {
	my $val = $_[0];
	return $val ** 3;
};
# 無名関数
my $func = sub {
	my $val = $_[0];
	return $val ** 2;
};

print <<"Values";

色々な値を試します

文字列: $string
文字列2:
$lines
数値:
   整数: $integer,@{[$func->($integer)]},@{[&cube($integer)]}
   浮動小数: $float
   複素数: $complex
未定義値: $ud
配列:
   @array
   2番目: @{[@array[2]]}
   大きさ: @{[scalar(@array)]}
ハッシュ:
   @{[%hash]}
   b= @{[$hash{b}]}
   大きさ: @{[scalar(%hash)]}
範囲:
   5≤x≤8 = @ranI
無名関数:
   $func
Values

=comment
	Perlのブロック : { }
	Perlはパッケージが大きな単位となる言語。1つのPerlファイルが1つのパッケージをなす。
	Perlでは,変数宣言の際に my $var としなければ,ブロック外から $var が参照できてしまう。
   グローバル変数は宣言した場所に依らず,至るところからアクセス可能な変数。
   ブロック変数は,ブロック内で変数宣言した際に,そのブロック内でのみアクセス可能な変数。
   ローカル変数は,宣言した領域内(クラス,メソッド,ファイル等)でのみアクセス可能な変数。

	グローバル変数 : $var, our $var (パッケージと紐付けされ, $package::var でアクセス可能)
	ブロック変数 : local $var (パッケージと紐付けされ, $package::var でアクセス可能)
	ローカル変数 : my $var, state $var
	定数 : use constant var => ...
=cut

print "\r\n\r\n";