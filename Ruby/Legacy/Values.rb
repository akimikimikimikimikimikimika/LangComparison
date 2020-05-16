#! /usr/bin/env ruby

require_relative "Utility.rb"

def Values

	# スカラ
	string = "ルビー"
	lines = """

	First line
	Second line
	Third line
	"""
	lines2 = <<-"Lines"

	First line
	Second line
	Third line
	Lines

	# もう1つのヒアドキュメント
	# <<-"Lines" 自体が文字列オブジェクトを表し, <<-"Lines" の次の行からヒアドキュメントが始まる (名前はLinesである必要はない)
	# ヒアドキュメント末端は Lines で示す。
	# <<-"Lines" の代わりに <<"Lines" を使用することもできるが,この場合末尾の識別子 Lines をインデントしてはならない

	# 変数展開/式展開の仕方
	# "The value is #{val*2}"

	char = ?赤 # ?で1文字の文字列型の値を表す

	integer = 6
	float = 0.0375e-6
	complex = 3+1i
	# String.to_c でも複素数が生成できるが,ここでは,以下の表記法がとれる
	# • "3+6i".to_c # 実部+虚部i
	# • "3+6j".to_c # 実部+虚部j
	# • "3@6".to_c  # 絶対値@偏角
	boolean = true
	null = nil
	# 配列,リスト
	array = [1, "second", 3, 3.14, false]
	# ハッシュ
	hash = {
		a: 1,
		b: "second",
		c: 3,
		d: 3.14,
		e: false
	}
	# ハッシュのキーとして指定可能なものは2種類ある
	# a:"Symbol型"
	# "a"=>"String型"
	# それぞれは全く別のものであるから注意する必要がある
	# JSONのように "a":"value" とするとSymbol型になってしまう
	# アクセスするときは次のように指定する
	# Symbol型 ... hash[:a]
	# String型 ... hash["a"]
	# 尚,StringよりもSymbolの方がアクセス速度が早いという

	# 範囲
	ranI = 5..8 # 5≦x≦8
	ranE = 5...8 # 5≦x<8
	# 関数
	def cube(val)
		val ** 3
	end
	# Rubyの関数を実行する際は,引数が0の場合, cube などと単に関数名を示すだけで実行できる
	# 逆に,関数を値として渡すことはできない
	# 無名関数
	func = ->(val) {
		val ** 2;
	}
	# Rubyの関数は最後の文の内容が自動的にreturnされる。
	# returnして欲しくない場合は,例えば, nil という行を後ろに追加する。

	# Rubyの値の型判定
	# • val.class -> string : クラスを示す
	# • val.kind_of?(Type) -> bool : クラスTypeの値かどうかを判定 (サブクラスも該当)
	# • val.instance_of?(Type) -> bool : クラスTypeの値かどうかを判定 (サブクラスは含まない)

	println """
		色々な値を試します

		文字列: #{string}
		   長さ: #{string.length}
		文字列2:
		#{lines}
		文字: #{char}
		数値:
		   整数: #{integer},#{func.call(integer)},#{cube(integer)}
		   浮動小数: #{float}
		   複素数: #{complex}
		真偽値: #{boolean}
		値なし: #{null}
		配列:
		   #{array}
		   2番目: #{array[2]}
		   大きさ: #{array.length}
		ハッシュ:
		   #{hash}
		   b= #{hash[:b]}
		   大きさ: #{hash.length}
		範囲:
		   5≦x≦8 = #{ranI}
		   5≦x<8 = #{ranE}
		無名関数:
		   #{func}
	"""

	# Rubyのブロック : do…end 又は { }
	# Rubyの変数は,自動的にクローズ参照する仕様であり,大文字で始まる変数#名を極力使わないようにすればよい。
	# グローバル変数は宣言した場所に依らず,至るところからアクセス可能な変数。
	# ブロック変数は,ブロック内で変数宣言した際に,そのブロック内でのみアクセス可能な変数。
	# ローカル変数は,宣言した領域内(クラス,メソッド,ファイル等)でのみアクセス可能な変数。
	#
	# グローバル変数 : $var
	# ブロック内変数 : |var|
	# ローカル変数 : var
	# 定数 : VAR
		# 大文字で始めると定数扱いになる。但し,定数を上書きすることは可能。警告が表示されるだけ。

	pnl 2

end

Values() if runningDirectly(__FILE__)