#! /usr/bin/env lua

print("\r\nこれからファイル操作を試します\r\n")

print("> Markdownファイルに書き込み")
local fh = io.open("Headers.md","w")
fh:write("# Header 1")

print("> Markdownファイルに追記")
local fh = io.open("Headers.md","a")
fh:seek("end") -- ファイルの末尾に移動
fh:write("\r\n","## Header 2","\r\n","### Header 3")

print("> Markdownファイルを読み込み")
local fh = io.open("Headers.md","r")
fh:seek("set") -- ファイルの先頭に移動
print(fh:read("*a")) -- "*a" はファイルの内容を全て読みこむオプション