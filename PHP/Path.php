#! /usr/local/bin/php
<?php

print "ホームディレクトリ:       ".posix_getpwuid(posix_geteuid())["dir"]."\r\n";
print "カレントディレクトリ:     ".getcwd()."\r\n\r\n";

print "このファイルのフルパス:   ".__FILE__."\r\n";
print "このファイルの実行パス:   ".$argv[0]."\r\n";
print "このファイルの名前:       ".basename(__FILE__)."\r\n";
print "このファイルのある場所:   ".__DIR__."\r\n";

print "\r\n\r\n";

?>