
using namespace std;

#ifndef CLASSDEF
    #define CLASSDEF

// ここではクラスを定義する。クラス内の関数やデータの実装は Classdef.cpp で。

// クラス定義1 (Vector)
class Vector {
    protected:
        const static char *description;
            /*
                クラス変数
                クラス内で共有される値 (static)
                メソッド内で description でアクセス可能
                protected: なので,継承クラスからもアクセス可能
                さらに public: にすれば,外部から
                    Vector::description
                    v.description  (vが実体Vectorの場合)
                    v->description (vがポインタVector*の場合)
                    でアクセス可能
            */
    public:
        double x = 0;
        double y = 0;
        double z = 0;
        /*
            インスタンス変数
            各インスタンス毎に異なる値
            インスタンスメソッド内のみから x でアクセス可能
            publicなので,外部から v.x でアクセス可能
        */
    public: // イニシャライザ/コンストラクタ
        Vector();
        Vector(double X, double Y, double Z);
    public:
        void desc(char *ch); // インスタンスの説明
        void add(Vector v);
        static void added(Vector *to, Vector v1, Vector v2);
        void coefMultiply(double k);
        void coefMultiplied(Vector *to, double k);
        static void describe(char *to);
};
/*
    public:
        このキーワード以後に書かれた関数やデータは,外部からアクセス可能
    private:
        このキーワード以後に書かれた関数やデータは,このクラス内でのみアクセス可能
    protected:
        このキーワード以後に書かれた関数やデータは,このクラスと,継承したクラス内でのみアクセス可能
*/

// クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector: public Vector {
    public:
        ExtendedVector();
        ExtendedVector(double X, double Y, double Z);
    public:
        void inner(double *to, Vector v); // 内積を定義
        void outer(Vector *to, Vector v); // 外積を定義
        void norm(double *to); // ノルムを定義
        static void describeFromSub(char *to); // 説明できるはず
};
#endif