#! /usr/local/bin/julia
#=
	シェルで
		export JULIA_NUM_THREADS=***
	と入力すれば,最大スレッド数を変化させられる (***に数値を代入する)
	但し,コンピュータの実力以上のスレッドを指定すると,機能しなくなるので注意する
=#

using Base.Threads

println("\r\nこれからスレッドを試します\r\n")
println("最大スレッド数: $(nthreads())")
# 最大スレッド数が1であると並列処理が体感できない

# ループの先頭に @threads と指定するだけで,そのループはスレッドで実行される
@threads for m = 1:9
	for n = 1:6
		println("|($(m),$(n))| = $(hypot(m,n))")
	end
end
# ループの末尾で自動的にスレッドの終了を待機する

println("\r\n")