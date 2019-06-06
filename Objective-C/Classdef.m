#include <Foundation/Foundation.h>
#include "Classdef.h"

@implementation Vector: NSObject
    // 必ず何かを継承する
    // 全てのクラスの親クラスはNSObject

    // イニシャライザ/コンストラクタ
    - (id)init {
        self = [super init]; // 親クラス(この場合はNSObject)のイニシャライズ

        self->desc=@"Objective-C simple vector class";
        self.x=0;
        self.y=0;
        self.z=0;

        return self;
    }

    - (id)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z {
        self = [super init]; // 親クラス(この場合はNSObject)のイニシャライズ

        self->desc=@"Objective-C simple vector class";
        self.x=x;
        self.y=y;
        self.z=z;

        return self;
    }

    // descriptionはオブジェクトを文字列で表す共通のメソッド
    // 文字列としてオブジェクトを使用する場合に暗黙のうちに呼び出される
    - (NSString *)description {
        return [[NSString alloc] initWithFormat:@"(%.0f,%.0f,%.0f)",self.x,self.y,self.z];
    }

    // 足し算を定義
    // インスタンスメソッド版 (自分自身に足し合わせていく)
    - (Vector *)add:(Vector *)v {
        self.x+=[v x]; // or v.x
        self.y+=[v y]; // or v.y
        self.z+=[v z]; // or v.z
        return self;
    }
    // クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
    + (Vector *)added:(Vector *)v1 and:(Vector *)v2 {
        Vector *v=[[Vector alloc] init];
        v.x=v1.x+v2.x;
        v.y=v1.y+v2.y;
        v.z=v1.z+v2.z;
        return v;
    }

    // スカラ倍を定義 (共にインスタンスメソッド)
    // 自分自身を実数倍
    - (Vector *)coefMultiply:(CGFloat)k {
        self.x*=k;
        self.y*=k;
        self.z*=k;
        return self;
    }
    // 自分自身の実数倍のVectorを生成
    - (Vector *)coefMultiplied:(CGFloat)k {
        Vector *v=[[Vector alloc] init];
        v.x=self.x*k;
        v.y=self.y*k;
        v.z=self.z*k;
        return v;
    }

    - (NSString *)describe {
        return self->desc;
    }

@end

@implementation ExtendedVector: Vector // 継承宣言

    - (id)init {
        self = [super init];
        return self;
    }

    - (id)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z {
        self = [super initWithX:x Y:y Z:z];
        return self;
    }

    // 内積を定義
    - (CGFloat)dot:(Vector *)v {
        CGFloat p=0;
        p+=self.x*v.x;
        p+=self.y*v.y;
        p+=self.z*v.z;
        return p;
    }

    // 外積を定義
    - (Vector *)cross:(Vector *)v {
        Vector *nv=[[Vector alloc] init];
        nv.x=self.y*v.z-self.z*v.y;
        nv.y=self.z*v.x-self.x*v.z;
        nv.z=self.x*v.y-self.y*v.x;
        return nv;
    }

    // ノルムを定義
    - (CGFloat)norm {
		return sqrt([self dot:self]);
    }

    // こちらでも説明できる
    - (NSString *)describeFromSub {
        return self->desc;
    }

@end