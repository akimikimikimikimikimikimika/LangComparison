#! /usr/local/bin/ruby

print """
ホームディレクトリ:       #{Dir.home}
カレントディレクトリ:     #{Dir.pwd}

このファイルのフルパス:   #{File.realpath(__FILE__)}
このファイルの実行パス:   #{__FILE__} = $0
このファイルの名前:       #{File.basename(__FILE__)}
このファイルのある場所:   #{__dir__}
""";

print "\r\n\r\n";