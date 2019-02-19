#! /usr/local/bin/ruby
# -*- coding: utf-8 -*-

print "\nこれからループ処理を試します\n\n";

print "\nfor n in 0..2 do...end\n\n";
for n in 0..2 do
    print "n=#{n}のループ\n";
end

print "\n(0..2).each do |n|...end\n\n";
(0..2).each do |n|
    print "n=#{n}のループ\n";
end

print "\n3.times do |n|...end\n\n";
3.times do |n|
    print "n=#{n}のループ\n";
end

print "\n4.upto(6) do |n|...end\n\n";
4.upto(6) do |n|
    print "n=#{n}のループ\n";
end

print "\n6.downto(4) do |n|...end\n\n";
6.downto(4) do |n|
    print "n=#{n}のループ\n";
end

print "\n3.5.step(5, 0.7) do |n|...end\n\n";
3.5.step(5,0.7) do |n|
    print "n=#{n}のループ\n";
end

print "\nwhile ~ do...end\n\n";
str="";
while str.length<6 do
    str+="*";
    print "#{str}\n";
end

print "\nuntil ~ do...end\n\n";
str="";
until str.length==6 do
    str+="*";
    print "#{str}\n";
end

print "\nloop do...end\n\n";
str="";
loop do
    str+="+";
    print "#{str}\n";
    if str.length==6
        break
    end
end

print "\n... while ~\n\n";
str="";
str.="-" while str.length<6;
print "#{str}\n";

print "\n... until ~\n\n";
str="";
str.="-" until str.length==6;
print "#{str}\n";

print "\n⚠︎ C言語との違い\n";

print "break    => break\n";
print "continue => next\n";