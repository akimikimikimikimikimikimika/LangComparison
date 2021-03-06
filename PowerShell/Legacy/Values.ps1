#! /usr/bin/env pwsh

# 文字列
[string] $string="パワーシェル";
$lines=@'
First line
Second line
Third line
'@;
${複数行 (4行)}=@"
$lines
以上, $string より
"@;
$lines2="""
First line
Second line
Third line
""";
[char] $char=80;
<#
	${変数} の型で空白を含む変数名や,ASCII以外の文字の変数も定義できる

	変数展開/式展開の仕方
	"The value is $val"
	"The value is ${val}"
	"The value is $($val*2)"
#>
# 数値
[byte] $byte=6;
[int] $int=6;
[long] $long=6;
[float] $float=.0375e-6; # 別名single
[double] $double=.0375e-6;
[decimal] $decimal=.0375e-6;
# 真偽値
[bool] $bool=$True;
# ヌル
$nil=$Null;
# 配列
[array] $array=@(); # 空配列の表記
[array] $array=@(1,"second",3,3.14,$False);
[array] $array=1,"second",3,3.14,$False;
# 連想配列
[Hashtable] $map=@{
	a=1
	b="second"
	c=3;d=3.14
	e=$False
};
# 範囲
[array] $ranI=5..8;  # 5≤x≤8
# 関数
function cube($val) {
	Write-Output ($val*$val*$val);
}
# クロージャ (無名関数)
$func={
	$int*$int;
}.GetNewClosure();

@"
色々な値を試します

文字列: $string
文字列2:
$lines
文字列3:
${複数行 (4行)}
文字: $char
数値:
   整数 (byte): $byte
   整数 (int): $int,$(& $func),$(cube -val $int)
   整数 (long): $long
   浮動小数 (float): $float
   浮動小数 (double): $double
   浮動小数 (decimal): $decimal
真偽値: $bool
値なし: $nil
配列:
   $array
   2番目: $($array[2])
   大きさ: $($array.Length)
連想配列:
   $map
   b= $($map['b'])
   大きさ:$($map.Length)
範囲:
   5≤x≤8 = $ranI
無名関数:
   $func
"@;

"`r`n";