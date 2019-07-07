#! /usr/bin/env ruby

print "\r\nこれから正規表現を試します\r\n\r\n";

text="The Quick Brown Fox Jumps Over The Lazy Dog";
print "#{text} →\r\n";

print "\r\n検索\r\n";
found=text.scan(/the ([a-z]+) ([a-z]+) fox/i);
print "str.scan:\r\n#{found}\r\n";
=begin
	str.scan は複数のマッチした部分を配列形式で返す。
	e.g. "<b></b><i></i><u></u><s></s>".scan(/<[a-z]>/) → ["<b>","<i>","<u>","<s>"]
	正規表現内に括弧が含まれている場合と含まれていない場合で挙動が異なる
	• 括弧なし → 正規表現にマッチしたテキスト全体の配列
	• 括弧あり → 正規表現にマッチした部分の各々で,括弧の部分のみを抜き出して並べてできた配列による配列 (二次元配列)
		※ 括弧がある場合,マッチしたテキスト全体は得られない
		e.g. '<b title="bold"><i title="italic"><u title="underline"><s title="strike">'.scan(/<([a-z]) title="([a-z]+)">/)
			→ [["b","bold"],["i","italic"],["u","underline"],["s","strike"]]
=end

print "\r\nマッチの確認\r\n";
if test1 =~ /fox jumps/i then
	print "狐が飛んでいます\r\n";
else
	print "狐は飛んでいません\r\n";
end
# パターンを記号で囲んで,%rを前に付加するなら,様々な記号で正規表現は表せる。スラッシュをエスケープする必要がなくなるので,便利か。
if test2 =~ %r{dog jumps}i then
	print "犬が飛んでいます\r\n";
else
	print "犬は飛んでいません\r\n";
end
color="brown";
# 変数展開
if test1 !~ /#{color}/i then
	print "茶色の生物なんてここにいない\r\n";
else
	print "茶色い生物がいる\r\n";
end

print "\r\n置換\r\n";
replaced=text.sub(/([a-z]+)o([a-z]+)/i,'« \1ö\2 »');
print "str.sub:\r\n#{replaced}\r\n";
replaced=text.gsub(/([a-z]+)o([a-z]+)/i,'« \1ö\2 »');
print "str.gsub:\r\n#{replaced}\r\n";

print "\r\n分割と結合\r\n";
array=text.split(/(the|s)? /i);
arranged=array.join("_");
print "#{array}\r\n";
print "#{arranged}\r\n";

=begin
	im以外のフラグ:
	x: 正規表現中の空白/改行を無視
	u: Unicode
	o: 式展開を1回限りにする
=end

print "\r\n\r\n";