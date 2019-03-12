#! /usr/local/bin/pwsh

$test1 = $True;
$test2 = $False;

"`r`nこれから条件分岐を試します`r`n";

if ($test1) {
	"どうやらtest1は真のようです";
}

if (-not $test1) {
	"どうやらtest1は偽のようです";
}
elseif ($test2) {
	"どうやらtest2は真のようです";
}
elseif (-not $test2 -and $test1) {
	"真偽が混在しているようです";
}
else {
	"どれでもないようです";
}

$val = 1;
switch -r ("$val") {
	"^[01]$" {
		"${val}は特別な値である";
	}
	"^[246]$" {
		"${val}は素数ではない";
	}
	"^[357]$" {
		"${val}は素数ではない";
	}
	default {
		"${val}なぞ私には興味がない";
	}
}
<#
	switchのオプション
	-e / -Exact         : 値が正確に一致する必要がある
	-w / -Wildcard      : ワイルドカードに合致する必要がある
	-r / -Regex         : 正規表現に合致する必要がある
	-c / -CaseSensitive : 大文字•小文字を区別する
#>

"`r`n";