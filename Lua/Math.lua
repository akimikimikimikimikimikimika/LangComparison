#! /usr/bin/env lua

print("\r\nこれから数学演算を試します\r\n")

print("\r\n定数")
print("π = "..math.pi)
print("e = "..math.exp(1))

print("\r\n符号")
print("math.abs(+18) = "..math.abs( 18))
print("math.abs(-18) = "..math.abs(-18))

print("\r\n数学関数")
print("math.sqrt(3)      = "..math.sqrt(3))
print("math.log(23.14)   = "..math.log(23.14))
print("math.log(1385,10) = "..math.log(1385,10))
print("math.sin(π/3)    = "..math.sin(math.pi/3))
print("math.cos(π/3)    = "..math.cos(math.pi/3))
print("math.tan(π/3)    = "..math.tan(math.pi/3))
print("math.asin(1)     = "..math.asin(1))
print("math.acos(0.5)   = "..math.acos(0.5))
print("math.atan(-1)    = "..math.atan(-1))
print("math.atan(12,5)  = "..math.atan(12,5))
print("math.sinh(1.862) = "..math.sinh(1.862))
print("math.cosh(1.811) = "..math.cosh(1.811))
print("math.tanh(1.862) = "..math.tanh(0.325))

print("\r\n角度変換")
print("math.deg(1)   = "..math.deg(1)) -- rad -> deg
print("math.rad(540) = "..math.rad(540)) -- deg -> rad

print("\r\n乱数")
print("math.random()      = "..math.random()) -- 0≦x<1
print("math.random(27,54) = "..math.random(27,54)) -- 27≦x<54

print("\r\n端数処理")
print("math.floor(-3.14) = "..math.floor(-3.14))
print(" math.ceil(-3.14) = "..math.ceil(-3.14))

print("\r\n")