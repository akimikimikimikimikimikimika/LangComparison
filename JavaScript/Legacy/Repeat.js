#! /usr/bin/env node

let u=require("./Utility.js");
let e=exports;

e.Repeat=()=>{

	u.pnl(1);

	u.println("これからループ処理を試します",2);

	u.pnl(1);

	u.println("for (n=0; n<3; n++) {…}");
	for (n=0;n<3;n++) u.println(`n=${n} のループ`);

	pnl(1);

	u.println("for (n of array) {…}");
	let cs=["壱","弐","参"];
	for (c of cs) u.println(`c="${c}" のループ`);

	u.pnl(1);

	u.println("array.forEach((c,n)=>{…});");
	cs.forEach((c,n)=>{
		u.println(`c="${c}" のループ (${n}番目の要素)`);
	}); // 詳しくは, Array.js でも取り扱う

	u.pnl(1);

	u.println("while (~) {…}");
	var str="";
	while (str.length<6) {
		str+="*";
		u.println(str);
	}

	u.pnl(1);

	u.println("do {…} while (~)");
	var str="";
	do {
		str+="*";
		u.println(str);
	} while (str.length<6);

	u.pnl(2);

};

if (!module.parent) e.Repeat();