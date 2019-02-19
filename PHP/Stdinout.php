#! /usr/bin/php

こんにちは。私の名前はPHPです。
直接入力するだけでエコー出力します。
<?php print "勿論,こんな書き方だってアリです。\n\n"; ?>
あなたのことを教えてください
<?php
$aboutYou = trim(fgets(STDIN));
print "あなたは".$aboutYou."ですね。わかりました。";
?>
