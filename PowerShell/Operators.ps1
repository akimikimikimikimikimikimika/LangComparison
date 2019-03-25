#! /usr/local/bin/pwsh

function b2d($bin) {
	Write-Output ([Convert]::ToInt32($bin,2));
}
function d2b([int]$len,[int]$dec) {
	$bin=[Convert]::ToString($dec,2);
	$pad=[Math]::Max($len,$bin.Length)-$bin.Length;
	for ($n=0;$n -lt $pad;$n++) {
		$bin="0"+[Convert]::ToString($bin);
	}
	Write-Output $bin;
}

@"

これから演算子を試します

算術演算子
24  + 5 = $(   24 +5   )
24  - 5 = $(   24 -5   )
24  * 5 = $(   24 *5   )
24  / 5 = $(   24 /5   )
24  % 5 = $(   24 %5   )

数値比較演算子
24 -gt 5 = $(   24 -gt 5   )
24 -ge 5 = $(   24 -ge 5   )
24 -lt 5 = $(   24 -lt 5   )
24 -le 5 = $(   24 -le 5   )
24 -eq 5 = $(   24 -eq 5   )
24 -ne 5 = $(   24 -ne 5   )

論理演算子
True -and False = $(   $True -and $False   )
True  -or False = $(   $True  -or $False   )
     -not False = $(         -not $False   )
        ! False = $(            ! $False   )

型確認
@(2.4,4.8,7.2) -is    [array] = $(   @(2.4,4.8,7.2) -is    [array]   )
@(2.4,4.8,7.2) -isnot [array] = $(   @(2.4,4.8,7.2) -isnot [array]   )

ビット演算子 (2進数での各桁毎の論理演算)
1010 -band 1001 = $(d2b 4 (   (b2d "1010") -band (b2d "1001")   )) (AND)
1010 -bor  1001 = $(d2b 4 (   (b2d "1010") -bor  (b2d "1001")   )) (OR)
1010 -bxor 1001 = $(d2b 4 (   (b2d "1010") -bxor (b2d "1001")   )) (XOR)
     -bnot 1001 = $(d2b 4 (                -bnot (b2d "1001")   +16)) (NOT)

111111 -shl 2 = $(d2b 0 (   (b2d "111111") -shl 2   )) (2桁左シフト)
111111 -shr 2 = $(d2b 0 (   (b2d "111111") -shr 2   )) (2桁右シフト)

文字列演算子
"abc" + "def"  = "$(   "abc" + "def"   )"

文字列比較演算子
"abc" -gt "def" = $(   "abc" -gt "def"   )
"abc" -ge "def" = $(   "abc" -ge "def"   )
"abc" -lt "def" = $(   "abc" -lt "def"   )
"abc" -le "def" = $(   "abc" -le "def"   )
"abc" -eq "def" = $(   "abc" -eq "def"   )
"abc" -ne "def" = $(   "abc" -ne "def"   )

"@;

<#
	ビット演算において,演算の内容を分かりやすくするため,意図的に本来の値から改変させたところがある
	• AND,OR,XOR,NOT においては,0埋めにより演算後も4桁が維持されるようにした (本来はない桁があったりする)
	• NOT を通常通りに計算すると,これまでなかった桁も0と見做してビット反転するため,膨大な数になる。それを防止するため,5桁目以降を切り捨てる処理をした (右端の+16)
#>
<#
	その他に...
	複合代入演算子 : += -= *= /= %=
		a += b は a= a + b と同義。その他も同様
#>

"`r`n";