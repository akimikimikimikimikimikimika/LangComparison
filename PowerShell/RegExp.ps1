#! /usr/local/bin/pwsh

"`r`nこれから正規表現を試します`r`n";

$text="The Quick Brown Fox Jumps Over The Lazy Dog";
"$text →";

"`r`nマッチの確認`r`n";
# 正規表現で判定
if ($text -imatch "fox jumps") {
	"狐が飛んでいます";
}
else {
	"狐は飛んでいません";
}
# ワイルドカードで判定 (完全一致)
if ($text -ilike "*dog jumps*") {
	"犬が飛んでいます";
}
else {
	"犬は飛んでいません";
}

<#
	-match   : 正規表現検索
	-replace : 正規表現置換
	-like    : ワイルドカード
	"-match" → "-imatch" 等にすることで,オプションを付加できる
	syntax: -[ic]?(no)?match
		-i  大文字•小文字を考慮しない
		-c  大文字•小文字を考慮する
		-no 否定 (マッチしない場合は真)
#>

"`r`n置換`r`n";
# Exactによる置換
$replaced=$text.Replace("Jump","Skip");
"string.Replace:`r`n$replaced";
# RegExによる置換 & 加工はできない
$replaced=$text -ireplace "([a-z]+)o([a-z]+)","« `$1ö`$2 »";
"string -replace:`r`n$replaced";
# RegExによる置換 & 加工できる
$replaced=[regex]::Replace($text,"([a-z]+)o([a-z]+)",{ "« $($args.groups[1].value.toUpper())ö$($args.groups[2].value.toUpper()) »" });
"[regex]::Replace:`r`n$replaced";

"`r`n分割と結合`r`n";
$array=$text -split " ";
$arranged=$array -join "_";
$array;
$arranged;

"`r`n";