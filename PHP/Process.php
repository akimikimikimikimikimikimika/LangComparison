#! /usr/bin/env php
<?php

require_once("Utility.php");

function Process() {
	global $i;

	// 最終更新時刻取得用
	$dt=new DateTime();
	date_timestamp_set($dt,getlastmod());

	println(<<<"Process"

		プロセスID: {$i(getmypid())}

		PHP
		バージョン:     {$i(PHP_VERSION)}{$i(PHP_EXTRA_VERSION)}
		実行ファイル:   {$i(PHP_BINARY)}
		マニュアル:     {$i(PHP_MANDIR)}
		ライブラリ:     {$i(PHP_LIBDIR)}
		データ:         {$i(PHP_DATADIR)}
		システム構成:   {$i(PHP_SYSCONFDIR)}
		Zendバージョン: {$i(zend_version())}

		OS: {$i(PHP_OS)} ({$i(PHP_OS_FAMILY)})

		このコードの行番号:       {$i(__LINE__)}
		このコードの最終更新時刻: {$i(date_format($dt,'Y-m-d H:i:s'))}

		では,3.14秒ほど居眠りします

	Process);

	sleep(3.14); // 居眠り

}

if (running_directly(__FILE__)) Process();

?>