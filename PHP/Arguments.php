#! /usr/local/bin/php
<?php

# 引数は1番目から (0番目はこのファイルを呼ぶパス)

print "\r\nこのファイルを実行するにあたっての引数は以下の通りです:\r\n";

$n=0;
foreach ($argv as $s) {
	if ($n>0) {
		print " $n: $s\r\n";
	}
	$n++;
}

print "\r\n\r\n";

?>