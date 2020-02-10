#include <iostream>
#include <string>
#include <cmath>

#include "Classdef.hpp"
// ここでは,一般的な方法であるヘッダファイルを用いたクラス定義をしている。ヘッダファイル (Classdef.hpp) でクラスの内容を定義し,その関数やデータの実装をこのソースファイルで行う。

using namespace std;

// クラス定義1 (Vector)

const string Vector::description = "C++ simple vector class";

// イニシャライザ/コンストラクタ
Vector::Vector() {
	x = 0;
	y = 0;
	z = 0;
};
Vector::Vector(double X, double Y, double Z) {
	x = X;
	y = Y;
	z = Z;
};

string Vector::desc() {
	char s[1000];
	sprintf(s,"(%d,%d,%d)",(int)x,(int)y,(int)z);
	return string(s);
};

void Vector::add(Vector v) {
	x += v.x;
	y += v.y;
	z += v.z;
};
/*
	可変引数の add
	任意の個数のVectorを受け付ける。
	n個のVectorは Vector::add(Vector v1,Vn ...vn) に当てはめられ,テンプレート型 Vn はn-1個のVectorを表す。
	v1は add(v1) で Vector::add(Vector v) を適用し,vnはまた Vector::add(Vector v1,Vn ...vn) に当てはめられる。
	これを繰り返して,1つずづVectorを処理する。
*/

Vector Vector::added(Vector v1, Vector v2) {
	return Vector(
		v1.x+v2.x,
		v1.y+v2.y,
		v1.z+v2.z
	);
};

void Vector::coefMultiply(double k) {
	x *= k;
	y *= k;
	z *= k;
};
Vector Vector::coefMultiplied(double k) {
	return Vector(x*k,y*k,z*k);
};

string Vector::describe() {
	return description;
};

// クラス定義2 (ExtendedVector inherits from Vector)

ExtendedVector::ExtendedVector() : Vector() {};
ExtendedVector::ExtendedVector(double X, double Y, double Z) : Vector(X,Y,Z) {};
	// 親クラスのイニシャライザに初期化を代行させる

double ExtendedVector::dot(Vector v) {
	double p=0;
	p+=x*v.x;
	p+=y*v.y;
	p+=z*v.z;
	return p;
};
Vector ExtendedVector::cross(Vector v) {
	return Vector(
		y*v.z-z*v.y,
		z*v.x-x*v.z,
		x*v.y-y*v.x
	);
};
double ExtendedVector::norm() {
	return sqrt(dot(*this));
};
string ExtendedVector::describeFromSub() {
	return description;
};
