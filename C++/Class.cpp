#include <iostream>

using namespace std;

#include "Classdef.hpp" // クラス定義読み込み
// クラス定義はヘッダーファイル Classdef.hpp で取り扱い,メソッドやデータの実装は Classdef.cpp で取り扱う。

void Class() {

	Vector vec1(3,2,1);
	ExtendedVector vec2(6,4,2);
	ExtendedVector vec3(54,63,72);
	Vector vec4;

	// 値の設定
	vec3.x = 16;

	cout <<
	endl <<
	"これからクラスを試します" << endl <<
	endl <<

	// オブジェクトそのものの説明といえば,ポインタしかない
	"vec1: " << &vec1 << endl <<
	"vec2: " << &vec2 << endl <<

	endl <<

	"vec1の説明: " << vec1.desc() << endl <<
	"vec2の説明: " << vec2.desc() << endl <<
	"vec3の説明: " << vec3.desc() << endl <<
	"vec4の説明: " << vec4.desc() << endl <<

	endl <<

	"vec1のx座標: " << vec1.x << endl <<
	"vec2のy座標: " << vec2.y << endl <<
	"vec3のz座標: " << vec3.z << endl <<

	endl <<

	"vec1+vec2+vec3: " << Vector::added(vec1,vec2,vec3).desc() << endl;
	vec4.add(vec2);
	cout <<
	"vec4+vec2: " << vec4.desc() << endl <<
	"vec2×12: " << vec2.coefMultiplied(12).desc() << endl <<

	endl <<

	"vec2∙vec3: " << vec2.dot(vec3) << endl <<
	"vec3×vec2: " << vec3.cross(vec2).desc() << endl <<
	"|vec3|:    " << vec3.norm() << endl <<

	endl <<

	"説明してもらう: " << endl <<
	Vector::describe() << endl <<
	ExtendedVector::describeFromSub() << endl <<
	vec1.describe() << endl <<
	vec2.describeFromSub() << endl <<

	endl <<

	"バージョン表示: " << endl <<
	Vector::VERSION << endl <<
	ExtendedVector::VERSION << endl <<
	vec1.VERSION << endl <<
	vec2.VERSION << endl;

	cout << endl << endl;

}