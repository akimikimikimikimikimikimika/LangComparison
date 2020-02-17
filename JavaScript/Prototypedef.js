// ここでは,プロトタイプ型のオブジェクト指向の具体例を示す。
// JavaScriptにおけるオブジェクト指向は元々プロトタイプ型のみであった。後に他言語にあるようなクラス型のオブジェクト指向を導入した。
// そこで,クラス型のオブジェクト指向を Classdef.js に,プロトタイプ型のオブジェクト指向を Prototypedef.js で書き記した。

// プロトタイプ定義1 (Vector2)

// イニシャライザ/コンストラクタ
function Vector2(x,y,z) {
	this.x = x;
	this.y = y;
	this.z = z;
};

// プロトタイプオブジェクトを定義
// new Vector2(...) により,このプロトタイプをコピーして新たなオブジェクトを生成し,イニシャライザで初期化処理をして渡される。
Vector2.prototype = {

	x:0,
	y:0,
	z:0,
	// インスタンス変数
		// 各インスタンス毎に異なる値
		// インスタンスメソッド内のみから this.x でアクセス可能
		// 外部からは v.x でアクセス可能

	desc:function(){
		return `(${this.x},${this.y},${this.z})`;
	},

	// 足し算を定義
	// インスタンスメソッド版 (自分自身に足し合わせていく)
	add:function(...args){
		args.forEach(v=>{
			this.x += v.x;
			this.y += v.y;
			this.z += v.z;
		});
		return this;
	},

	// スカラ倍を定義
	// 自分自身を実数倍
	coefMultiply:function(k){
		this.x *= k;
		this.y *= k;
		this.z *= k;
		return this;
	},
	// 自分自身の実数倍のVector2を生成
	coefMultiplied:function(k){
		return new Vector2(this.x*k,this.y*k,this.z*k);
	},

	// メソッド内で,インスタンス自身/クラス自身は, this から呼び出す

};

// プロトタイプ定義2 (ExtendedVector2 inherits from Vector2)

function ExtendedVector2(x,y,z) {
	this.x = x;
	this.y = y;
	this.z = z;
};

// 継承として,継承元クラスのコピーをプロトタイプにする
let ev = new Vector2(0,0,0);
ExtendedVector2.prototype = ev;

// プロトタイプ変数 (イニシャライザ関数に直接埋め込む)
Vector2.VERSION = ExtendedVector2.VERSION = "1.0";
Vector2.description = ExtendedVector2.description = "JavaScript simple vector class";

// プロトタイプメソッド (イニシャライザ関数に直接埋め込む)

// 引数のVector2を足し合わせた結果を返す
Vector2.added = ExtendedVector2.added = function(...args){
	let a = new Vector2(0,0,0);
	args.forEach(v=>{
		a.x += v.x;
		a.y += v.y;
		a.z += v.z;
	});
	return a;
};

// メソッド内で description を呼ぶ
Vector2.describe = ExtendedVector2.describe = function(){
	return this.description;
};

// 以下で,プロトタイプを拡張する

// 内積を定義
ev.dot = function(v){
	var p=0;
	p += this.x*v.x;
	p += this.y*v.y;
	p += this.z*v.z;
	return p;
};

// 外積を定義
ev.cross = function(v){
	return new Vector2(
		this.y*v.z-this.z*v.y,
		this.z*v.x-this.x*v.z,
		this.x*v.y-this.y*v.x
	);
};

// ノルムを定義
ev.norm = function(){
	return Math.sqrt(this.dot(this));
};

// 説明できるはず
ExtendedVector2.describeFromSub = function(){
	return this.description;
};

// プライベートメソッドはない

// コンストラクタを外部に出力する。
exports.Vector2 = Vector2;
exports.ExtendedVector2 = ExtendedVector2;