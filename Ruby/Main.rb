#! /usr/bin/env ruby
# -*- coding: utf-8 -*-

# Ruby

=begin
	複数行のコメント
	(ドキュメント)
=end

Dir.chdir(__dir__)

require_relative "Utility.rb"
require_relative "Stdio.rb"
require_relative "Values.rb"
require_relative "Operators.rb"
require_relative "Condition.rb"
require_relative "Repeat.rb"
require_relative "Calc.rb"
require_relative "Strings.rb"
require_relative "Format.rb"
require_relative "RegEx.rb"
require_relative "DateTime.rb"
require_relative "Classes.rb"
require_relative "Errors.rb"
require_relative "Files.rb"
require_relative "Path.rb"
require_relative "Process.rb"
require_relative "Threads.rb"
require_relative "Arguments.rb"

println """

	こんにちは。私の名前はRuby。
"""
while true

	println """

		何がしたい?

		1. 標準入出力を試す
		2. 色々な値を試す
		3. 演算子を試す
		4. 条件分岐を試す
		5. 繰り返しを試す
		6. 数学的演算を試す
		7. 文字列を試す
		8. 文字列フォーマットを試す
		9. 正規表現を試す
		a. 日付と時刻を試す
		b. クラスを試す
		c. 例外処理を試す
		d. ファイル操作を試す
		e. ファイルパスを試す
		f. プロセス系を試す
		g. スレッドを試す
		h. コマンドライン引数を試す

		0. 終了

	"""
	action = gets.chomp
	pnl 3

	if action=="0"
		break
	elsif action=="1"
		Stdio()
	elsif action=="2"
		Values()
	elsif action=="3"
		Operators()
	elsif action=="4"
		Condition()
	elsif action=="5"
		Repeat()
	elsif action=="6"
		Calc()
	elsif action=="7"
		Strings()
	elsif action=="8"
		Format()
	elsif action=="9"
		RegEx()
	elsif action=="a"
		DateTime()
	elsif action=="b"
		Classes()
	elsif action=="c"
		Errors()
	elsif action=="d"
		Files()
	elsif action=="e"
		Path()
	elsif action=="f"
		Process()
	elsif action=="g"
		Threads()
	elsif action=="h"
		Arguments()
	else
		println """
			指定したアクションは見つかりませんでした

		"""
	end
end

!exit(0)


__END__
以下は全てコメントとなる (ENDが末端を示す)