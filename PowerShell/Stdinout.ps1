#! /usr/local/bin/pwsh

"こんにちは。私の名前はPowerShell。";
"あなたのことを教えてください";
$aboutYou=Read-Host "あなたは";
"あなたは $aboutYou ですね。わかりました。`r`n";
"これから幾つかの出力の仕方を披露しますね。";
Write-Host "後ろに改行を付けます";
Write-Host -NoNewline "後ろに改行を付けません。";
"このように`r`n手動で改行することもできます";
"それから...";
Write-Output "こんな出力も可能です";
Write-Error "たまにはエラーも出したくなります";
Write-Warning "たまには警告も出したくなります";
Write-Verbose "たまにはくどくど説明したくもなります";
Write-Debug "たまにはデバッグもしたくなります";
Write-Progress "たまには進捗状況も出したくなります";
Write-Information "たまには情報も出したくなります";
Write-Host "たまには情報も出したくなります";
<#
	Write-Output は標準出力するもので,それがパイプされていなければ,出力される。
	それ以外は表示するのみで,パイプすることはできない。
#>
"入力してみて";
Read-Host | Out-Null; # 標準出力に出力されるのを阻止するには,Out-Nullに出力する
"以上です";

"`r`n";