#! /usr/bin/env php
<?php

require_once("Utility.php");

function Repeat() {
	global $i;

	pnl(1);

	println("これから繰り返し処理を試します",2);

	pnl(1);

	println("for (\$n=0; \$n<3; \$n++) {…}");
	for ($n=0;$n<3;$n++) {
		println("n=${n} のループ");
	}

	pnl(1);

	println("foreach (\$array as \$c) {…}");
	$cs=["壱","弐","参"];
	foreach ($cs as $c) {
		println("c=\"${c}\" のループ");
	}

	pnl(1);

	println("while (~) {…}");
	$str="";
	while (strlen($str)<6) {
		$str.="*";
		println($str);
	}

	pnl(1);

	println("do {…} while (~)");
	$str="";
	do {
		$str.="+";
		println($str);
	} while (strlen($str)<6);

	pnl(2);

}

if (running_directly(__FILE__)) Repeat();

?>