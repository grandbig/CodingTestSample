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

    /// ○○進数から10進数に変換
    /// Ex. input: 1010, radix: 2 -> 10
    func changeToDecimal(input: String, radix: Int) {
        if let result = Int(input, radix: radix) {
            print(result)
        }
    }

    /// 切り上げ
    /// Ex. input: 3.14 -> 4.0
    func ceilNum(input: Double) {
        let result = ceil(input)
        print(result)
    }

    /// 切り上げ。小数第○位指定
    /// Ex. input: 3.14, decimal: 2.0 -> 3.2
    func ceilNum(input: Double, decimal: Int) {
        let powerNum = pow(10.0, Double(decimal))
        let result = ceil(input * powerNum) / powerNum
        print(result)
    }

    /// 四捨五入
    /// Ex. input: 3.14 -> 3.0
    func roundNum(input: Double) {
        let result = round(input)
        print(result)
    }

    /// 四捨五入。小数第○位指定
    /// Ex. input: 3.14, decimal: 2.0 -> 3.1
    func roundNum(input: Double, decimal: Int) {
        let powerNum = pow(10.0, Double(decimal))
        let result = round(input * powerNum) / powerNum
        print(result)
    }

    /// 切り捨て
    /// Ex. input: 3.14 -> 3.0
    func floorNum(input: Double) {
        let result = floor(input)
        print(result)
    }

    /// 切り捨て。小数第○位指定
    /// Ex. input: 3.14 -> 3.1
    func floorNum(input: Double, decimal: Int) {
        let powerNum = pow(10.0, Double(decimal))
        let result = floor(input * powerNum) / powerNum
        print(result)
    }
}
