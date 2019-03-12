#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

print "\r\nこれから正規表現を試します\r\n\r\n";

print "\r\n検索\r\n";

text="IllUsTrAtE";
find=text.scan(/t/i);
print "str.scan: #{text} → #{find}\r\n";

print "\r\n置換\r\n";

text="<a> <b> <c>"
replace=text.sub(/\<([a-z])\>/i,'{\1}');
print "str.sub: #{text} → #{replace}\r\n";
replace=text.gsub(/\<([a-z])\>/i,'{\1}');
print "str.gsub: #{text} → #{replace}\r\n";

print "\r\n分割と結合\r\n";
text="a-b-c";
print "#{text} → ";
arr=text.split(/-/);
text=arr.join(".");
print "#{text}\r\n";

print "\r\nマッチの確認\r\n";
test1="qUiVeR";
test2="ShIvEr";
if test1 =~ /^qu/i then
	print v;
else
	print "#{test1} はquで始まりません\r\n";
end
# パターンを記号で囲んで,%rを前に付加するなら,様々な記号で正規表現は表せる
if test2 =~ %r{^qu}i then
	print "#{test2} はquで始まります\r\n";
else
	print "#{test2} はquで始まりません\r\n";
end
re="ver";
# 変数展開
if test1 !~ /#{re}$/i then
	print "#{test1} はverで終わりません\r\n";
else
	print "#{test1} はverで終わります\r\n";
end
=begin
	im以外のフラグ:
	x: 正規表現中の空白/改行を無視
	u: Unicode
	o: 式展開を1回限りにする
=end

print "\r\n\r\n";