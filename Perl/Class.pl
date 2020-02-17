#! /usr/bin/env perl

use File::Basename; # dirname用
use lib dirname($0);
# Perlで外部モジュールを利用するには,そのモジュールが @INC のリストに含まれていなければならない。 use lib を使うことで一時的に指定のパスを@INCに追加し,Perlはその中でもモジュールを検索してくれる。

use Classdef qw/Vector ExtendedVector/; # クラス定義読み込み
# 名前空間も展開
# Classdef.pm 内のパッケージ名 (package Classdef;) をインクルードする。

my $vec1 = new Vector(3,2,1);
my $vec2 = new ExtendedVector(6,4,2);
my $vec3 = new ExtendedVector(54,63,72);
my $vec4 = new Vector();

# 値の設定
$vec3->{x} = 16;

print <<"Class";

これからクラスを試します

vec1: @{[   $vec1   ]}
vec2: @{[   $vec2   ]}

vec1の説明: @{[   $vec1->desc   ]}
vec2の説明: @{[   $vec2->desc   ]}
vec3の説明: @{[   $vec3->desc   ]}
vec4の説明: @{[   $vec4->desc   ]}

vec1のx座標: @{[   $vec1->{x}   ]}
vec2のy座標: @{[   $vec2->{y}   ]}
vec3のz座標: @{[   $vec3->{z}   ]}

vec1+vec2+vec3: @{[   Vector->added($vec1,$vec2,$vec3)->desc   ]}
vec4+vec2: @{[   $vec4->add($vec2)->desc   ]}
vec2×12: @{[   $vec2->coefMultiplied(12)->desc   ]}

vec2∙vec3: @{[   $vec2->dot($vec3)   ]}
vec3×vec2: @{[   $vec3->cross($vec2)->desc   ]}
|vec3|:    @{[   $vec3->norm   ]}

説明してもらう:
@{[   Vector->describe   ]}
@{[   $vec1->describe   ]}

バージョン表示:
@{[   Vector->VERSION   ]}
@{[   ExtendedVector->VERSION   ]}
@{[   $vec1->VERSION   ]}
@{[   $vec2->VERSION   ]}

Class

# アクセスできません (ExtendedVectorからdescriptionにアクセスできない)
# ExtendedVector->describeFromSub
# $vec2->describeFromSub

# Perlのメソッドは $obj->method() のようなかっこを付す必要はない。 $obj->method で実行できる

print "\r\n\r\n";