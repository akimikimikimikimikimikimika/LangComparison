
console.log(`

これから文字列を試します

"JavaScript STRING demo" →
.toUpperCase() = "${   "JavaScript STRING demo".toUpperCase()   }"
.toLowerCase() = "${   "JavaScript STRING demo".toLowerCase()   }"

"align" →
.padStart(11,"-") = "${   "align".padStart(11,"-")   }"
.padEnd(11,"-")   = "${   "align".padEnd(11,"-")     }"

"   redundant   " →
.trim()      = "${   "   redundant   ".trim()        }"
.trimStart() = "${   "   redundant   ".trimStart()   }"
.trimEnd()   = "${   "   redundant   ".trimEnd()     }"

"abracadabra" →
.includes("a")       = ${   "abracadabra".includes("a")         }
.startsWith("a")     = ${   "abracadabra".startsWith("a")       }
.endsWith("a")       = ${   "abracadabra".endsWith("a")         }
.indexOf("acad")     = ${   "abracadabra".indexOf("acad")       }
.lastIndexOf("acad") = ${   "abracadabra".lastIndexOf("acad")   }

"string" →
.substring(1,3) = "${   "string".substring(1,3)   }" (pick 1≦x≦3)
.slice(1,3)     = "${   "string".slice(1,3)       }" (pick 1≦x≦3)

"abc".repeat(3) = "${   "abc".repeat(3)   }"

`);