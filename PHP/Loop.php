#! /usr/bin/php

<?php

echo "\nこれからループ処理を試します\n";

print "\nfor (\$n=0; \$n<3; \$n++) {...}\n\n";
for ($n=0;$n<3;$n++) {
	print "n=".$n."のループ\n";
}

print "\nforeach (array(0,1,2) as \$n) {...}\n\n";
foreach (array(0,1,2) as $n) {
	print "n=".$n."のループ\n";
}

print "\nwhile (~) {...}\n\n";
$str="";
while (strlen($str)<6) {
	$str.="*";
	print "$str\n";
}

print "\ndo {...} while (~)\n\n";
$str="";
do {
	$str.="+";
	print "$str\n";
} while (strlen($str)<6);

?>
