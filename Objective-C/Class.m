#import "Header.h"

// #include "Classdef.h"
/*
	Header.h で クラス定義をインクルードしているので,不要である。
	むしろあると2重になりかねない。
	→ Classdef.h で #ifndef #define マクロを指定すればこの問題は回避できて,このファイルでも Classdef.h をインクルードできるようになる。
*/

void ClassTest() {

	Vector* vec1=[[Vector alloc] initWithX:3 Y:2 Z:1];
	ExtendedVector* vec2=[[ExtendedVector alloc] initWithX:6 Y:4 Z:2];
	ExtendedVector* vec3=[[ExtendedVector alloc] initWithX:54 Y:63 Z:72];
	Vector* vec4=[[Vector alloc] init]; // (0,0,0)
		/*
			クラスのインスタンス生成
			[[Vector alloc] init] のように,一旦メモリを割り当ててからinitする
			スコープを抜けると自動的にメモリが解放される (正確にはコンパイラが参照を監視して解放コマンドをコード中に適切に挿入してくれる)
		*/

	// 値の設定
	vec3.x = 16;

	printLn2(1,@"これからクラスを試します",2);
	printLn([fmt:@"vec1: %p", vec1],1);
	printLn([fmt:@"vec2: %p", vec2],2);
	printLn([fmt:@"vec1の説明: %@", [vec1 description]],1);
	printLn([fmt:@"vec2の説明: %@", [vec2 description]],1);
	printLn([fmt:@"vec3の説明: %@", [vec3 description]],1);
	printLn([fmt:@"vec4の説明: %@", [vec4 description]],2);
	printLn([fmt:@"vec1のx座標: %.0f", vec1.x],1);
	printLn([fmt:@"vec2のy座標: %.0f", vec2.y],1);
	printLn([fmt:@"vec3のz座標: %.0f", vec3.z],2);
	printLn([fmt:@"vec1+vec2+vec3: %@",
		[[Vector added:[Vector added:vec1 and:vec2] and:vec3] description]
	],1);
	printLn([fmt:@"vec4+vec2: %@",
		[[vec4 add:vec2] description]
	],1);
	printLn([fmt:@"vec2×12: %@",
		[[vec4 coefMultiplied:12] description]
	],2);
	printLn([fmt:@"vec2∙vec3: %.0f", [vec2 dot:vec3]],1);
	printLn([fmt:@"vec3×vec2: %@"  , [[vec3 cross:vec2] description]],1);
	printLn([fmt:@"|vec3|:    %.0f", [vec3 norm]],2);

}