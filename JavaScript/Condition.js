
let test1 = true;
let test2 = false;

var log = "\r\nこれから条件分岐を試します\r\n\r\n";

if (test1) {
	log+="どうやらtest1は真のようです\r\n";
}

if (!test1) log+="どうやらtest1は偽のようです\r\n";
else if (test2) log+="どうやらtest2は真のようです\r\n";
else if (!test2 && test1) log+="真偽が混在しているようです\r\n";
else log+="どれでもないようです\r\n";


let val = 8;
switch (val) {
	case 0:
	case 1:
		log+=val+"は特別な値である\r\n";break;
	case 8:
	case 9:
	case 10:
		log+="これに隣接する数にも言えたりするが,\r\n";
		// breakを省くと,case 8,9,10を実行すれば,直下のcase 4,6も実行する
	case 4:
	case 6:
		log+=val+"は素数ではない\r\n";break;
	case 2:
	case 3:
	case 5:
	case 7:
		log+=val+"は素数である\r\n";break;
	default:
		log+=val+"なぞ私には興味がない\r\n";break;
}

console.log(log);