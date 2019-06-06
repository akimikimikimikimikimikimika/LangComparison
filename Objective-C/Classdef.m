#include <Foundation/Foundation.h>
#include "Classdef.h"

@implementation Vector: NSObject

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
        return [[NSString alloc] initWithFormat:@"(%f,%f,%f)",self.x,self.y,self.z];
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
