#! /usr/local/bin/pwsh

"`r`nこれから演算子を試します`r`n";

"`r`n算術演算子";
"24  + 5 = $(   24 +5   )";
"24  - 5 = $(   24 -5   )";
"24  * 5 = $(   24 *5   )";
"24  / 5 = $(   24 /5   )";
"24  % 5 = $(   24 %5   )";

"`r`n数値比較演算子";
"24 -gt 5 = $(   24 -gt 5   )";
"24 -ge 5 = $(   24 -ge 5   )";
"24 -lt 5 = $(   24 -lt 5   )";
"24 -le 5 = $(   24 -le 5   )";
"24 -eq 5 = $(   24 -eq 5   )";
"24 -ne 5 = $(   24 -ne 5   )";

"`r`n論理演算子";
"True -and False = $(   $True -and $False   )";
"True  -or False = $(   $True  -or $False   )";
"     -not False = $(         -not $False   )";

"`r`n文字列演算子";
"`"abc`" + `"def`" = $(   'abc' + 'def'   )";

"`r`n文字列比較演算子";
"`"abc`" -gt `"def`" = $(   'abc' -gt 'def'   )";
"`"abc`" -ge `"def`" = $(   'abc' -ge 'def'   )";
"`"abc`" -lt `"def`" = $(   'abc' -lt 'def'   )";
"`"abc`" -le `"def`" = $(   'abc' -le 'def'   )";
"`"abc`" -eq `"def`" = $(   'abc' -eq 'def'   )";
"`"abc`" -ne `"def`" = $(   'abc' -ne 'def'   )";

"`r`n";