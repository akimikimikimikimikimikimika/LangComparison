#! /usr/local/bin/ruby

print "\r\nこれから例外処理を試します\r\n\r\n";

# begin節内で起こりうる例外は捕捉される
begin
	# 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
	raise "あなたは過ちを犯した!!";
# 例外をキャッチすればrescue節が実行される
rescue => e
	print "エラーが発生しました\r\n";
	print "エラー内容:\r\n#{e}\r\n";
# 例外をキャッチしなければelse節が実行される。なくても良い
else
	print "エラーは発生しませんでした\r\n";
# 最後にensure節が実行される。なくても良い
ensure
	print "以上でエラーチェックを終了します\r\n";
end
# 例外を捕捉するにはrescueが必要である

print "\r\n";

# エラーの種類を指定する例
begin
	# エラーの種類をSyntaxError(構文エラー)にする
	raise SyntaxError,"あなたはRubyの文法を踏み外している!";
	# 或いは
	raise SyntaxError.new("あなたはRubyの文法を踏み外している!");
rescue SyntaxError, NoMemoryError => e
	# 種類を定めたエラーを捕捉するには,rescue節で発生する可能性のあるエラーを特定しなければならない (この場合,SyntaxErrorとNoMemoryErrorが捕捉できる)
	print "エラーが発生しました\r\n";
	print "エラー内容:\r\n#{e}\r\n";
end

print "\r\n\r\n";