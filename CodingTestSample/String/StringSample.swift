//
//  StringSample.swift
//  CodingTestSample
//
//  Created by Takahiro Kato on 2018/10/23.
//  Copyright © 2018 Takahiro Kato. All rights reserved.
//

import Foundation

class StringSample {

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

    /// 文字列の末尾1文字を削除
    func deleteFinalCharacter() {
        // 算出方法１
        let str = "123456789X"
        let num1 = str.prefix(str.count - 1)
        print(num1)
        // 123456789
    }

    /// 文字列の末尾1文字を削除
    func deleteFinalCharacter2() {
        // 算出方法２
        let str = "123456789X"
        let num2 = str[str.startIndex..<str.index(before: str.endIndex)]
        print(num2)
        // 123456789
    }

    func deleteFinalCharacter3() {
        // Swift3までの算出方法 - deprecated なので利用しないようにしましょう
        let str = "123456789X"
        let num3 = str.substring(to: str.index(before: str.endIndex))
        print(num3)
        // 123456789
    }

    /// 指定番目の文字を取得
    func extractCharacter() {
        let str = "123456789"
        // 3番目の文字列を取得する場合
        let num = str[str.index(of: "3")!..<str.index(of: "4")!]
        print(num)
        // 3
    }

    /// 指定番目の文字を取得
    func extractCharacter2() {
        let str = "123456789"
        // Swift3までの算出方法 - deprecated なので利用しないようにしましょう
        let num = str.substring(with: str.index(str.startIndex, offsetBy: 2)..<str.index(str.startIndex, offsetBy: 3))
        print(num)
        // 3
    }

    /// 指定文字が何番目の文字かを取得
    func offsetCharacter() {
        let str = "ABCDEFG"
        let index = str.index(of: "D")
        if let offset = index?.encodedOffset {
            print(offset + 1)
        }
        // 4
    }

    /// 文字列置換
    func replaceCharacter() {
        var str = "ABCDEFG"
        str = str.replacingOccurrences(of: "ABC", with: "abc")
        print(str)
        // abcDEFG
    }
}
