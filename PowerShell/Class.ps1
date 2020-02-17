#! /usr/bin/env pwsh

Import-Module $PSScriptRoot/Classdef.ps1 -Variable Vector,ExtendedVector # クラス定義読み込み
# Import-Module ./Classdef.ps1 などとすると,カレントディレクトリからの相対パスで指定されてしまう。それを防ぐためには $PSScriptRoot を使うことが必要になる。

$vec1 = [Vector]::new(3,2,1);
$vec2 = [ExtendedVector]::new(6,4,2);
$vec3 = [ExtendedVector]::new(54,63,72);
$vec4 = [Vector]::new(0,0,0);

$vec3.x = 16;

@"

これからクラスを試します

vec1: $(   $vec1   )
vec2: $(   $vec2   )

vec1の説明: $(   $vec1.desc()   )
vec2の説明: $(   $vec2.desc()   )
vec3の説明: $(   $vec3.desc()   )
vec4の説明: $(   $vec4.desc()   )

vec1のx座標: $(   $vec1.x   )
vec2のy座標: $(   $vec2.y   )
vec3のz座標: $(   $vec3.z   )

vec1+vec2+vec3: $(   [Vector]::added([Vector]::added($vec1,$vec2),$vec3).desc()   )
vec4+vec2: $(   $vec4.add($vec2).desc()   )
vec2×12: $(   $vec2.coefMultiplied(12).desc()   )

vec2∙vec3: $(   $vec2.dot($vec3)   )
vec3×vec2: $(   $vec3.cross($vec2).desc()   )
|vec3|:    $(   $vec3.norm()   )

説明してもらう:
$(   [Vector]::describe()   )
$(   [ExtendedVector]::describeFromSub()   )

バージョン表示:
$(   [Vector]::VERSION   )
$(   [Vector]::VERSION   )

"@;

# アクセスできません (クラスメソッドにインスタンスからはアクセスできない)
# $vec1.describe()
# $vec2.describeFromSub()

# アクセスできません (クラス変数にインスタンスからはアクセスできない)
# $vec1.VERSION
# $vec2.VERSION

"`r`n";