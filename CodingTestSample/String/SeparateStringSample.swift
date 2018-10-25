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
    /// Ex. input: "1 2 3 4 5" -> ["1", "2", "3", "4", "5"]
    func separateString(input: String) {
        // 半角スペースで分割
        let array = input.components(separatedBy: .whitespaces)
        // 出力すると下記のようになります
        print(array)
    }

    /// 数字で文字列分割
    /// Ex. input: "a1b2c3d4e" -> ["a", "b", "c", "d", "e"]
    func separateDecimalDigits(input: String) {
        let array = input.components(separatedBy: .decimalDigits)
        print(array)
    }

    /// アルファベットで文字列分割
    /// Ex. input: "1a2B3う4日5キ6" -> ["1", "2", "3", "4", "5", "6"]
    func separateLetters(input: String) {
        let array = input.components(separatedBy: .letters)
        print(array)
    }

    // アルファベット小文字でこ文字列分割
    /// Ex. input: "1a2b3c4D5" -> ["1", "2", "3", "4D5"]
    func separateLowercaseLetters(input: String) {
        let array = input.components(separatedBy: .lowercaseLetters)
        print(array)
    }

    /// 記号で分割
    /// Ex. input: "1/2?3_4-5@6" -> ["1", "2", "3", "4", "5", "6"]
    func separatePunctuationCharacters(input: String) {
        // 記号で分割
        let array = input.components(separatedBy: .punctuationCharacters)
        print(array)
    }
}
