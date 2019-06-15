#! /usr/bin/env ruby

print "\r\nこれからループ処理を試します\r\n\r\n";

print "\r\nfor n in 0..2 do…end\r\n\r\n";
for n in 0..2 do
	print "n=#{n} のループ\r\n";
end

print "\r\n(0..2).each do |n|…end\r\n\r\n";
(0..2).each do |n|
	print "n=#{n} のループ\r\n";
end

print "\r\narray.each do |c|…end\r\n\r\n";
cs=["壱","弐","参"];
cs.each do |c|
	print "c=\"#{c}\" のループ\r\n";
end

print "\r\n3.times do |n|…end\r\n\r\n";
3.times do |n|
	print "n=#{n} のループ\r\n";
end

print "\r\n4.upto(6) do |n|…end\r\n\r\n";
4.upto(6) do |n|
	print "n=#{n} のループ\r\n";
end

print "\r\n6.downto(4) do |n|…end\r\n\r\n";
6.downto(4) do |n|
	print "n=#{n} のループ\r\n";
end

print "\r\n3.5.step(5, 0.7) do |n|…end\r\n\r\n";
3.5.step(5,0.7) do |n|
	print "n=#{n} のループ\r\n";
end

print "\r\nwhile ~ do…end\r\n\r\n";
str="";
while str.length<6 do
	str+="*";
	print "#{str}\r\n";
end

print "\r\nuntil ~ do…end\r\n\r\n";
str="";
until str.length==6 do
	str+="*";
	print "#{str}\r\n";
end

print "\r\nloop do…end\r\n\r\n";
str="";
loop do
	str+="+";
	print "#{str}\r\n";
	if str.length==6
		break
	end
end

print "\r\n… while ~\r\n\r\n";
str="";
str+="-" while str.length<6;
print "#{str}\r\n";

print "\r\n… until ~\r\n\r\n";
str="";
str+="-" until str.length==6;
print "#{str}\r\n";

print "\r\n⚠︎ C言語との違い\r\n";

print "break	=> break\r\n";
print "continue => next\r\n";

print "\r\n\r\n";