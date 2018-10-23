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
    func changeToBinaryNumber() {
        let num = 10
        let result = String(num, radix: 2)
        print(result)
    }

    /// 8進数に変換
    func changeToOctalNumber() {
        let num = 10
        let result = String(num, radix: 8)
        print(result)
    }

    /// 16進数に変換
    func changeToHexadecimal() {
        let num = 10
        let result = String(num, radix: 16)
        print(result)
    }
}
