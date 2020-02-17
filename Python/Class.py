#! /usr/bin/env python3
# -*- coding: utf-8 -*-

from Classdef import Vector,ExtendedVector # クラス定義読み込み
# import Classdef や import Classdef.Vector などでも読み込むことができるが,この場合,Vectorを利用する都度 Classdef.Vector と記載しなければならない

vec1 = Vector(3,2,1)
vec2 = ExtendedVector(6,4,2)
vec3 = ExtendedVector(54,63,72)
vec4 = Vector(0,0,0)

# 値の設定
vec3.x = 16

print(f"""

これからクラスを試します

vec1: {   vec1   }
vec2: {   vec2   }

vec1の説明: {   vec1.desc()   }
vec2の説明: {   vec2.desc()   }
vec3の説明: {   vec3.desc()   }
vec4の説明: {   vec4.desc()   }

vec1のx座標: {   vec1.x   }
vec2のy座標: {   vec2.y   }
vec3のz座標: {   vec3.z   }

vec1+vec2+vec3: {   Vector.added(vec1,vec2,vec3).desc()   }
vec4+vec2: {   vec4.add(vec2).desc()   }
vec2×12: {   vec2.coefMultiplied(12).desc()   }

vec2∙vec3: {   vec2.dot(vec3)   }
vec3×vec2: {   vec3.cross(vec2).desc()   }
|vec3|:    {   vec3.norm()   }

説明してもらう:
{   Vector.describe()   }
{   vec1.describe()   }

バージョン:
{   Vector.VERSION   }
{   ExtendedVector.VERSION   }
{   vec1.VERSION   }
{   vec2.VERSION   }

""")

# アクセスできません (ExtendedVectorからdescriptionにアクセスできない)
# ExtendedVector.describeFromSub()
# vec2.describeFromSub()

print("\r\n")
