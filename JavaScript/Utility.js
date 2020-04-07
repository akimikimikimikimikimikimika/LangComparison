let process = require("process"),os=require("os");
let e=exports;

// 改行を伴う出力 + ヒアドキュメントの行頭インデントを削除する
e.println=(text,eol=1)=>{
	process.stdout.write(e.clean(text)+this.nl(eol));
};

// 引数の文字列を改行しながら表示
e.prints=(...values)=>{
	for (i of values) {
		var t=String(i);
		process.stdout.write(t);
		e.nl(1);
	}
};

// lines で与えた数だけ改行文字を返す
e.nl=(lines=1)=>{
	var t="";
	for (var n=0;n<lines;n++) t+=os.EOL;
	return t;
};

// lines で与えた数だけ改行文字を出力する
e.pnl=(lines=1)=>process.stdout.write(e.nl(lines));

// ヒアドキュメントの行頭インデントを削除する
e.clean=(text)=>text.replace(/\n\t+/gm,"\n").replace(/^\t/,"");