
"use strict";

// クラス定義1 (Vector)
class Vector {

    // JavaScriptには,初期設定可能なクラス変数/インスタンス変数がない

    // イニシャライザ/コンストラクタ
    constructor(x,y,z) {
        this.x = x;
        this.y = y;
        this.z = z;
        // インスタンス変数
            // 各インスタンス毎に異なる値
            // インスタンスメソッド内のみから this.x でアクセス可能
            // 外部からは v.x でアクセス可能
    }

    // インスタンスの説明 (インスタンスメソッド)
    desc() {
        return `(${this.x},${this.y},${this.z})`;
    }

    // 足し算を定義
    // インスタンスメソッド版 (自分自身に足し合わせていく)
    add(...args) {
        args.forEach(v=>{
            this.x += v.x;
            this.y += v.y;
            this.z += v.z;
        });
        return this;
    }
    // クラスメソッド版 (引数のVectorを足し合わせた結果を返す)
        // クラスメソッドでは static を前置する
    static added(...args) {
        let a = new Vector(0,0,0);
        args.forEach(v=>{
            a.x += v.x;
            a.y += v.y;
            a.z += v.z;
        });
        return a;
    }

    // スカラ倍を定義 (共にインスタンスメソッド)
    // 自分自身を実数倍
    coefMultiply(k) {
        this.x *= k;
        this.y *= k;
        this.z *= k;
        return this;
    }
    // 自分自身の実数倍のVectorを生成
    coefMultiplied(k) {
        return new Vector(this.x*k,this.y*k,this.z*k);
    }

    // ゲッター/セッター
    get abs() {
        return Math.hypot(this.x,this.y,this.z);
    }
    set abs(val) {
        let c=this.abs;
        this.coefMultiply(val/c);
    }

    // メソッド内で,インスタンス自身/クラス自身は, self から呼び出す

}

// クラス定義2 (ExtendedVector inherits from Vector)
class ExtendedVector extends Vector { // 継承宣言

    constructor(x,y,z) {
        super(x,y,z); // 親クラスのイニシャライザに初期化を代行させる
    }
    // この場合は,このイニシャライザを省略してもよい。省略しても親クラスのイニシャライザで子クラスのオブジェクトが作成できる。

    // 内積を定義
    inner(v) {
        var p=0;
        p += this.x*v.x;
        p += this.y*v.y;
        p += this.z*v.z;
        return p;
    }

    // 外積を定義
    outer(v) {
        return new Vector(
            this.y*v.z-this.z*v.y,
            this.z*v.x-this.x*v.z,
            this.x*v.y-this.y*v.x
        );
    }

    // ノルムを定義
    norm() {
        return Math.sqrt(this.inner(this));
    }

    // プライベートメソッドはないみたい

}

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
|vec2|:    ${   vec2.abs      }

`);