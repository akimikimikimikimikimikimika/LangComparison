
var log = "\r\nこれからループ処理を試します\r\n";

log+="\r\nfor (n=0; n<3; n++) {…}\r\n";
for (n=0;n<3;n++) log+=`n=${n}のループ\r\n`;

log+="\r\nfor (n in array) {…}\r\n";
let cs=["壱","弐","参"];
for (n in cs) log+=`${n}番目の c="${cs[n]}"のループ\r\n`;

log+="\r\narray.forEach((c,n)=>{…});\r\n";
cs.forEach((c,n)=>{
	log+=`${n}番目の c="${c}"のループ\r\n`
});

log+="\r\nwhile (~) {…}\r\n";
var str="";
while (str.length<6) {
	str+="*";
	log+=str+"\r\n";
}

log+="\r\ndo {…} while (~)\r\n";
var str="";
do {
	str+="*";
	log+=str+"\r\n";
} while (str.length<6);

console.log(log);