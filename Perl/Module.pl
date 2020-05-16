#! /usr/local/bin/perl

use Cwd;
use File::Basename;

push(@INC,Cwd::realpath(dirname($0))."/../Modules");

require "Module.pm";

print <<"Module";

これからモジュールを試します
../Module.pm のモジュールを実装します

Calc
Calc::sum(3,6,9) = @{[Calc::sum(3,6,9)]}

Module

print "\r\n\r\n";