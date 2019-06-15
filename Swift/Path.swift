#! /usr/bin/env swift

import Foundation

let fm = FileManager.default
let args = CommandLine.arguments
let u = URL(fileURLWithPath: args[0])

print("""
ホームディレクトリ:       \(fm.homeDirectoryForCurrentUser.path)
カレントディレクトリ:     \(fm.currentDirectoryPath)

このファイルのフルパス:   \(u.path)
このファイルの実行パス:   \(args[0])
このファイルの名前:       \(u.lastPathComponent)
このファイルのある場所:   \(u.deletingLastPathComponent().path)
""")

print("\r\n")