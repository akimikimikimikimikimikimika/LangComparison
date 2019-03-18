#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

print "プロセスID: $$\r\n";
print "Perl:       @{[$^X]}\r\n";
print "バージョン: @{[$^V]}\r\n";
print "OS:         @{[$^O]}\r\n";

print "\r\nでは,3.14秒ほど居眠りします\r\n\r\n";
sleep(3.14);