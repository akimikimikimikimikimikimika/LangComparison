#! /usr/local/bin/lua

-- Lua

--[[
    複数行のコメント
]]

(function()

    local dirname=function()
        return debug.getinfo(2,"S").source:sub(2):match("(.*/)")
    end

    (function()
        io.write("こんにちは。私の名前はLua。")
        while true do
            io.write("\n\n何がしたい?\n\n")
            io.write("1. 標準入出力を試す\n")
            io.write("2. 色々な値を試す\n")
            io.write("3. 演算子を試す\n")
            io.write("4. 条件分岐を試す\n")
            io.write("5. 繰り返しを試す\n")
            io.write("\n")
            io.write("0. 終了\n")
            io.write("\n")
            action = io.read()
            io.write("\n\n\n")
            if action == "1" then
                dofile(dirname().."Lua/Stdinout.lua")
            elseif action == "2" then
                dofile(dirname().."Lua/Values.lua")
            elseif action == "3" then
                dofile(dirname().."Lua/Operators.lua")
            elseif action == "4" then
                dofile(dirname().."Lua/Condition.lua")
            elseif action == "5" then
                dofile(dirname().."Lua/Loop.lua")
            elseif action == "0" then
                break
            else
                io.write("指定したアクションは見つかりませんでした\n\n")
            end
        end
        os.exit(0)
    end)()

end)()