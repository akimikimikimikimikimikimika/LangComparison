#! /usr/bin/php

<?php
// PHP

/*
    複数行のコメント
*/
?>

こんにちは。私の名前はPHPです。
直接入力するだけでエコー出力します。
<?php echo "勿論,こんな書き方だってアリです。\n\n"; ?>
<?php

function valDemo(){

    // 文字列
    $string = "STRING";
    // 数値
    $number = 6;
    // 真偽値
    $boolean = true;
    // 配列
    $array1 = array(1,"second",3,3.14,false);
    // 連想配列
    $array2 = array("a"=>1,"b"=>"second","c"=>3,"d"=>3.14,"e"=>false);
    // 関数
    function cube($val) {
        return $val**3;
    }
    // 無名関数
    $func = function($val) {
        return $val**2;
    };

    echo "\n各種データを扱います";
    echo "文字列:".$string."\n";
    echo "数値:".$number.",".$func($number).",".cube($number)."\n";
    echo "真偽値:".$boolean."\n";
    echo "配列:\n";
    echo $array1."\n";
    echo "   2番目:".$array1[2]."\n";
    echo "連想配列:\n";
    echo $array2."\n";
    echo "   b= ".$array2["b"]."\n";

}

valDemo();

?>
