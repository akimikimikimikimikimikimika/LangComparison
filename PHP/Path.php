#! /usr/local/bin/php
<?php

$i = function($v){return $v;};

print <<<"Path"
ホームディレクトリ:       {$i(posix_getpwuid(posix_geteuid())["dir"])}
カレントディレクトリ:     {$i(getcwd())}

このファイルのフルパス:   {$i(__FILE__)}
このファイルの実行パス:   {$argv[0]}
このファイルの名前:       {$i(basename(__FILE__))}
このファイルのある場所:   {$i(__DIR__)}
Path;

print "\r\n\r\n";

?>