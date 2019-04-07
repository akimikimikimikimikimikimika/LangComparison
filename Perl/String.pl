#! /usr/local/bin/perl
use utf8;

$chops = "strings";
chop $chops;
$revs = "strings";
reverse $revs;

print <<"String";

これから文字列を試します

"Perl STRING demo" →
uc()      = "@{[   uc("Perl STRING demo")   ]}"
lc()      = "@{[   lc("Perl STRING demo")   ]}"
ucfirst() = "@{[   ucfirst("Perl STRING demo")   ]}"
lcfirst() = "@{[   lcfirst("Perl STRING demo")   ]}"

chop "strings" = "$chops"

reverse "strings" = "$revs"

split(/br/,"abracadabra") = @{[   split(/br/,"abracadabra")   ]}

index("abracadabra","acad")  = @{[   index("abracadabra","acad")   ]}
rindex("abracadabra","acad") = @{[   rindex("abracadabra","acad")   ]}

substr("string",1,2) = "@{[   substr("string",1,2)   ]}"

String

print "\r\n\r\n";