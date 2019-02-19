#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

print "\nこれからループ処理を試します\n\n";

print "\nfor (\$n=0; \$n<3; \$n++) {...}\n\n";
for ($n=0;$n<3;$n++) {
    print "n=".$n."のループ\n";
}

print "\nforeach \$n (0..2) {...}\n\n";
foreach $n (0..2) {
    print "n=".$n."のループ\n";
}

print "\nwhile (~) {...}\n\n";
$str="";
while (length($str)<6) {
    $str.="*";
    print "$str\n";
}

print "\nuntil (~) {...}\n\n";
$str="";
until (length($str)==6) {
    $str.="*";
    print "$str\n";
}

print "\ndo {...} while (~)\n\n";
$str="";
do {
    $str.="+";
    print "$str\n";
} while (length($str)<6);

print "\ndo {...} until (~)\n\n";
$str="";
do {
    $str.="+";
    print "$str\n";
} until (length($str)==6);

print "\n... while ~\n\n";
$str="";
$str.="-" while length($str)<6;
print "$str\n";

print "\n... until ~\n\n";
$str="";
$str.="-" until length($str)==6;
print "$str\n";

print "\n... foreach ~\n\n";
$str="";
$str.=$_**0.5 foreach (0,1,4,9,16,25,36);
print "$str\n";

print "\n⚠︎ C言語との違い\n";

print "break    => last\n";
print "continue => next\n";