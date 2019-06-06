#include <Foundation/Foundation.h>
// #include 又は #import

@interface Vector: NSObject
    // @end までクラス定義
    {

        // インスタンス変数
        NSString *desc;
        // Objective-Cで扱われるオブジェクト型は全てポインタなので,変数名の先頭は * が必要

    }

    // プロパティ
    @property (nonatomic) CGFloat x;
    @property (nonatomic) CGFloat y;
    @property (nonatomic) CGFloat z;

    // {} の外でメソッドを定義

    - (id)init;
    - (id)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z;

    - (NSString *)description;

    - (Vector *)add:(Vector *)v;
    + (Vector *)added:(Vector *)v1 and:(Vector *)v2; // クラスメソッド (先頭を + で指定)
    - (Vector *)coefMultiply:(CGFloat)k;
    - (Vector *)coefMultiplied:(CGFloat)k;

@end

@interface ExtendedVector: Vector

    - (id)init;
    - (id)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z;

    - (CGFloat)dot:(Vector *)v;
    - (Vector *)cross:(Vector *)v;
    - (CGFloat)norm;

    - (NSString *)describeFromSub;

@end

/*
    Objective-C はCを継承した言語であり,Cのコードがそのまま利用できる
    Cのプリミティブ型はObjective-Cで次のようにして呼び出しできる
    この場合,オブジェクトでないので変数名の先頭に * は不要
    • NSInteger : Cのint,long型
    • CGFloat : Cのdouble型
    • BOOL : 真偽値
*/

/*
    Objective-Cのインスタンス変数とプロパティ

    それぞれ値を格納する物だが,近頃それぞれの差異がなくなってきている。プロパティを使う方がベターとされている。

    • インスタンス変数
        ヘッダーでは {} 内に宣言する
        クラス内からのアクセスの仕方
            self->inst
            inst
        クラス外からのアクセスの仕方
            v->inst

    • プロパティ
        ヘッダーでは {} 外に宣言する (@property)
        クラス内からのアクセスの仕方
            self.prop
            [self prop] // ゲッター的記法
        クラス外からのアクセスの仕方
            v.prop
            [v prop] // ゲッター的記法
*/
