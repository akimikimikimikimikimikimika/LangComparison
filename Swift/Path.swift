#! /usr/bin/swift

import Foundation

let fm = FileManager.default
let args = CommandLine.arguments
let u = URL(fileURLWithPath: CommandLine.arguments[0])

print("ホームディレクトリ:       \(fm.homeDirectoryForCurrentUser.path)")
print("カレントディレクトリ:     \(fm.currentDirectoryPath)\r\n")

print("このファイルのフルパス:   \(u.path)")
print("このファイルの実行パス:   \(CommandLine.arguments[0])")
print("このファイルの名前:       \(u.lastPathComponent)")
print("このファイルのある場所:   \(u.deletingLastPathComponent().path)")

print("\r\n")