#! /usr/bin/php

<?php

print "\nこのファイルを実行するにあたっての引数は以下の通りです:\n\n";

$n=0;
foreach ($argv as $s) {
	if ($n>0) {
		print " $n: $s\n";
	}
	$n++;
}
print "\n";

?>
