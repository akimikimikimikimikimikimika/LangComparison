#include <iostream>
#include <string>
#include <cmath>

#include "Classdef.hpp"
// ここでは,一般的な方法であるヘッダファイルを用いたクラス定義をしている。ヘッダファイル (Classdef.hpp) でクラスの内容を定義し,その関数やデータの実装をこのソースファイルで行う。

using namespace std;

// クラス定義1 (Vector)

const char *Vector::description = "C++ sample vector class";

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

void Vector::desc(char *ch) {
	sprintf(ch,"(%d,%d,%d)",(int)x,(int)y,(int)z);
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
void Vector::describe(char *to) {
	strcpy(to,description);
};

// クラス定義2 (ExtendedVector inherits from Vector)

ExtendedVector::ExtendedVector() : Vector() {};
ExtendedVector::ExtendedVector(double X, double Y, double Z) : Vector(X,Y,Z) {};
	// 親クラスのイニシャライザに初期化を代行させる

void ExtendedVector::inner(double *to, Vector v) {
	double p=0;
	p+=x*v.x;
	p+=y*v.y;
	p+=z*v.z;
	*to = p;
};
void ExtendedVector::outer(Vector *to, Vector v) {
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
	inner(&in,*self);
	double sq = std::sqrt(in);
	*to = sq;
};
void ExtendedVector::describeFromSub(char *to) {
	strcpy(to,description);
};
