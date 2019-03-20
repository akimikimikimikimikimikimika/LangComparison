#! /usr/local/bin/pwsh

# PowerShell

<#
	複数行のコメント
#>

Set-Location -path "${PSScriptRoot}/PowerShell"

<#
	外部ファイルを実行する時は,そのパスを直接記載すれば良いだけ。
	ただ,外部ファイル内にある変数や関数を利用する場合は,グローバル化しなければならない。
	$global:$variable
	global:func(){}
	のようにすれば,普通にアクセスできる
#>

@'

こんにちは。私の名前はPowerShell。
'@;
while ($True) {
	@'

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す
6. 正規表現を試す
7. ファイル操作を試す
8. ファイルパスを試す
9. 数学的演算を試す
a. 日付と時刻を試す
b. プロセス系を試す
c. コマンドライン引数を試す

0. 終了


'@;
	$action = Read-Host;
	"`r`n`r`n`r`n";
	if ($action -eq "0") {
		break;
	}
	elseif ($action -eq "1") {
		./Stdinout.ps1;
	}
	elseif ($action -eq "2") {
		./Values.ps1;
	}
	elseif ($action -eq "3") {
		./Operators.ps1;
	}
	elseif ($action -eq "4") {
		./Condition.ps1;
	}
	elseif ($action -eq "5") {
		./Loop.ps1;
	}
	elseif ($action -eq "6") {
		./RegExp.ps1;
	}
	elseif ($action -eq "7") {
		./File.ps1;
	}
	elseif ($action -eq "8") {
		./Path.ps1;
	}
	elseif ($action -eq "9") {
		./Math.ps1;
	}
	elseif ($action -eq "a") {
		./DateTime.ps1;
	}
	elseif ($action -eq "b") {
		"./Process.ps1";
	}
	elseif ($action -eq "c") {
		./Arguments.ps1 "このプログラムを直接実行してみよう。" "ここにあるよ: PowerShell/Arguments.ps1" "" "コマンドラインに以下のように入力して実行します" "" "PowerShell/Arguments.ps1 引数1 引数2…" "" "すると,引数1,引数2…が順に出力されます";
	}
	else {
		@'
指定したアクションは見つかりませんでした

'@;
	}
}

exit 0;