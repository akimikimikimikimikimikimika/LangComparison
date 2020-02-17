#include <Foundation/Foundation.h>

// ここではクラスのインターフェースを構築する。クラス内の関数やデータの実装は Classdef.m で。

@interface Vector: NSObject
	// 必ず何かを継承する
	// 全てのクラスの親クラスはNSObject

	// プロパティ = 変数 + ゲッター + セッター

	@property (class,assign,readwrite) NSString* description;
	@property (class,assign,readonly) NSString* VERSION;

	@property (nonatomic,readwrite) CGFloat x;
	@property (nonatomic,readwrite) CGFloat y;
	@property (nonatomic,readwrite) CGFloat z;
		// 各インスタンス毎に異なる値
		// インスタンスメソッド内のみから self.x でアクセス可能
		// 外部から v.x でアクセス可能

		/*
			(nonatomic,readwrite)
			この括弧内にはプロパティの特性を指定する

			• atomic   : スレッドセーフにする (並列処理で同時にアクセスされたときに問題が発生しないようにする) → パフォーマンスが悪化しうる
			• nonatomic: スレッドセーフにしない

			• readonly : 読み出し専用プロパティ
			• readwrite: 逆

			• nullable: このプロパティの値として NULL,nil 等を指定しても良いことを示す (Swiftでいう CGFloat? である)
			• nonnull : 逆に指定してはいけないことを示す (Swiftでいう CGFloat である)

			• getter=[名前]: ゲッター名を指定
			• setter=[名前]: セッター名を指定

			以下はオブジェクトのプロパティに使えるオプションで,CGFloatのようなプリミティブ型には使えない
			• strong: 強い参照 (勝手にメモリ解放されない → メモリリークに注意)
			• weak  : 弱い参照 (メモリ解放されてnilになる場合がある)
			• copy  : strong + 代入時にコピーされる
		*/

		/*

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

	// イニシャライザ/コンストラクタ
	- (id)init;
	- (id)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z;

	// インスタンスの説明
	- (NSString *)desc;
		// descはオブジェクトを文字列で表すための共通のメソッド
		// 文字列としてオブジェクトを使用する場合に暗黙のうちに呼び出される

	// 足し算を定義

	// インスタンスメソッド版 (自分自身に足し合わせていく)
	- (Vector *)add:(Vector *)v1, ...NS_REQUIRES_NIL_TERMINATION;

	// クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
		// クラスメソッドでは先頭を + で指定する
	+ (Vector *)added:(Vector *)v1, ...NS_REQUIRES_NIL_TERMINATION;

	// スカラ倍を定義 (共にインスタンスメソッド)

	// 自分自身を実数倍
	- (Vector *)coefMultiply:(CGFloat)k;

	// 自分自身の実数倍のVectorを生成
	- (Vector *)coefMultiplied:(CGFloat)k;

	// メソッド内で description を呼ぶ
	+ (NSString *)describe;

	// メソッド内で,インスタンス自身/クラス自身は, self から呼び出す

@end

// クラス定義2 (ExtendedVector inherits from Vector)
@interface ExtendedVector: Vector // 継承宣言

	- (id)init;
	- (id)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z;

	// 内積を定義
	- (CGFloat)dot:(Vector *)v;

	// 外積を定義
	- (Vector *)cross:(Vector *)v;

	// ノルムを定義
	- (CGFloat)norm;

	// 説明できるはず
	+ (NSString *)describeFromSub;

	/*
		ヘッダで宣言したメソッドは基本的に外部からアクセスできてしまう
		なので,プライベートメソッドを用意したけらば,実装側のみでメソッドを導入する
	*/

@end

// Objective-Cで扱われるオブジェクト型は全てポインタでなければならないので,変数名の先頭は * が必要

/*
	Cのプリミティブ型

	• NSInteger : Cのint,long型
	• CGFloat : Cのdouble型
	• BOOL : 真偽値

	実行環境に合わせて最適な型が選択される
*/