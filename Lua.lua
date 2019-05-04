#! /usr/local/bin/lua

-- Lua

--[[
	複数行のコメント
]]

(function()

	local dirname=function()
		return debug.getinfo(2,"S").source:sub(2):match("(.*/)")
	end

	io.write([[

こんにちは。私の名前はLua。
]])
	while true do
		io.write([[

何がしたい?

1. 標準入出力を試す
2. 色々な値を試す
3. 演算子を試す
4. 条件分岐を試す
5. 繰り返しを試す
6. 数学的演算を試す
7. 文字列を試す
8. 文字列フォーマットを試す
9. 正規表現を試す
a. 日付と時刻を試す
b. クラスを試す
c. 例外処理を試す
d. ファイル操作を試す
h. コマンドライン引数を試す

0. 終了


]])
		action = io.read()
		io.write("\r\n\r\n\r\n")
		if action == "0" then
			break
		elseif action == "1" then
			dofile(dirname().."Lua/Stdinout.lua")
		elseif action == "2" then
			dofile(dirname().."Lua/Values.lua")
		elseif action == "3" then
			dofile(dirname().."Lua/Operators.lua")
		elseif action == "4" then
			dofile(dirname().."Lua/Condition.lua")
		elseif action == "5" then
			dofile(dirname().."Lua/Loop.lua")
		elseif action == "6" then
			dofile(dirname().."Lua/Math.lua")
		elseif action == "7" then
			dofile(dirname().."Lua/String.lua")
		elseif action == "8" then
			dofile(dirname().."Lua/Sprintf.lua")
		elseif action == "9" then
			dofile(dirname().."Lua/RegExp.lua")
		elseif action == "a" then
			dofile(dirname().."Lua/DateTime.lua")
		elseif action == "b" then
			dofile(dirname().."Lua/Class.lua")
		elseif action == "c" then
			dofile(dirname().."Lua/Error.lua")
		elseif action == "d" then
			dofile(dirname().."Lua/File.lua")
		elseif action == "h" then
			rtn=os.execute(dirname().."Lua/Arguments.lua このプログラムを直接実行してみよう。 \"ここにあるよ: Lua/Arguments.lua\" \"\" コマンドラインに以下のように入力して実行します \"\"  \"Lua/Arguments.lua 引数1 引数2 ...\" \"\"  すると,引数1,引数2...が順に出力されます")
		else
			io.write([[
指定したアクションは見つかりませんでした

]])
		end
	end
	os.exit(0)

end)()