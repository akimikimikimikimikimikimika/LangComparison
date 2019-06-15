#! /usr/bin/env php
<?php

$i = function($v){return $v;};

print <<<"Process"
プロセスID: {$i(getmypid())}
PHP:        {$i(PHP_BINARY)}
バージョン: {$i(PHP_VERSION)}
OS:         {$i(PHP_OS)} ({$i(PHP_OS_FAMILY)})

このコードの行番号: {$i(__LINE__)}

では,3.14秒ほど居眠りします


Process;
sleep(3.14);

?>