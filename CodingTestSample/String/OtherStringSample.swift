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
    /// Ex. input: swift -> tfiws
    func reverseRead(input: String) {
        var result = ""
        for i in input.reversed() {
            result = result + String(i)
        }
        print(result)
    }

    /// 文字列置換
    /// Ex. input: "ABCDE", from: "ABC", to: "abc" -> abcDE
    func replaceCharacter(input: String, from: String, to: String) {
        let replacedString = input.replacingOccurrences(of: from, with: to)
        print(replacedString)
    }

    /// "I" or "l" or "i" のいずれかの文字列が含まれているかチェックする処理
    /// 含まれている場合は caution と出力
    /// 含まれていない場合は文字列をそのまま出力
    /// Ex.1 input: location -> caution
    /// Ex.2 input: hoge -> hoge
    func checkContainIli(input: String) {
        let isExistUpperI = input.contains("I")
        let isExistLowerL = input.contains("l")
        let isExistLowerI = input.contains("i")
        if isExistUpperI || isExistLowerL || isExistLowerI {
            print("caution")
        } else {
            print(input)
        }
    }
}
