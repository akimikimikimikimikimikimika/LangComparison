#! /usr/bin/env lua

print("\r\nこれから例外処理を試します\r\n")
-- とは言いつつも,pcall関数の使い方の説明である

which,e = pcall(
	function(x,y,z)

		-- 例外の発生 (例外が発生した時点で,それ以降の行は実行しない)
		error("あなたは過ちを犯した!!")

	end
,0,0,0)

-- which はエラーなく実行できたかを真偽値で表す
if which then
	print("エラーは発生しませんでした")
else
	print("エラーが発生しました")
	print("エラー内容:\r\n"..e)
end

--[[
	pcall(関数,引数1,引数2,引数3...)
	pcallは渡された関数を実行し,その中でエラーがあるかどうかをチェックする
	• エラーがない場合
		戻り値: true,戻り値1,戻り値2,戻り値3...
	• エラーがある場合
		戻り値: false,エラー内容
]]

print("\r\n")