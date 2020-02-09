#! /usr/bin/env node

console.log(`

これから文字列を試します

長さ
"ジャバスクリプト".length = ${   "ジャバスクリプト".length   }

大文字/小文字の切替
"JavaScript STRING demo" →
.toUpperCase() = "${   "JavaScript STRING demo".toUpperCase()   }"
.toLowerCase() = "${   "JavaScript STRING demo".toLowerCase()   }"

文字列を揃える
"align" →
.padStart(11,"-") = "${   "align".padStart(11,"-")   }"
.padEnd(11,"-")   = "${   "align".padEnd(11,"-")     }"

前後の空白の除去
"   redundant   " →
.trim()      = "${   "   redundant   ".trim()        }"
.trimStart() = "${   "   redundant   ".trimStart()   }"
.trimEnd()   = "${   "   redundant   ".trimEnd()     }"

検索
"abracadabra" →
.includes("a")       = ${   "abracadabra".includes("a")         }
.startsWith("a")     = ${   "abracadabra".startsWith("a")       }
.endsWith("a")       = ${   "abracadabra".endsWith("a")         }
.indexOf("acad")     = ${   "abracadabra".indexOf("acad")       }
.lastIndexOf("acad") = ${   "abracadabra".lastIndexOf("acad")   }

部分文字列の取り出し
"string" →
.substring(1,3) = "${   "string".substring(1,3)   }" (pick 1≦x<3)
.slice(1,3)     = "${   "string".slice(1,3)       }" (pick 1≦x<3)

文字列の繰り返し
"abc".repeat(3) = "${   "abc".repeat(3)   }"

`);