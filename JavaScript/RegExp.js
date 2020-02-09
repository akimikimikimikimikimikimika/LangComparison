#! /usr/bin/env node

var log="\r\nこれから正規表現を試します\r\n\r\n";

let text="The Quick Brown Fox Jumps Over The Lazy Dog";
log+=`${text} →`;

log+="\r\n検索\r\n";
var found=text.match(/the ([a-z]+) ([a-z]+) fox/g);
log+=`String.match:\r\n${found}\r\n`;

log+="\r\n置換\r\n";
var replaced=text.replace(/([a-z]+)o([a-z]+)/i,"« $1ö$2 »");
log+=`gフラグなし:\r\n${replaced}\r\n`;
var replaced=text.replace(/([a-z]+)o([a-z]+)/ig,"« $1ö$2 »");
log+=`gフラグあり:\r\n${replaced}\r\n`;

log+="\r\n分割と結合\r\n";
let array=text.split(/(the|s)? /);
arranged=array.join("_");
log+=`${array}\r\n`;
log+=`${arranged}\r\n`;

log+="\r\nマッチの確認\r\n";
if (/fox jumps/i.test(text)) log+=`狐が飛んでいます\r\n`;
else log+=`狐は飛んでいません\r\n`;
if (/dog jumps/i.test(text)) log+=`犬が飛んでいます\r\n`;
else log+=`犬は飛んでいません\r\n`;

console.log(log);