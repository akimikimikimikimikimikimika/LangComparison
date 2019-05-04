#! /usr/local/bin/lua

--[[
	Luaのオブジェクトはクラス型ではなく,プロトタイプ型である。
		そもそも,オブジェクトとは,テーブルそのものである。
		object.prop と object["prop"] は同じことであり,
		object.method() と object::method() も同じことである。
]]

-- クラス定義1 (Vector)
-- とは言うものの,単なるオブジェクト,すなわちテーブルである
Vector = {
	-- クラス定数
	description = "JavaScript simple vector class",
	-- イニシャライザもどき
	new = function(X,Y,Z)
		local this={
			x = X,
			y = Y,
			z = Z,
			-- インスタンス変数
				-- 各インスタンス毎に異なる値
				-- インスタンスメソッド内のみから this.x でアクセス可能
				-- 外部からは v.x でアクセス可能

			desc = function(self)
				return "("..self.x..","..self.y..","..self.z..")"
			end,

			-- 足し算を定義
			-- インスタンスメソッド版 (自分自身に足し合わせていく)
			-- インスタンスメソッドでは,第1引数としてオブジェクトが返される
			-- ただし,この機能を利用するには,インスタンスメソッドを v:add() の形で呼び出す必要がある
			add = function(self,...)
				args = {...}
				for _,v in pairs(args) do
					self.x = self.x + v.x
					self.y = self.y + v.y
					self.z = self.z + v.z
				end
				return self
			end,

			-- スカラ倍を定義
			-- 自分自身を実数倍
			coefMultiply = function(self,k)
				self.x = self.x * k
				self.y = self.y * k
				self.z = self.z * k
				return self
			end,
			-- 自分自身の実数倍のVectorを生成
			coefMultiplied = function(self,k)
				return Vector.new(self.x*k,self.y*k,self.z*k)
			end,
		}
		return this
	end,
	-- クラスメソッド
	-- 引数のVectorを足し合わせた結果を返す
	added = function(...)
		args = {...}
		local a = Vector.new(0,0,0)
		for _,v in pairs(args) do
			a.x = a.x + v.x
			a.y = a.y + v.y
			a.z = a.z + v.z
		end
		return a
	end
};

-- クラス定義2 (ExtendedVector inherits from Vector)
ExtendedVector = {
	new = function(X,Y,Z)
		local this={
			x = X,
			y = Y,
			z = Z,
			-- 以下で,プロトタイプを拡張する

			-- 内積を定義
			dot = function(self,v)
				return self.x*v.x + self.y*v.y + self.z*v.z
			end,

			-- 外積を定義
			cross = function(self,v)
				return Vector.new(
					self.y*v.z-self.z*v.y,
					self.z*v.x-self.x*v.z,
					self.x*v.y-self.y*v.x
				)
			end,

			-- ノルムを定義
			norm = function(self)
				return math.sqrt(self:dot(self))
			end

		}
		setmetatable(this, {__index=Vector.new()}) -- 継承として,継承元クラスのオブジェクトをメタテーブルに指定する
		return this
	end,
}

vec1 = Vector.new(3,2,1)
vec2 = ExtendedVector.new(6,4,2)
vec3 = ExtendedVector.new(54,63,72)
vec4 = Vector.new(0,0,0)

-- 値の設定

vec3.x = 16

print("\r\nこれからクラスを試します\r\n")

io.write("vec1: ")
print(vec1)
io.write("vec2: ")
print(vec2)
io.write("\r\n")
print("vec1のx座標: "..vec1.x)
print("vec2のy座標: "..vec2.y)
print("vec3のz座標: "..vec3.z.."\r\n")
print("vec1の説明: "..vec1:desc())
print("vec2の説明: "..vec2:desc())
print("vec3の説明: "..vec3:desc())
print("vec4の説明: "..vec4:desc().."\r\n")
print("vec1+vec2+vec3: "..Vector.added(vec1,vec2,vec3):desc())
print("vec4+vec2: "..vec4:add(vec2):desc())
print("vec2×12:   "..vec2:coefMultiplied(12):desc().."\r\n")
print("vec2∙vec3: "..vec2:inner(vec3))
print("vec3×vec2: "..vec3:outer(vec2):desc())
print("|vec3|:    "..vec3:norm().."\r\n")
