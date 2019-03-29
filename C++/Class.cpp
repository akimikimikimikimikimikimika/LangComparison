#include <iostream>
#include "Header.hpp"

using namespace std;

#include "Classdef.hpp" // クラス定義読み込み
// クラス定義はヘッダーファイル Classdef.hpp で取り扱い,メソッドやデータの実装は Classdef.cpp で取り扱う。

void Class() {

	// 値を書き込んでもらうポインタを指定
	char text[100];
	double scalar;
	Vector vector;

	Vector vec1(3,2,1);
	ExtendedVector vec2(6,4,2);
	ExtendedVector vec3(54,63,72);
	Vector vec4;

	// 値の設定
	vec3.x = 16;

	cout << "\r\nこれからクラスを試します\r\n\r\n";

	cout << "vec1: " << &vec1 << "\r\n";
	cout << "vec2: " << &vec2 << "\r\n\r\n";

	vec1.desc(text);
	cout << "vec1の説明: " << text << "\r\n";
	vec2.desc(text);
	cout << "vec2の説明: " << text << "\r\n";
	vec3.desc(text);
	cout << "vec3の説明: " << text << "\r\n";
	vec4.desc(text);
	cout << "vec4の説明: " << text << "\r\n\r\n";

	cout << "vec1のx座標: " << vec1.x << "\r\n";
	cout << "vec2のy座標: " << vec2.y << "\r\n";
	cout << "vec3のz座標: " << vec3.z << "\r\n\r\n";

	Vector::added(&vector,vec1,vec2);
	Vector::added(&vector,vector,vec3);
	vector.desc(text);
	cout << "vec1+vec2+vec3: " << text << "\r\n";
	vec4.add(vec2);
	vec4.desc(text);
	cout << "vec4+vec2: " << text << "\r\n";
	vec2.coefMultiplied(&vector,12);
	vector.desc(text);
	cout << "vec2×12: " << text << "\r\n\r\n";

	vec2.inner(&scalar,vec3);
	cout << "vec2∙vec3: " << scalar << "\r\n";
	vec3.outer(&vector,vec2);
	vector.desc(text);
	cout << "vec3×vec2: " << text << "\r\n";
	vec3.norm(&scalar);
	cout << "|vec3|:    " << scalar << "\r\n\r\n";

	Vector::describe(text);
	cout << "説明してもらう1: " << text << "\r\n";
	ExtendedVector::describeFromSub(text);
	cout << "説明してもらう2: " << text << "\r\n";
	vec1.describe(text);
	cout << "説明してもらう3: " << text << "\r\n";
	vec2.describeFromSub(text);
	cout << "説明してもらう4: " << text << "\r\n";

}
