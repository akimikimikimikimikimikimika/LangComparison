#! /usr/local/bin/pwsh

$ErrorActionPreference = "Stop";

<#
	PowerShellでは,エラーは次の2種類に分類される
	• Terminating Error (処理を中断させるエラー)
	• Non-Terminating Error (処理が継続されるエラー)
	例外処理は,処理が中断されるようなエラーを捕捉するためのものなので, Terminating Error にしか機能しない
	Non-Terminating Error でも処理を中断させるには,ファイルの先頭に以下のコードを挿入して設定を変更しなければならない。
		$ErrorActionPreference = "Stop";
		• Stop = エラーで処理を中断させる
		• Continue = エラーが発生しても処理は継続させる
		• SilentlyContinue = 処理を継続させ,エラーも表示しない
		• Inquire = エラーが発生する度に処理を継続させるかユーザーに尋ねる
#>

"`r`nこれから例外処理を試します`r`n";

# try節内で起こりうる例外は捕捉される
try {
	# 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
	throw "あなたは過ちを犯した!!";
}
# 例外をキャッチすればcatch節が実行される
catch {
	$e = $_.Exception;
	"エラーが発生しました";
	"エラー内容:`r`n$e";
}
# 最後にfinally節が実行される
finally {
	"以上でエラーチェックを終了します";
}
# tryに対応して,catchかfinallyのどちらか一方は最低限必要である

"`r`n";