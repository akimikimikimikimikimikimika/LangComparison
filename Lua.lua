#! /usr/local/bin/lua

-- Lua

--[[
    複数行のコメント
]]

function welcome()
    print("こんにちは。私の名前はLua,即ち月です。")
    io.write("リオデジャネイロから来ました。\n")
    print("あなたのことを教えてください")
    aboutYou = io.read()
    print("あなたは"..aboutYou.."ですね。わかりました。")
end

function valDemo()
    -- 文字列
    str = "STRING"
    -- 数値
    num = 6
    -- 真偽値
    bool = true
    -- テーブル
    tab1 = {1,"second",3,3.14,false}
    tab2 = {a=1,b="second",c=3,d=3.14,e=false}
    -- 関数
    function cube(val)
        return val * val * val
    end
    -- 無名関数
    func = function(val)
        return val * val
    end

    print("\n各種データを扱います")
    print("文字列:"..str)
    print("数値:"..num..","..func(num)..","..cube(num))
    print("真偽値:")
    print(bool)
    print("テーブル:")
    print(tab1)
    print("   2番目:"..tab1[2])
    print(tab2)
    print("   b= "..tab2["b"])
    print("関数:")
    print(cube)
    print("無名関数:")
    print(func)
end

welcome()
valDemo()