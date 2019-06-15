#! /usr/bin/env php
<?php

$i = function($v){return $v;};

print "\r\nこれからスレッドを試します\r\n\r\n";

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

$threads=array();

for ($m=1;$m<10;$m++) {
	array_push($threads,new mtThread($m));
}

print "スレッドを開始します\r\n";
foreach ($threads as $t) {
	$t->start();
}

print "スレッドの終了を待ちます\r\n";
foreach ($threads as $t) {
	$t->join();
}
print "スレッドは終了しました\r\n";

# 各々のスレッド内でのループの順番は守られるが,全54回のプロセスの順番はバラバラ
# このコードを実行する毎に,順番は変化する

print "\r\n\r\n";

?>