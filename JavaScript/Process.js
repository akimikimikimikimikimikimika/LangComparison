#! /usr/bin/env node

let process = require("process");
let u=require("./Utility.js");
let e=exports;

e.Process=async ()=>{

	u.println(`
		プロセスID: ${process.pid}

		Node.js
		バージョン: ${process.version}
		LTS名称: ${process.release.lts}
		Node.js URL: ${process.release.sourceUrl}
		コマンドラインスイッチ: ${process.execPath} ${process.execArgv.join(" ")}
		各コンポーネントのバージョン:
		${versions()}

		OS: ${process.platform}
		CPU: ${process.arch}

		では,3.14秒ほど居眠りします

	`);

	await sleep(3.14);

	u.pnl(2);

};

let sleep=(sec)=>{
	return new Promise(r=>{
		setTimeout(r,sec*1000);
	});
};

let versions=()=>{
	let o=process.versions;
	let a=[];
	for (k in o) a.push(`  ${k}: ${o[k]}`);
	return a.join(u.nl());
};

if (!module.parent) e.Process().then(()=>process.exit(0));