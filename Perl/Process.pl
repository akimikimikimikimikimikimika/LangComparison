#! /usr/bin/env perl

print <<"Process";
プロセスID: $$
Perl:       @{[$^X]}
バージョン: @{[$^V]}
OS:         @{[$^O]}

このコードの行番号: @{[__LINE__]}
パッケージ名:       @{[__PACKAGE__]}

では,3.14秒ほど居眠りします


Process

sleep(3.14);