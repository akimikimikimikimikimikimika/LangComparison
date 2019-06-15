#! /usr/local/bin/ruby

print "\r\nこれからスレッドを試します\r\n\r\n";

print "\r\nマルチスレッド\r\n\r\n";

# 9個のスレッドそれぞれで6回のループ

threads = []; # スレッドオブジェクトを格納する配列

print "スレッドを起動します\r\n";
for m in 1..9 do
	threads.append(Thread.new(m) do |m|
		for n in 1..6 do
			print "|(#{m},#{n})| = #{Math.hypot(m,n)}\r\n";
		end
	end);
end

print "スレッドの終了を待ちます\r\n";
threads.each do |t|
	t.join; # スレッドtの終了を待つ
end
print "スレッドは終了しました\r\n";

# 各々のスレッド内でのループの順番は守られるが,全54回のプロセスの順番はバラバラ
# このコードを実行する毎に,順番は変化する

print "\r\nシングルスレッド\r\n\r\n";

print "スレッドを起動させます\r\n";
$t = Thread.new do
	sleep 0.5;
	print "このスレッドを停止させます\r\n";
	Thread.stop;
	sleep 0.5;
	print "このスレッドを終了させます\r\n";
	$t.kill; # exit,terminate も同様
end

# スレッドの状態を確認する関数
def info
	if $t.alive?
		print "   状態: 生きています (#{$t.status})\r\n";
	else
		print "   状態: 死んでいます\r\n";
	end
end

info;
sleep 0.7;
info;
print "スレッドを再開させます\r\n";
$t.run;
info;
sleep 0.7;
info;
sleep 0.7;

print "\r\n\r\n";