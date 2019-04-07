#! /usr/local/bin/pwsh

@"

これから文字列を試します

"PowerShell STRING demo" →
.ToUpper() = "$(   "PowerShell STRING demo".ToUpper()   )"
.ToLower() = "$(   "PowerShell STRING demo".ToLower()   )"

"align" →
.PadLeft(11,"-")  = "$(   "align".PadLeft(11,"-")    )"
.PadRight(11,"-") = "$(   "align".PadRight(11,"-")   )"

"ええ すごいわ ええ" →
.Trim(" え")      = "$(   "ええ すごいわ ええ".Trim(" え")        )"
.TrimStart(" え") = "$(   "ええ すごいわ ええ".TrimStart(" え")   )"
.TrimEnd(" え")   = "$(   "ええ すごいわ ええ".TrimEnd(" え")     )"

"   redundant   " →
.Trim()      = "$(   "   redundant   ".Trim()        )"
.TrimStart() = "$(   "   redundant   ".TrimStart()   )"
.TrimEnd()   = "$(   "   redundant   ".TrimEnd()     )"

"ええ すごいわ ええ" →
.Insert(7,"ね") = "$(   "ええ すごいわ ええ".Insert(7,"ね")   )"
.Remove(6,1)    = "$(   "ええ すごいわ ええ".Remove(6,1)      )"

"abracadabra" →
.Contains("a")       = $(   "abracadabra".Contains("a")   )
.StartsWith("a")     = $(   "abracadabra".StartsWith("a")   )
.EndsWith("a")       = $(   "abracadabra".EndsWith("a")   )
.IndexOf("acad")     = $(   "abracadabra".IndexOf("acad")   )
.LastIndexOf("acad") = $(   "abracadabra".LastIndexOf("acad")   )

"string" →
.Substring(1,2)     = $(   "string".substring(1,2)   ) (pick 2 letters from 1)

"@;

"`r`n";