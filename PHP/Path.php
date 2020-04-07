#! /usr/bin/env php
<?php

require_once("Utility.php");

function Path() {

	println(<<<"Path"
		ホームディレクトリ:       {$i(posix_getpwuid(posix_geteuid())["dir"])}
		カレントディレクトリ:     {$i(getcwd())}

		このファイルのフルパス:   {$i(__FILE__)}
		このファイルの実行パス:   {$argv[0]}
		このファイルの名前:       {$i(basename(__FILE__))}
		このファイルのある場所:   {$i(__DIR__)}
	Path);

	pnl(2);

}

if (running_directly(__FILE__)) Path();

?>