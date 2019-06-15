#! /usr/bin/env perl

use Cwd;
use File::Basename; # dirname用

print <<"Path";
ホームディレクトリ:       @{[$ENV{"HOME"}]}
カレントディレクトリ:     @{[Cwd::getcwd()]}

このファイルのフルパス:   @{[Cwd::realpath($0)]}
このファイルの実行パス:   $0
このファイルの名前:       @{[basename($0)]}
このファイルのある場所:   @{[Cwd::realpath(dirname($0))]}
Path

print "\r\n\r\n";