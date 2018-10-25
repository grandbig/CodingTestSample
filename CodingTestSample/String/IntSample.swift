//
//  IntSample.swift
//  CodingTestSample
//
//  Created by Takahiro Kato on 2018/10/24.
//  Copyright © 2018 Takahiro Kato. All rights reserved.
//

import Foundation

class IntSample {

    /// 2進数に変換
    /// Ex. input: 10 -> 1010
    func changeToBinaryNumber(input: Int) {
        let result = String(input, radix: 2)
        print(result)
    }

    /// 8進数に変換
    /// Ex. input: 10 -> 12
    func changeToOctalNumber(input: Int) {
        let result = String(input, radix: 8)
        print(result)
    }

    /// 16進数に変換
    /// Ex. input: 10 -> a
    func changeToHexadecimal(input: Int) {
        let result = String(input, radix: 16)
        print(result)
    }
}
