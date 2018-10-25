//
//  StringSample.swift
//  CodingTestSample
//
//  Created by Takahiro Kato on 2018/10/23.
//  Copyright © 2018 Takahiro Kato. All rights reserved.
//

import Foundation

class OtherStringSample {

    /// 文字列を逆さまに出力
    func reverseRead() {
        let input = "swift"
        var result = ""
        for i in input.reversed() {
            result = result + String(i)
        }
        print(result)
        // tfiws
    }

    /// 文字列置換
    func replaceCharacter() {
        var str = "ABCDEFG"
        str = str.replacingOccurrences(of: "ABC", with: "abc")
        print(str)
        // abcDEFG
    }
}
