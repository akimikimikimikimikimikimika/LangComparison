#import "Classdef.h"
// ここでは,一般的な方法であるヘッダファイルを用いたクラス定義をしている。ヘッダファイル (Classdef.h) でクラスのインターフェースを定義し,その実装をこのソースファイルで行う。

@implementation Vector: NSObject

	@dynamic description,VERSION; // ゲッター•セッターを用意するんだとか
	NSString* description = @"Objective-C simple vector class";
	NSString* VERSION = @"1.0";

	// イニシャライザ/コンストラクタ
	- (id)init {
		self = [super init]; // 直近の親クラス(この場合はNSObject)のイニシャライズ

		self.x=0;
		self.y=0;
		self.z=0;

		return self;
	}

	- (id)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z {
		self = [super init]; // 直近の親クラス(この場合はNSObject)のイニシャライズ

		self.x=x;
		self.y=y;
		self.z=z;

		return self;
	}

	- (NSString *)desc {
		return [[NSString alloc] initWithFormat:@"(%.0f,%.0f,%.0f)",self.x,self.y,self.z];
	}

	// 足し算を定義
	// インスタンスメソッド版 (自分自身に足し合わせていく)
	- (Vector *)add:(Vector *)v1, ...NS_REQUIRES_NIL_TERMINATION {
		va_list args;
		va_start(args,v1);
		for (Vector* v=v1;v!=nil;v=va_arg(args,Vector *)) {
			self.x+=[v x]; // or v.x
			self.y+=[v y]; // or v.y
			self.z+=[v z]; // or v.z
		}
		va_end(args);
		return self;
	}
	// クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
	+ (Vector *)added:(Vector *)v1, ...NS_REQUIRES_NIL_TERMINATION {
		Vector *v=[[Vector alloc] init];
		va_list args;
		va_start(args,v1);
		for (Vector* vn=v1;vn!=nil;vn=va_arg(args,Vector *)) {
			v.x=v1.x+vn.x;
			v.y=v1.y+vn.y;
			v.z=v1.z+vn.z;
		}
		va_end(args);
		return v;
	}
		/*
			addもaddedも可変個引数で実装した
			Objective-Cでは,Cでおなじみの方法を使って可変個引数を受け取る。
			Cにおいては引数の個数が不定なため,printfのように,第1引数で引数の個数が分かるデータを受け取ってから他の引数を受け取っていた。
			Objective-Cでは引数末端で NS_REQUIRES_NIL_TERMINATION を指定して,引数末尾は必ずnilにする制約を加えることで引数を受け取れるようにしている。
		*/

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

	+ (NSString *)describe {
		return Vector.description;
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
	+ (NSString *)describeFromSub {
		return ExtendedVector.description;
	}

@end