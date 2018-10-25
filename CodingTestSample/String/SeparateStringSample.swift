//
//  SeparateStringSample.swift
//  CodingTestSample
//
//  Created by Takahiro Kato on 2018/10/25.
//  Copyright © 2018 Takahiro Kato. All rights reserved.
//

import Foundation

class SeparateStringSample {

    /// 半角スペースで文字列分割
    func separateString() {
        // 与えられる入力値が "1 2 3 4 5"の場合
        let input = "1 2 3 4 5"
        // 半角スペースで分割
        let array = input.components(separatedBy: .whitespaces)
        // 出力すると下記のようになります
        print(array)
        // ["1", "2", "3", "4", "5"]
    }

    /// 数字で文字列分割
    func separateDecimalDigits() {
        // 数字で分割
        let input = "a1b2c3d4e"
        let array = input.components(separatedBy: .decimalDigits)
        print(array)
        // ["a", "b", "c", "d", "e"]
    }

    /// アルファベットで文字列分割
    func separateLetters() {
        // 小文字アルファベットで分割
        let input = "1a2B3う4日5キ6"
        let array = input.components(separatedBy: .letters)
        print(array)
        // ["1", "2", "3", "4", "5", "6"]
    }

    // アルファベット小文字でこ文字列分割
    func separateLowercaseLetters() {
        // 小文字アルファベットで分割
        let input = "1a2b3c4D5"
        let array = input.components(separatedBy: .lowercaseLetters)
        print(array)
        // ["1", "2", "3", "4D5"]
    }

    /// 記号で分割
    func separatePunctuationCharacters() {
        // 記号で分割
        let input = "1/2?3_4-5@6"
        let array = input.components(separatedBy: .punctuationCharacters)
        print(array)
        // ["1", "2", "3", "4", "5", "6"]
    }
}
