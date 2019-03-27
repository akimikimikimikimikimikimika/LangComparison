
var log="\r\nこれから正規表現を試します\r\n\r\n";

log+="\r\n検索\r\n";
var text="IllUsTrAtE";
var found=text.match(/[A-Z]+/g);
log+=`String.match: ${text} → ${found}\r\n`;

log+="\r\n置換\r\n";
text="<a> <b> <c>";
var replace=text.replace(/<([a-z])>/,"{$1}");
log+=`String.replace: ${text} → ${replace}\r\n`;
var replace=text.replace(/<([a-z])>/g,"{$1}");
log+=`String.replace: ${text} → ${replace}\r\n`;

log+="\r\n分割と結合\r\n";
text="a-b-c";
let arr=text.split(/-/);
newtext=arr.join("*");
log+=`${text} → ${newtext}\r\n`;

log+="\r\nマッチの確認\r\n";
let test1="qUiVeR";
let test2="ShIvEr";
if (/^qu/i.test(test1)) log+=`${test1} はquで始まります\r\n`;
else log+=`${test1} はquで始まりません\r\n`;
if (/^qu/i.test(test2)) log+=`${test2} はquで始まります\r\n`;
else log+=`${test2} はquで始まりません\r\n`;

console.log(log);