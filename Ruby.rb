#! /usr/bin/ruby
# -*- coding: utf-8 -*-

# Ruby

=begin
    複数行のコメント
    (ドキュメント)
=end

def welcome()
    puts "こんにちは。私の名前はRuby,即ち紅玉です。"
    puts "あなたのことを教えてください"
    aboutYou = gets.chomp
    puts "あなたは#{aboutYou}ですね。わかりました。"
end

def valDemo()
    # スカラ
    string = "STRING"
    number = 6
    boolean = true
    # 配列,リスト
    array = [1, "second", 3, 3.14, false]
    # ハッシュ
    hash = {
        a: 1,
        b: "second",
        c: 3,
        d: 3.14,
        e: false
    }
    # 関数
    def cube(val)
        val ** 3
    end
    # 無名関数
    func = ->(val) {
        val ** 2
    }

    puts "\n各種データを扱います\n"
    puts "文字列:#{string}"
    puts "数値:#{number},#{func.call(number)},#{cube(number)}"
    puts "真偽値:#{boolean}"
    puts "配列:"
    puts array
    puts "   2番目:#{array[2]}"
    puts "ハッシュ:"
    puts hash
    puts "   b= #{hash[:b]}"
    puts "無名関数:"
    puts func
end

welcome()
valDemo()