#! /usr/bin/env ruby

require_relative "Utility.rb"

def Path

	println """
		ホームディレクトリ:       #{Dir.home}
		カレントディレクトリ:     #{Dir.pwd}

		このファイルのフルパス:   #{File.realpath(__FILE__)}
		このファイルの実行パス:   #{__FILE__} = $0
		このファイルの名前:       #{File.basename(__FILE__)}
		このファイルのある場所:   #{__dir__}
	"""

	pnl 2

end

Path() if runningDirectly(__FILE__)