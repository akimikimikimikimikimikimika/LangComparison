#! /usr/local/bin/pwsh

@"
ホームディレクトリ:       $Home
カレントディレクトリ:     $Pwd

このファイルのフルパス:   $($MyInvocation.MyCommand.Path)
このファイルの実行パス:   $((Resolve-Path $MyInvocation.InvocationName -Relative) -replace "^\.\/")
このファイルの名前:       $($MyInvocation.MyCommand.Name)
このファイルのある場所:   $($PSScriptRoot)
"@;

"`r`n";