
"use strict";

// ここでは,プロトタイプ型のオブジェクト指向の具体例を示す。
// JavaScriptにおけるオブジェクト指向は元々プロトタイプ型のみであった。後に他言語にあるようなクラス型のオブジェクト指向を導入した。
// そこで,クラス型のオブジェクト指向を Class.js に,プロトタイプ型のオブジェクト指向を Class2.js で書き記した。

// クラス定義1 (Vector)

// イニシャライザ/コンストラクタ
function Vector(x,y,z) {
    this.x = x;
    this.y = y;
    this.z = z;
};

// プロトタイプオブジェクトを定義
// new Vector(...) により,このプロトタイプをコピーして新たなオブジェクトを生成し,イニシャライザで初期化処理をして渡される。
Vector.prototype = {

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
    // 自分自身の実数倍のVectorを生成
    coefMultiplied:function(k){
        return new Vector(this.x*k,this.y*k,this.z*k);
    },

    // メソッド内で,インスタンス自身/クラス自身は, self から呼び出す

};

// クラス変数 (イニシャライザ関数に直接埋め込む)
Vector.description = "JavaScript simple vector class";

// クラスメソッド (イニシャライザ関数に直接埋め込む)
// 引数のVectorを足し合わせた結果を返す
Vector.added = function(...args){
    let a = new Vector(0,0,0);
    args.forEach(v=>{
        a.x += v.x;
        a.y += v.y;
        a.z += v.z;
    });
    return a;
};

// クラス定義2 (ExtendedVector inherits from Vector)

function ExtendedVector(x,y,z) {
    this.x = x;
    this.y = y;
    this.z = z;
};

(()=>{

    // ExtendedVectorの構築を,ブロック内でして,プロトタイプpが流出しないようにする

    // 継承として,継承元クラスのコピーをプロトタイプにする
    let p = new Vector(0,0,0);
    ExtendedVector.prototype = p;

    // 以下で,プロトタイプを拡張する

    // 内積を定義
    p.inner = function(v){
        var p=0; // 関数外のpとは干渉しない
        p += this.x*v.x;
        p += this.y*v.y;
        p += this.z*v.z;
        return p;
    };

    // 外積を定義
    p.outer = function(v){
        return new Vector(
            this.y*v.z-this.z*v.y,
            this.z*v.x-this.x*v.z,
            this.x*v.y-this.y*v.x
        );
    };

    // ノルムを定義
    p.norm = function(){
        return Math.sqrt(this.inner(this));
    };

    // プライベートメソッドはないみたい

})();

let vec1 = new Vector(3,2,1);
let vec2 = new ExtendedVector(6,4,2);
let vec3 = new ExtendedVector(54,63,72);
let vec4 = new Vector(0,0,0);

// 値の設定
vec3.x = 16;

console.log(`

これからクラスを試します

vec1: ${   vec1   }
vec2: ${   vec2   }

vec1の説明: ${   vec1.desc()   }
vec2の説明: ${   vec2.desc()   }
vec3の説明: ${   vec3.desc()   }
vec4の説明: ${   vec4.desc()   }

vec1のx座標: ${   vec1.x   }
vec2のy座標: ${   vec2.y   }
vec3のz座標: ${   vec3.z   }

vec1+vec2+vec3: ${   Vector.added(vec1,vec2,vec3).desc()   }
vec4+vec2: ${   vec4.add(vec2).desc()   }
vec2×12: ${   vec2.coefMultiplied(12).desc()   }

vec2∙vec3: ${   vec2.inner(vec3)   }
vec3×vec2: ${   vec3.outer(vec2).desc()   }
|vec3|:    ${   vec3.norm()   }

`);
