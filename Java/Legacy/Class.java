public class Class {

	public static void main(String[] args) {

		// Javaはクラス名に別名を付ける方法がないので,他所のクラスのサブクラスを利用するときは,都度このような長いクラス名を使わなければならない

		Classdef.Vector vec1 = new Classdef.Vector(3,2,1);
		Classdef.ExtendedVector vec2 = new Classdef.ExtendedVector(6,4,2);
		Classdef.ExtendedVector vec3 = new Classdef.ExtendedVector(54,63,72);
		Classdef.Vector vec4 = new Classdef.Vector(0,0,0);

		// 値の設定
		vec3.x = 16;

		Utility.println(
			"",
			"これからクラスを試します",
			"",
			"vec1: "+(   vec1   ),
			"vec2: "+(   vec2   ),
			"",
			"vec1の説明: "+(   vec1.desc()   ),
			"vec2の説明: "+(   vec2.desc()   ),
			"vec3の説明: "+(   vec3.desc()   ),
			"vec4の説明: "+(   vec4.desc()   ),
			"",
			"vec1のx座標: "+(   vec1.x   ),
			"vec2のy座標: "+(   vec2.y   ),
			"vec3のz座標: "+(   vec3.z   ),
			"",
			"vec1+vec2+vec3: "+(   Classdef.Vector.added(vec1,vec2,vec3).desc()   ),
			"vec4+vec2: "+(   vec4.add(vec2).desc()   ),
			"vec2×12: "+(   vec2.coefMultiplied(12).desc()   ),
			"",
			"vec2∙vec3: "+(   vec2.dot(vec3)   ),
			"vec3×vec2: "+(   vec3.cross(vec2).desc()   ),
			"|vec3|:    "+(   vec3.norm()   ),
			"",
			"説明してもらう:",
			Classdef.Vector.describe(),
			Classdef.ExtendedVector.describeFromSub(),
			vec1.describe(),
			vec2.describeFromSub(),
			"",
			"バージョン表示:",
			Classdef.Vector.VERSION,
			Classdef.ExtendedVector.VERSION,
			vec1.VERSION,
			vec2.VERSION
		);

		// アクセスすべきではありません (クラスメソッドにインスタンスからはアクセスできない)
		// vec1.describe
		// vec2.describeFromSub

		// アクセスすべきではありません (クラス変数にインスタンスからはアクセスできない)
		// vec1.VERSION
		// vec2.VERSION

		Utility.pnl(2);

	}

}