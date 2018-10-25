//
//  ExtractStringSample.swift
//  CodingTestSample
//
//  Created by Takahiro Kato on 2018/10/25.
//  Copyright © 2018 Takahiro Kato. All rights reserved.
//

import Foundation

class ExtractStringSample {

    /// 文字列の末尾1文字を削除
    /// Ex. input: "123456789X" -> "123456789"
    func deleteFinalCharacter(input: String) {
        let num = input.prefix(input.count - 1)
        print(num)
    }

    /// 文字列の末尾1文字を削除
    /// Ex. input: "123456789X" -> "123456789"
    func deleteFinalCharacter2(input: String) {
        let num = input[input.startIndex..<input.index(before: input.endIndex)]
        print(num)
    }

    /// Swift3までの算出方法 - deprecated なので利用しないようにしましょう
    /// 文字列の末尾1文字を削除
    /// Ex. input: "123456789X" -> "123456789"
    func deleteFinalCharacter3(input: String) {
        let num = input.substring(to: input.index(before: input.endIndex))
        print(num)
    }

    /// 指定番目の文字を取得
    /// Ex. input: "123456789", th: 3 -> 3
    func extractCharacter(input: String, th: Int) {
//        let endIntTh = th + 1
//        guard let startUnicodeScalarTh = UnicodeScalar(th), let endUnicodeScalarTh = UnicodeScalar(endIntTh) else {
//            return
//        }
//        let startCharacterTh = Character(startUnicodeScalarTh)
//        let endCharacterTh = Character(endUnicodeScalarTh)
        let endIntTh = th + 1
        let startStringTh = String(th)
        let endStringTh = String(endIntTh)
        let num = input[input.index(of: Character(startStringTh))!..<input.index(of: Character(endStringTh))!]
        print(num)
    }

    /// Swift3までの算出方法 - deprecated なので利用しないようにしましょう
    /// 指定番目の文字を取得
    /// Ex. input: "123456789", th: 3 -> 3
    func extractCharacter2(input: String, th: Int) {
        let endTh = th + 1
        let startIndex = input.index(input.startIndex, offsetBy: th)
        let endIndex = input.index(input.startIndex, offsetBy: endTh)
        let num = input.substring(with: startIndex..<endIndex)
        print(num)
    }

    /// 指定文字が何番目の文字かを取得
    /// Ex. input: "ABCDEFG", char: "D" -> 4
    func offsetCharacter(input: String, char: Character) {
        let index = input.index(of: char)
        if let offset = index?.encodedOffset {
            print(offset + 1)
        }
    }
}
