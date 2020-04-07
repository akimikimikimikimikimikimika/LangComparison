# 実行の形態を確認
def runningDirectly(file)
	$0==file
end

# 改行を伴う出力 + ヒアドキュメントの行頭インデントを削除する
def println(text,eol=1)
	print clean(text)
	pnl(eol)
end

# 引数の文字列を改行しながら表示
def prints(*text)
	text.each do |t|
		puts t
	end
end

# lines で与えた数だけ改行文字を返す
def nl(lines=1)
	t=""
	lines.times do
		t+="\n"
	end
	t
end

# lines で与えた数だけ改行文字を出力する
def pnl(lines=1)
	print nl(lines)
end

# ヒアドキュメントの行頭インデントを削除する
def clean(text)
	text.gsub(/\n\t+/,"\n").gsub(/^\t+/,"")
end