#! /usr/bin/env ruby

require_relative "Utility.rb"

def RegEx

	pnl 1

	println "これから正規表現を試します",2

	text="The Quick Brown Fox Jumps Over The Lazy Dog"
	println "#{text} →"

	pnl 1

	println "検索"
	found=text.scan(/the ([a-z]+) ([a-z]+) fox/i);
	prints "str.scan:",found
	# str.scan は複数のマッチした部分を配列形式で返す。
	# e.g. "<b></b><i></i><u></u><s></s>".scan(/<[a-z]>/) → ["<b>","<i>","<u>","<s>"]
	# 正規表現内に括弧が含まれている場合と含まれていない場合で挙動が異なる
	# • 括弧なし → 正規表現にマッチしたテキスト全体の配列
	# • 括弧あり → 正規表現にマッチした部分の各々で,括弧の部分のみを抜き出して並べてできた配列による配列 (二次元配列)
	#    ※ 括弧がある場合,マッチしたテキスト全体は得られない
	#    e.g. '<b title="bold"><i title="italic"><u title="underline"><s title="strike">'.scan(/<([a-z]) title="([a-z]+)">/)
	#    → [["b","bold"],["i","italic"],["u","underline"],["s","strike"]]

	pnl 1

	println "マッチの確認"
	if text =~ /fox jumps/i then
		println "狐が飛んでいます"
	else
		println "狐は飛んでいません"
	end
	# パターンを記号で囲んで,%rを前に付加するなら,様々な記号で正規表現は表せる。スラッシュをエスケープする必要がなくなるので,便利か。
	if text =~ %r{dog jumps}i then
		println "犬が飛んでいます"
	else
		println "犬は飛んでいません"
	end
	color="brown"
	# 変数展開
	if text !~ /#{color}/i then
		println "茶色の生物なんてここにいない"
	else
		println "茶色い生物がいる"
	end

	pnl 1

	println "置換"
	replaced=text.sub(/([a-z]+)o([a-z]+)/i,'« \1ö\2 »')
	prints "str.sub:",replaced
	replaced=text.gsub(/([a-z]+)o([a-z]+)/i,'« \1ö\2 »')
	prints "str.gsub:",replaced

	pnl 1

	println "分割と結合"
	array=text.split(/(the|s)? /i)
	arranged=array.join("_")
	println "#{array}"
	println arranged

	# im以外のフラグ:
	# x: 正規表現中の空白/改行を無視
	# u: Unicode
	# o: 式展開を1回限りにする

	# 注意
	# Ruby では正規表現中の ^ や $ は文字列の先頭や末尾ではなく,文字列中の改行文字で区切られた行頭や行末にマッチする。
	# 文字列の先頭にマッチさせるには ^ の代わりに \A を使用する。
	# 文字列の末尾にマッチさせるには $ の代わりに \z を使用する。

	pnl 2

end

RegEx() if runningDirectly(__FILE__)