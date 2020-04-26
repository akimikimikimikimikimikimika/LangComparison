#! /usr/bin/env node

let u=require("./Utility.js");
let e=exports;

e.DateTime=()=>{

	let st = new Date();
	/*
		new Date()
			通常の精度
			現在時刻を表すミリ秒単位の数値 (と可換なオブジェクト)
			Number(new Date()) などで数値に変換
		performance.now()
			高精度
			現在時刻を表すミリ秒単位の数値
			Number(new Date()) などで数値に変換
			実装によって精度がまちまちだが,最小で数マイクロ秒程度の精度
			Node.js で使うには
			 let performance=require("perf_hook");
			を挿入する
	*/

	let date = new Date();
	u.println(`

		これから日付と時刻を試します

		現在ローカル時刻: ${date.toString()}
		現在UTC時刻:      ${date.toUTCString()}

		ISO形式: ${date.toISOString()}

		日付: ${date.toDateString()}
		時刻: ${date.toTimeString()}

		date

		.getFullYear()     = ${date.getFullYear()}
		.getMonth()        = ${date.getMonth()} (0:1月 ~ )
		.getDate()         = ${date.getDate()}
		.getDay()          = ${date.getDay()} (0:日曜日 ~ )
		.getHours()        = ${date.getHours()}
		.getMinutes()      = ${date.getMinutes()}
		.getSeconds()      = ${date.getSeconds()}
		.getMilliseconds() = ${date.getMilliseconds()}

		.getUTCFullYear()     = ${date.getUTCFullYear()}
		.getUTCMonth()        = ${date.getUTCMonth()} (0:1月 ~ )
		.getUTCDate()         = ${date.getUTCDate()}
		.getUTCDay()          = ${date.getUTCDay()} (0:日曜日 ~ )
		.getUTCHours()        = ${date.getUTCHours()}
		.getUTCMinutes()      = ${date.getUTCMinutes()}
		.getUTCSeconds()      = ${date.getUTCSeconds()}
		.getUTCMilliseconds() = ${date.getUTCMilliseconds()}

	`);

	let en=new Date();

	u.println(`この処理に要した時間: ${en-st} ミリ秒`);

};

if (!module.parent) e.DateTime();