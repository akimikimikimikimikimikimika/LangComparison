#! /usr/bin/env php
<?php

$i = function($v){return $v;};

require("Classdef.php"); # クラス定義読み込み

$vec1 = new Vector(3,2,1);
$vec2 = new ExtendedVector(6,4,2);
$vec3 = new ExtendedVector(54,63,72);
$vec4 = new Vector(0,0,0);

# 値の設定
$vec3->x = 16;

print <<<"Class"

これからクラスを試します

vec1: {$i(   serialize($vec1)   )}
vec2: {$i(   serialize($vec2)   )}

vec1の説明: {$i(   $vec1->desc()   )}
vec2の説明: {$i(   $vec2->desc()   )}
vec3の説明: {$i(   $vec3->desc()   )}
vec4の説明: {$i(   $vec4->desc()   )}

vec1のx座標: {$i(   $vec1->x   )}
vec2のy座標: {$i(   $vec2->y   )}
vec3のz座標: {$i(   $vec3->z   )}

vec1+vec2+vec3: {$i(   Vector::added($vec1,$vec2,$vec3)->desc()   )}
vec4+vec2: {$i(   $vec4->add($vec2)->desc()   )}
vec2×12: {$i(   $vec2->coefMultiplied(12)->desc()   )}

vec2∙vec3: {$i(   $vec2->dot($vec3)   )}
vec3×vec2: {$i(   $vec3->cross($vec2)->desc()   )}
|vec3|:    {$i(   $vec3->norm()   )}

説明してもらう:
{$i(   Vector::describe()   )}
{$i(   $vec1->describe()   )}

バージョン表示:
{$i(   Vector::VERSION   )}
{$i(   ExtendedVector::VERSION   )}

Class;

# アクセスできません (ExtendedVectorからdescriptionにアクセスできない)
# ExtendedVector::describeFromSub()
# $vec2->describeFromSub()

# アクセスできません (クラス変数にインスタンスからはアクセスできない)
# $vec1->VERSION
# $vec2->VERSION

print "\r\n\r\n";

?>