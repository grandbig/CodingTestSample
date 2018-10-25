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
}
