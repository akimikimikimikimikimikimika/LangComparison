#! /usr/local/bin/julia

# Julia

#=
	複数行のコメント
=#

thisdir=@__DIR__
cd(thisdir * "/Julia")

println("""

こんにちは。私の名前はJulia。
""")
while true
	println("""

	何がしたい?

	1. 標準入出力を試す
	2. 色々な値を試す
	3. 演算子を試す
	4. 条件分岐を試す
	5. 繰り返しを試す
	7. ファイル操作を試す
	8. ファイルパスを試す
	9. 数学的演算を試す
	f. コマンドライン引数を試す

	0. 終了

	""")
	action = readline(stdin)
	println("\r\n\r\n")
	if action=="0"
		break
	elseif action=="1"
		run(`./Stdinout.jl`)
	elseif action=="2"
		run(`./Values.jl`)
	elseif action=="3"
		run(`./Operators.jl`)
	elseif action=="4"
		run(`./Condition.jl`)
	elseif action=="5"
		run(`./Loop.jl`)
	elseif action=="7"
		run(`./File.jl`)
	elseif action=="8"
		run(`./Path.jl`)
	elseif action=="9"
		run(`./Math.jl`)
	elseif action=="f"
		run(`./Arguments.jl "このプログラムを直接実行してみよう。" "ここにあるよ: Julia/Arguments.jl" "" "コマンドラインに以下のように入力して実行します" "" "Julia/Arguments.jl 引数1 引数2…" "" "すると,引数1,引数2…が順に出力されます"`)
	else
		println("""
		指定したアクションは見つかりませんでした

		""")
	end
end

exit(0)