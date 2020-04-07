#! /usr/bin/env node

let u=require("./Utility.js");
let e=exports;

e.Condition=()=>{

	let test1 = true;
	let test2 = false;

	u.pnl(1);

	u.println("これから条件分岐を試します",2);

	if (test1) {
		u.println("どうやらtest1は真のようです");
	}

	if (!test1) u.println("どうやらtest1は偽のようです");
	else if (test2) u.println("どうやらtest2は真のようです");
	else if (!test2 && test1) u.println("真偽が混在しているようです");
	else u.println("どれでもないようです");


	let val = 8;
	switch (val) {
		case 0:
		case 1:
			u.println(val+"は特別な値である");break;
		case 8:
		case 9:
		case 10:
			u.println("これに隣接する数にも言えたりするが,");
			// breakを省くと,case 8,9,10を実行すれば,直下のcase 4,6も実行する
		case 4:
		case 6:
			u.println(val+"は素数ではない");break;
		case 2:
		case 3:
		case 5:
		case 7:
			u.println(val+"は素数である");break;
		default:
			u.println(val+"なぞ私には興味がない");break;
	}

	u.pnl(2);

};

if (!module.parent) e.Condition();