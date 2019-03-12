#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

print "ホームディレクトリ:       #{Dir.home}\r\n";
print "カレントディレクトリ:     #{Dir.pwd}\r\n\r\n";

print "このファイルのフルパス:   #{File.realpath(__FILE__)}\r\n";
print "このファイルの実行パス:   #{__FILE__}\r\n"; # $0も使える
print "このファイルの名前:       #{File.basename(__FILE__)}\r\n";
print "このファイルのある場所:   #{__dir__}\r\n";

print "\r\n\r\n";