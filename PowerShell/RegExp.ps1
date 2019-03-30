#! /usr/local/bin/pwsh

"`r`nこれから正規表現を試します`r`n";

"`r`n置換`r`n";

$text="<r> <r> <r>";
$replaced=$text.Replace("<r>","{r}"); # Exactによる置換
"string.Replace: $text → $replaced";
$text="<a> <b> <c>";
$replaced=$text -replace "<([a-z])>","{`$1}";
"string -replace: $text → $replaced"; # RegExによる置換 & 加工はできない
$text="<a> <b> <c>";
$replaced=[regex]::Replace($text,"<([a-z])>",{ "{"+$args.groups[1].value.toUpper()+"}" });
"[regex]::Replace: $text → $replaced"; # RegExによる置換 & 加工できる

"`r`n分割と結合`r`n";
$text="a-b-c";
$split=$text -split "-";
$arranged=$split -join ".";
"$text → $arranged";

"`r`nマッチの確認`r`n";
$test1="qUiVeR";
$test2="ShIvEr";
# 正規表現で判定
if ($test1 -imatch "^qu") {
	"$test1 はquで始まります";
}
else {
	"$test1 はquで始まりません";
}
# ワイルドカードで判定
if ($test2 -ilike "sh*") {
	"$test2 はshで始まります";
}
else {
	"$test2 はshで始まりません";
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

"`r`n";