#! /usr/bin/env php
<?php

print "\r\nこれからループ処理を試します\r\n\r\n";

print "\r\nfor (\$n=0; \$n<3; \$n++) {…}\r\n";
for ($n=0;$n<3;$n++) {
	print "n=${n} のループ\r\n";
}

print "\r\nforeach (array as \$c) {…}\r\n";
$cs=["壱","弐","参"];
foreach ($cs as $c) {
	print "c=\"${c}\" のループ\r\n";
}

print "\r\nwhile (~) {…}\r\n";
$str="";
while (strlen($str)<6) {
	$str.="*";
	print "$str\r\n";
}

print "\r\ndo {…} while (~)\r\n";
$str="";
do {
	$str.="+";
	print "$str\r\n";
} while (strlen($str)<6);

print "\r\n\r\n";

?>