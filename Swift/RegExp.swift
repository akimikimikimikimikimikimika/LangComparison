#! /usr/bin/swift

import Foundation

print("\r\nこれから正規表現を試します\r\n")

let text="The Quick Brown Fox Jumps Over The Lazy Dog"
print("\(text) →")

print("\r\n検索")
var regexp=try NSRegularExpression(pattern:"the ([a-z]+) ([a-z]+) fox", options:[.caseInsensitive])
	// 正規表現のコンパイル
var results=regexp.matches(in: text, range: NSMakeRange(0, text.count))
	/*
		マッチする箇所を全て発見 → [NSTextCheckingResult]
		※ 最初の1箇所だけでよいなら regexp.firstMatch(in:,range:) -> NSTextCheckingResult
	*/
var found=results.map({ (v:NSTextCheckingResult) -> String in
	(text as NSString).substring(with: v.range)
})
	// map により [NSTextCheckingResult] を対応する箇所を切り抜いた [String] に変換
print(found)

print("\r\nマッチの確認")
regexp=try NSRegularExpression(pattern:"(?i)fox jumps")
	// 正規表現のコンパイル
if regexp.numberOfMatches(in: text, range: (text as NSString).range(of: text)) > 0 {
	print("狐が飛んでいます")
}
else {
	print("狐は飛んでいません")
}
regexp=try NSRegularExpression(pattern:"(?i)dog jumps")
if regexp.numberOfMatches(in: text, range: (text as NSString).range(of: text)) > 0 {
	print("犬が飛んでいます")
}
else {
	print("犬は飛んでいません")
}

print("\r\n置換")
let replaced=text.replacingOccurrences(of: "(?i)([a-z]+)o([a-z]+)", with: "« $1ö$2 »", options: .regularExpression, range: text.range(of: text))
print(replaced)
/*
	或いは,RegExpを使った次の方法もある
	regexp=try NSRegularExpression(pattern:"(?i)([a-z]+)ö([a-z]+)", options:[.caseInsensitive])
	replaced=regexp.stringByReplacingMatches(in: text, range: text.range(of: text), withTemplate: "« $1ö$2 »")
*/

/*
	NSRegularExpression(pattern:String,options:[NSRegularExpression.Options])
	Options
		.caseInsensitive
		.dotMatchesLineSeparator
			. が改行文字等にもマッチするようになる
		.anchorMathcesLine
			^ や $ が行頭,行末にも適用される。然もなくば,文字列の先頭と末尾にのみ適用する。
		.useUnixLineSeparators
			行区切りの文字を \n のみだと見做す
		.allowCommentAndWhitespace
			# から始まるコメントや,スペースの存在を認める。然もなくば,それらも検索対象文字列と見做す。

	options で .caseInsensitive を指定したが,pattern文字列の先頭に (?i) を挿入することでも同様の効果が得られる
	フラグ
		i: .caseInsensitive と同様
		x: .allowCommentAndWhitespace と同様
		s: .dotMatchesLineSeparator と同様
		m: .anchorMatchesLine と同様
*/

print("\r\n分割と結合")
let array=text.components(separatedBy: " ")
let arranged=array.joined(separator: "_")
print(array)
print(arranged)
/*
	(NSString).components(separatedBy: String) : NSStringをStringで分割
	(String).components(Character) : StringをCharacterで分割
*/

print("\r\n")