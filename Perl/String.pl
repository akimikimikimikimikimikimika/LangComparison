#! /usr/local/bin/perl
use utf8;

$chops = "strings";
chop $chops;

print <<"String";

これから文字列を試します

長さ
length("パール") = @{[   length("パール")   ]}

大文字/小文字の切替
"Perl STRING demo" →
uc()      = "@{[   uc("Perl STRING demo")        ]}"
lc()      = "@{[   lc("Perl STRING demo")        ]}"
ucfirst() = "@{[   ucfirst("Perl STRING demo")   ]}"
lcfirst() = "@{[   lcfirst("Perl STRING demo")   ]}"

区切り文字列で区切る
split(/br/,"abracadabra") = @{[   split(/br/,"abracadabra")   ]}

末尾の文字を削除
chop "strings" = "$chops"

文字列の反転
reverse(split(//,"strings")) = "@{[   reverse(split(//,"strings"))   ]}"

検索
index("abracadabra","acad")  = @{[   index("abracadabra","acad")   ]}
rindex("abracadabra","acad") = @{[   rindex("abracadabra","acad")   ]}

部分文字列の取り出し
substr("string",1,2) = "@{[   substr("string",1,2)   ]}"

String

print "\r\n\r\n";