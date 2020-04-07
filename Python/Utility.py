import re
import os
import sys

sys.dont_write_bytecode = True

# 実行の形態を確認
def runningDirectly(path,cmd):
	if path=="__main__": cmd()

# 改行を伴う出力 + ヒアドキュメントの行頭インデントを削除する
def println(text,eol=1):
	print(clean(text))

# 引数の文字列を改行しながら表示
def prints(*values):
	for i in values:
		t=str(i)
		print(t)

# lines で与えた数だけ改行文字を返す
def nl(lines=1):
	t=""
	for _ in range(0,lines): t+=os.linesep
	return t

# lines で与えた数だけ改行文字を出力する
def pnl(lines=1): prints(nl(lines))

# ヒアドキュメントの行頭インデントを削除する
def clean(text):
	text=re.sub(r"^\t+",r"\n",text)
	text=re.sub(r"\n\t+",r"\n",text)
	return text