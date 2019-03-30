#! /usr/bin/swift

import Foundation

print("\r\nこれから正規表現を試します\r\n")

print("\r\n検索")
var text="IllUsTrAtE"
var regexp=try NSRegularExpression(pattern:"t", options:[.caseInsensitive])
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
print("\(text) → \(found.joined(separator: ", "))")
    // [String] を連結してコンマ区切りの文字列に

print("\r\n置換")
text="<a> <b> <c>"
var replaced=text.replacingOccurrences(of: "(?i)<([a-z])>", with: "{$1}", options: .regularExpression, range: text.range(of: text))
print("\(text) → \(replaced)")
/*
    或いは,RegExpを使った次の方法もある
    regexp=try NSRegularExpression(pattern:"<([a-z])>", options:[.caseInsensitive])
    replaced=regexp.stringByReplacingMatches(in: text, range: text.range(of: text), withTemplate: "{$1}")
*/

print("\r\nマッチの確認")
let test1="qUiVeR"
let test2="ShIvEr"

regexp=try NSRegularExpression(pattern:"(?i)^qu")
    // 正規表現のコンパイル
if regexp.numberOfMatches(in: test1, range: (test1 as NSString).range(of: test1)) > 0 {
    print("\(test1) はquで始まります")
}
else {
    print("\(test1) はquで始まりません")
}
if regexp.numberOfMatches(in: test2, range: (test2 as NSString).range(of: test2)) > 0 {
    print("\(test2) はquで始まります")
}
else {
    print("\(test2) はquで始まりません")
}

print("\r\nマッチの確認 (正規表現を使わない方法)")
text="<a> <b> <c>"
if text.hasPrefix("<a>") {
    print("\(text) は<a>で始まります")
}
if text.hasSuffix("<c>") {
    print("\(text) は<c>で終わります")
}
if (text as NSString).contains("<b>") {
    print("\(text) は<b>を含みます")
}

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
text="a-b-c"
let split=text.components(separatedBy: "-")
let arranged=split.joined(".")
print("\(text) → \(arranged)")
/*
    (NSString).components(separatedBy: String) : NSStringをStringで分割
    (String).components(Character) : StringをCharacterで分割
*/

print("\r\n")