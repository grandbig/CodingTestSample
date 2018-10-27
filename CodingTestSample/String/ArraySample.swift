//
//  SortArraySample.swift
//  CodingTestSample
//
//  Created by Takahiro Kato on 2018/10/24.
//  Copyright © 2018 Takahiro Kato. All rights reserved.
//

import Foundation

class ArraySample {

    /// 昇順に並び替え
    /// Ex. input: [80, 100, 35, 68] -> [35, 68, 80, 100]
    func ascSortArray(input: [Int]) {
        let sortedArray = input.sorted()  // 昇順
        print(sortedArray)
    }

    /// 昇順に並び替え
    /// Ex. input: [80, 100, 35, 68] -> [35, 68, 80, 100]
    func ascSortArray2(input: [Int]) {
        var output = input
        output.sort(by: { $0 < $1 }) // 昇順
        print(output)
    }

    /// 降順に並び替え
    /// Ex. input: [80, 100, 35, 68] -> [100, 80, 68, 35]
    func descSortArray(input: [Int]) {
        var output = input
        output.sort(by: { $0 > $1 }) // 降順
        print(output)
    }

    /// 配列の最大値を取得
    /// Ex. input: [20, 30, 100, 60] -> 100
    func maxInArray(input: [Int]) {
        print(input.max()!)
    }

    /// 配列の最小値を取得
    /// Ex. input: [20, 30, 100, 60] -> 20
    func minInArray(input: [Int]) {
        print(input.min()!)
    }

    /// 合計値を取得
    /// Ex. input: [78, 80, 60, 55, 92] -> 365
    func getSumArray(input: [Int]) {
        let sum = input.reduce(0) { $0 + $1 }
        print(sum)
    }

    /// フィルタをかけた結果
    /// Ex. input: [20, 30, 100, 60], border: 40 -> [100, 60]
    func filteredArray(input: [Int], border: Int) {
        let result = input.filter { $0 > border }
        print(result)
    }

    /// 全ての要素に同じ処理をかける
    /// Ex. input: "1 2 3 4 5" -> [1, 2, 3, 4, 5]
    func mappedArray(input: String) {
        let array = input.components(separatedBy: .whitespaces)
        let intArray = array.map { Int($0)! }
        print(intArray)
    }

    /// 全ての要素に同じ処理をかける(不要なものは除去)
    /// Ex. input: "1 2 B 4 5" -> [1, 2, 4, 5]
    func compactMappedArray(input: String) {
        let array = input.components(separatedBy: .whitespaces)
        let intArray = array.compactMap { Int($0) }
        print(intArray)
    }
}
