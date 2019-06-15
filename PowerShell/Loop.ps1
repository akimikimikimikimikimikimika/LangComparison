#! /usr/bin/env pwsh

"`r`nこれからループ処理を試します`r`n";

"`r`nfor (`$n=0; `$n -lt 3; `$n++) {…}`r`n";
for ($n=0; $n -lt 3; $n++) {
	"n=${n} のループ";
}

"`r`nforeach (`$n in 0..2) {…}`r`n";
foreach ($n in 0..2) {
	"n=${n} のループ";
}

"`r`nforeach (`$n in @(0,1,2)) {…}`r`n";
foreach ($n in @(0,1,2)) {
	"n=${n} のループ";
}

"`r`nforeach (`$c in array) {…}`r`n";
$cs="壱","弐","参";
foreach ($c in $cs) {
	"c=`"${c}`" のループ";
}

"`r`nwhile (~) {…}`r`n";
$str="";
while ($str.Length -lt 6) {
	$str+="*";
	"$str";
}

"`r`n";