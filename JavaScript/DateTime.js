
"use strict";

let st = new Date();

let date = new Date();
console.log(`

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