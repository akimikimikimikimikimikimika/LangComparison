#include <Foundation/Foundation.h>
#include <stdio.h>
#include "Header.h"

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

    // 値の設定
    vec3.x = 16;

    printf("\nこれからクラスを試します\n");
    printf("\n");
    printf("vec1: %p\n",vec1);
    printf("vec2: %p\n",vec2);
    printf("\n");
    printf("vec1の説明: %s\n",vtoc(vec1));
    printf("vec2の説明: %s\n",vtoc(vec2));
    printf("vec3の説明: %s\n",vtoc(vec3));
    printf("vec4の説明: %s\n",vtoc(vec4));
    printf("\n");
    printf("vec1のx座標: %.0f\n",vec1.x);
    printf("vec2のy座標: %.0f\n",vec2.y);
    printf("vec3のz座標: %.0f\n",vec3.z);
    printf("\n");
    printf("vec1+vec2+vec3: %s\n",vtoc(
        [Vector added:[Vector added:vec1 and:vec2] and:vec3]
    ));
    printf("vec4+vec2: %s\n",vtoc(
        [vec4 add:vec2]
    ));
    printf("vec2×12: %s\n",vtoc(
        [vec4 coefMultiplied:12]
    ));
    printf("\n");
    printf("vec2∙vec3: %.0f\n",[vec2 dot:vec3]);
    printf("vec3×vec2: %s\n"  ,vtoc([vec3 cross:vec2]));
    printf("|vec3|:    %.0f\n",[vec3 norm]);
    printf("\n");

}
/*
    クラスのインスタンス生成
    [[Vector alloc] init] のように,一旦メモリを割り当ててからinitする
*/

char *vtoc(Vector *v) {
    return (char *)[[v description] UTF8String];
}
