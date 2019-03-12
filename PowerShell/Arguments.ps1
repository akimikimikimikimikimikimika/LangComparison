#! /usr/local/bin/pwsh

"`r`nこのファイルを実行するにあたっての引数は以下の通りです:`r`n";

$n=1;
foreach ($s in $args) {
	" ${n}: ${s}";
	$n+=1;
}

"`r`n";