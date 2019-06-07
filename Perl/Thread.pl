#! /usr/local/bin/perl

use threads;

print "\r\nこれからスレッドを試します\r\n\r\n";

# 9個のスレッドそれぞれで6回のループ

sub mtAction {
	my $m = $_[0];
	foreach (1..6) {
		my $n = $_;
		print "|($m,$n)| = @{[sqrt($m**2+$n**2)]}\r\n";
	}
}

my @threadsArray = ();

foreach (1..9) {
	my $m = $_;
	push @threadsArray,threads->create(\&mtAction,$m);
}

print "スレッドの終了を待ちます\r\n";
foreach $t (@threadsArray) {
	$t->join();
}
print "スレッドは終了しました\r\n";

# 各々のスレッド内でのループの順番は守られるが,全54回のプロセスの順番はバラバラ
# このコードを実行する毎に,順番は変化する

print "\r\n\r\n";