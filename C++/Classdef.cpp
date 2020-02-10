#include <iostream>
#include <string>
#include <cstring> // GCCはこれがないとcstringの機能は使えないみたい
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
	char *s;
	sprintf(s,"(%d,%d,%d)",(int)x,(int)y,(int)z);
	return string(s);
};
void Vector::add(Vector v) {
	x += v.x;
	y += v.y;
	z += v.z;
};
void Vector::added(Vector *to, Vector v1, Vector v2) {
	Vector v(
		v1.x+v2.x,
		v1.y+v2.y,
		v1.z+v2.z
	);
	*to = v;
};
void Vector::coefMultiply(double k) {
	x *= k;
	y *= k;
	z *= k;
};
void Vector::coefMultiplied(Vector *to, double k) {
	Vector v(x*k,y*k,z*k);
	*to = v;
};
string Vector::describe() {
	return description;
};

// クラス定義2 (ExtendedVector inherits from Vector)

ExtendedVector::ExtendedVector() : Vector() {};
ExtendedVector::ExtendedVector(double X, double Y, double Z) : Vector(X,Y,Z) {};
	// 親クラスのイニシャライザに初期化を代行させる

void ExtendedVector::dot(double *to, Vector v) {
	double p=0;
	p+=x*v.x;
	p+=y*v.y;
	p+=z*v.z;
	*to = p;
};
void ExtendedVector::cross(Vector *to, Vector v) {
	Vector p(
		y*v.z-z*v.y,
		z*v.x-x*v.z,
		x*v.y-y*v.x
	);
	*to = p;
};
void ExtendedVector::norm(double *to) {
	double in;
	Vector *self = this;
	dot(&in,*self);
	double sq = std::sqrt(in);
	*to = sq;
};
string ExtendedVector::describeFromSub() {
	return description;
};
