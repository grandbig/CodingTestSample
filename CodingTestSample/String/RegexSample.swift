//
//  RegexSample.swift
//  CodingTestSample
//
//  Created by Takahiro Kato on 2018/10/24.
//  Copyright © 2018 Takahiro Kato. All rights reserved.
//

import Foundation

class RegexSample {

    // 参考
    // https://qiita.com/shoheiyokoyama/items/5dc67fdc9e06a9dc5728

    /// 正規表現の検索をします
    /// Ex. input: "title=ABCDE&body=FGHIJ", pattern: "ABCDE" -> true
    func pregMatche(input: String, pattern: String, options: NSRegularExpression.Options = []) -> Bool {
        let regex = try! NSRegularExpression(pattern: pattern, options: options)
        let matches = regex.matches(in: input, options: [], range: NSMakeRange(0, input.count))
        return matches.count > 0
    }

    /// 正規表現の検索結果を利用できます
    /// Ex. input: "title=ABCDE&body=FGHIJ", pattern: "^title=.*&body", matches: [] -> true, matches=["title=ABCDE&body"]
    func pregMatche(input: String, pattern: String, options: NSRegularExpression.Options = [], matches: inout [String]) -> Bool {
        guard let regex = try? NSRegularExpression(pattern: pattern, options: options) else {
            return false
        }
        let targetStringRange = NSRange(location: 0, length: input.count)
        let results = regex.matches(in: input, options: [], range: targetStringRange)
        for i in 0 ..< results.count{
            for j in 0 ..< results[i].numberOfRanges{
                let range = results[i].range(at: j)
                matches.append((input as NSString).substring(with: range))
            }
        }
        return results.count > 0
    }

    /// 正規表現の置換をします
    /// Ex. input: "title=ABCDE&body=FGHIJ", pattern: "^title=.*&body", with: "title=abcde&body" -> "itle=abcde&body=FGHIJ"
    func pregReplace(input: String, pattern: String, with: String, options: NSRegularExpression.Options = []) -> String {
        let regex = try! NSRegularExpression(pattern: pattern, options: options)
        return regex.stringByReplacingMatches(in: input, options: [], range: NSMakeRange(0, input.count), withTemplate: with)
    }
}
