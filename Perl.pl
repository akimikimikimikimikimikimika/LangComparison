#! /usr/local/bin/perl
# -*- coding: utf-8 -*-

# Perl

=pod
    複数行のコメント
    (ドキュメント)
=cut

sub welcome {
    print "こんにちは。私の名前はPerl,即ち真珠です。\n";
    print "あなたのことを教えてください\n";
    $aboutYou = <STDIN>;
    chomp($aboutYou);
    print "\nあなたは $aboutYou ですね。わかりました。\n\n";
}

sub valDemo {
    # スカラ
    my $string = "STRING";
    my $number = 6;
    # 配列,リスト
    my @array = (1, "second", 3, 3.14);
    # ハッシュ
    my %hash = (
        a => 1,
        b => "second",
        c => 3,
        d => 3.14
    );
    # 関数
    sub cube {
        my $val = $_[0];
        return $val ** 2;
    };
    # 無名関数
    my $func = sub {
        my $val = $_[0];
        return $val ** 3;
    };

    print "\n各種データを扱います\n";
    print "\n文字列:".$string;
    print "\n数値:".$number.",".&cube($number).$func->($number);
    print "\n配列:\n";
    print @array;
    print "\n   2番目:".@array[2];
    print "\nハッシュ:\n";
    print %hash;
    print "\n   b= ".%hash{b};
    print "\n無名関数:\n";
    print $func;
    print "\n";
}

&welcome();
&valDemo();