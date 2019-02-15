#! /usr/bin/perl
# -*- coding: utf-8 -*-

# Perl

print "こんにちは。私の名前はPerl,即ち真珠です。\n";
print "あなたのことを教えてください\n";
$aboutYou = <STDIN>;
chomp($aboutYou);
print "\nあなたは".$aboutYou."ですね。わかりました。\n\n";

sub valDemo {
    # スカラ
    $string = "文字列";
    $number = 6;
    # 配列,リスト
    @array = (1, "second", 3, 3.14);
    # ハッシュ
    %hash = (
        first => "1st",
        second => "2nd",
        third => "3rd",
    );
    # 関数
    sub cube {
        my $val = @_[0];
        return $val ** 3;
    }

    print $string . "\n";
    print cube($number) . "\n";
    print @array;
    print "\n";
    print %hash;
    print "\n";
}
valDemo()