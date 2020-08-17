<?php

# ユーティリティ
# プログラム全体で必要な関数等を提供する

# 実行の形態を確認
function running_directly($file) {
	return basename($file)==basename($_SERVER["PHP_SELF"]);
}
# running_directly(__FILE__) で確認
# 直接実行している → TRUE
# includeされている → FALSE

# 恒等関数 (ではなく,入力のオブジェクトを文字列化する関数)
$i = function($v){return print_r($v,TRUE);};

# 配列を簡潔に表示する関数
$a = function($v){return "[".implode(",",$v)."]";};

# 改行を伴う出力 + ヒアドキュメントの行頭インデントを削除する
function println($text,$eol=1) {
	print(clean($text));
	pnl($eol);
}

# 引数の文字列を改行しながら表示
function prints(...$text) {
	foreach ($text as $t) {print($t);pnl(1);}
}

# $lines で与えた数だけ改行文字を返す
function nl($lines=1) {
	$t="";
	for ($n=0;$n<$lines;$n++) $t.=PHP_EOL;
	return $t;
}

# $lines で与えた数だけ改行文字を出力する
function pnl($lines=1) {
	print(nl($lines));
}

# ヒアドキュメントの行頭インデントを削除する
function clean($text) {
	$text=preg_replace("/\n\t+/","\n",$text);
	$text=preg_replace("/^\t+/","",$text);
	return $text;
}

?>