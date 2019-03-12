#! /usr/local/bin/pwsh

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
[float] $float=6; # 別名single
[double] $double=6;
[decimal] $decimal=6;
# 真偽値
[bool] $bool=$True;
# ヌル
$nil=$Null;
# 配列
[array] $array=@(); # 空配列の表記
[array] $array=@(1,"second",3,3.14,$False);
[array] $array=1,"second",3,3.14,$False;
[array] $array2=0..2;
# 連想配列
[Hashtable] $map=@{
	a=1
	b="second"
	c=3;d=3.14
	e=$False
};
# 関数
function cube($val) {
	Write-Output ($val*$val*$val);
}
# クロージャ (無名関数)
$func={
	$int*$int;
}.GetNewClosure();

"`r`n色々な値を試します";
"文字列:$string";
"   長さ:$($string.Length)";
"文字列2:`r`n$lines";
"文字列3:`r`n${複数行 (4行)}";
"文字:$char";
"整数 (byte):$byte";
"整数 (int):$int,$(& $func),$(cube -val $int)";
"整数 (long):$long";
"浮動小数 (float):$float";
"浮動小数 (double):$double";
"浮動小数 (decimal):$decimal";
"真偽値:$bool";
"ヌル:$nil";
"配列:$array";
"   2番目:$($array[2])";
"   大きさ:$($array.Length)";
"範囲指定:$array2";
"連想配列:$map";
"   b= $($map['b'])";
"   大きさ:$($map.Length)";
"関数:$func";

"`r`n";