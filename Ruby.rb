#! /usr/bin/ruby
# -*- coding: utf-8 -*-

# Ruby

puts "こんにちは。私の名前はRuby,即ち紅玉です。"
puts "あなたのことを教えてください"
aboutYou = gets.chomp
puts "あなたは#{aboutYou}ですね。わかりました。"

def valDemo()
    # スカラ
    string = "文字列"
    number = 6
    # 配列,リスト
    array = [1, "second", 3, 3.14]
    # ハッシュ
    hash = {
        first: "1st",
        second: "2nd",
        third: "3rd"
    }
    # 関数
    def cube(val)
        val ** 3
    end

    puts string
    puts cube(number)
    puts array
    puts hash
end
valDemo()