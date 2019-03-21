#! /usr/local/bin/perl

use Cwd;
use File::Basename; # dirname用

print "ホームディレクトリ:       ".$ENV{"HOME"}."\r\n";
print "カレントディレクトリ:     @{[Cwd::getcwd()]}\r\n\r\n";

print "このファイルのフルパス:   ".Cwd::realpath($0)."\r\n";
print "このファイルの実行パス:   $0\r\n";
print "このファイルの名前:       @{[basename($0)]}\r\n";
print "このファイルのある場所:   @{[Cwd::realpath(dirname($0))]}\r\n";

print "\r\n\r\n";