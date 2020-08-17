#include <iostream>
#include <string>
#include <cmath>

#include "Classdef.hpp"
// ここでは,一般的な方法であるヘッダファイルを用いたクラス定義をしている。ヘッダファイル (Classdef.hpp) でクラスの内容を定義し,その関数やデータの実装をこのソースファイルで行う。

// 本来わざわざ定義と実装を分離する必要はない。しかし,特に大規模開発などでは共同作業を進めやすくするために分離することが多いのだとか。或いは,ライブラリなどでは実装内容はバイナリにして,ヘッダは公開することで提供される関数やオブジェクトを明示することができるか。

// クラス定義1 (Vector)

const string Vector::VERSION = "1.0";

string Vector::description = "C++ simple vector class";

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
	// 親クラス(Vector)のイニシャライザに初期化を代行させる

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

void ExtendedVector::normalize() {
	this->coefMultiply(1/this->norm());
}