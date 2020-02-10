#include <iostream>
#include "Header.hpp"

using namespace std;

#include "Classdef.hpp" // クラス定義読み込み
// クラス定義はヘッダーファイル Classdef.hpp で取り扱い,メソッドやデータの実装は Classdef.cpp で取り扱う。

void Class() {

	double scalar;
	Vector vector;

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

	endl;

	Vector::added(&vector,vec1,vec2);
	Vector::added(&vector,vector,vec3);
	cout << "vec1+vec2+vec3: " << vector.desc() << endl;
	vec4.add(vec2);
	cout << "vec4+vec2: " << vec4.desc() << endl;
	vec2.coefMultiplied(&vector,12);
	cout << "vec2×12: " << vector.desc() << endl <<

	endl;

	vec2.dot(&scalar,vec3);
	cout << "vec2∙vec3: " << scalar << endl;
	vec3.cross(&vector,vec2);
	cout << "vec3×vec2: " << vector.desc() << endl;
	vec3.norm(&scalar);
	cout << "|vec3|:    " << scalar << endl <<

	endl;

	cout <<
	"説明してもらう1: " << Vector::describe() << endl <<
	"説明してもらう2: " << ExtendedVector::describeFromSub() << endl <<
	"説明してもらう3: " << vec1.describe() << endl <<
	"説明してもらう4: " << vec2.describeFromSub() << endl;

	cout << endl << endl;

}