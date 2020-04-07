#! /usr/bin/env node

let {Vector,ExtendedVector} = require("./Classdef.js"); // クラス定義読み込み
let u=require("./Utility.js");
let e=exports;

e.Classes=()=>{

	let vec1 = new Vector(3,2,1);
	let vec2 = new ExtendedVector(6,4,2);
	let vec3 = new ExtendedVector(54,63,72);
	let vec4 = new Vector(0,0,0);

	// 値の設定
	vec3.x = 16;

	u.println(`

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

		vec2∙vec3: ${   vec2.dot(vec3)   }
		vec3×vec2: ${   vec3.cross(vec2).desc()   }
		|vec3|:    ${   vec3.norm()   }
		|vec2|:    ${   vec2.abs      }

		説明してもらう:
		${   Vector.describe()   }
		${   ExtendedVector.describeFromSub()   }

		バージョン表示:
		${   Vector.VERSION   }
		${   ExtendedVector.VERSION   }

	`);

	// アクセスできません (クラスメソッドにインスタンスからはアクセスできない)
	// vec1.describe()
	// vec2.describeFromSub()

	// アクセスできません (クラス変数にインスタンスからはアクセスできない)
	// vec1.VERSION
	// vec2.VERSION

};

if (!module.parent) e.Classes();