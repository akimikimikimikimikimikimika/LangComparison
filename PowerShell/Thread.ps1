#! /usr/local/bin/pwsh

"`r`nこれからスレッドを試します`r`n";
# とは言いつつも,スレッドという概念は存在せず,ジョブというバックグラウンド処理を利用する

# 9個のスレッドそれぞれで6回のループ
$jobs = @()
foreach ($m in 1..9) {
	$jobs += Start-Job -ScriptBlock {
		param(
			[int]$m
		)
		foreach ($n in 1..6) {
			Write-Host "|($m,$n)| = $([Math]::Pow(([Math]::Pow($m,2)+[Math]::Pow($n,2)),0.5))";
		}
	} -ArgumentList $m
}
"スレッドの終了を待ちます";
foreach ($j in $jobs) {
	Wait-Job -Job $j | out-null;
}
"スレッドは終了しました";
foreach ($j in $jobs) {
	Receive-Job -Job $j;
}

"`r`n";