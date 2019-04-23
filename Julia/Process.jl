#! /usr/local/bin/julia

println("""
プロセスID:   $(getpid())
バージョン:   $(VERSION)
バイナリ:     $(Sys.BINDIR)
OS:           $(Sys.KERNEL)
CPU数:        $(Sys.CPU_THREADS)
プロセッサ:   $(Sys.ARCH)
マシン:       $(Sys.MACHINE)

このコードの行番号: $(@__LINE__)

では,3.14秒ほど居眠りします


""")
sleep(3.14)