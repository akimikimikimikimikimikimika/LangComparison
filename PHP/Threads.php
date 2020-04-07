#! /usr/bin/env php
<?php

require_once("Utility.php");

function Threads() {
	global $i;

	pnl(1);

	println("これからスレッドを試します",2);

	# 9個のスレッドそれぞれで6回のループ

	class mtThread extends Thread {

		private $m=0;
		public function __construct($m) {
			$this->m = $m;
		}

		# 実行内容を定義
		public function run() {
			for ($n=1;$n<7;$n++) {
				print "|($this->m,$n)| = {$i(hypot($this->m,$n))}\r\n";
			}
		}

	}

	$threads=[];

	for ($m=1;$m<10;$m++) {
		array_push($threads,new mtThread($m));
	}

	println("スレッドを開始します");
	foreach ($threads as $t) {
		$t->start();
	}

	println("スレッドの終了を待ちます");
	foreach ($threads as $t) {
		$t->join();
	}
	println("スレッドは終了しました");

	# 各々のスレッド内でのループの順番は守られるが,全54回のプロセスの順番はバラバラ
	# このコードを実行する毎に,順番は変化する

	pnl(2);

};

if (running_directly(__FILE__)) Threads();

?>