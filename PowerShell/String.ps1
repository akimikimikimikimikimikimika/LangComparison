#! /usr/local/bin/pwsh

@"

これから文字列を試します

長さ
"パワーシェル".Length = $("パワーシェル".Length)

大文字/小文字の切替
"PowerShell STRING demo" →
.ToUpper() = "$(   "PowerShell STRING demo".ToUpper()   )"
.ToLower() = "$(   "PowerShell STRING demo".ToLower()   )"

文字列を揃える
"align" →
.PadLeft(11,"-")  = "$(   "align".PadLeft(11,"-")    )"
.PadRight(11,"-") = "$(   "align".PadRight(11,"-")   )"

前後の空白の除去
"   redundant   " →
.Trim()      = "$(   "   redundant   ".Trim()        )"
.TrimStart() = "$(   "   redundant   ".TrimStart()   )"
.TrimEnd()   = "$(   "   redundant   ".TrimEnd()     )"

指定した文字を含む前後の文字列の除去
"ええ すごいわ ええ" →
.Trim(" え")      = "$(   "ええ すごいわ ええ".Trim(" え")        )"
.TrimStart(" え") = "$(   "ええ すごいわ ええ".TrimStart(" え")   )"
.TrimEnd(" え")   = "$(   "ええ すごいわ ええ".TrimEnd(" え")     )"

文字列の挿入/削除
"ええ すごいわ ええ" →
.Insert(7,"ね") = "$(   "ええ すごいわ ええ".Insert(7,"ね")   )"
.Remove(6,1)    = "$(   "ええ すごいわ ええ".Remove(6,1)      )"

検索
"abracadabra" →
.Contains("a")       = $(   "abracadabra".Contains("a")   )
.StartsWith("a")     = $(   "abracadabra".StartsWith("a")   )
.EndsWith("a")       = $(   "abracadabra".EndsWith("a")   )
.IndexOf("acad")     = $(   "abracadabra".IndexOf("acad")   )
.LastIndexOf("acad") = $(   "abracadabra".LastIndexOf("acad")   )

部分文字列の取り出し
"string" →
.Substring(1,2)     = $(   "string".substring(1,2)   ) (pick 2 letters from 1)

"@;

"`r`n";