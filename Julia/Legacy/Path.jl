#! /usr/bin/env julia

println("""
ホームディレクトリ:       $(homedir())
カレントディレクトリ:     $(pwd())

このファイルのフルパス:   $(@__FILE__)
このファイルの実行パス:   $(PROGRAM_FILE)
このファイルの名前:       $(basename(@__FILE__))
このファイルのある場所:   $(@__DIR__)
""")
