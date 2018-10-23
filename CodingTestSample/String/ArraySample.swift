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
    func ascSortArray() {
        // 単純な配列の並び替えの場合
        let input = [80, 100, 35, 68]
        let sortedArray = input.sorted()  // 昇順
        
        print(sortedArray)
        //  [35, 68, 80, 100]
    }

    /// 昇順に並び替え
    func ascSortArray2() {
        // 単純な配列の並び替えの場合
        var input = [80, 100, 35, 68]
        input.sort(by: { $0 < $1 })       // 昇順
        print(input)
        //  [35, 68, 80, 100]
    }

    /// 降順にさ並び替え
    func descSortArray() {
        // 単純な配列の並び替えの場合
        var input = [80, 100, 35, 68]
        input.sort(by: { $0 > $1 })       // 降順
        print(input)
        // [100, 80, 68, 35]
    }

    /// 配列の最大値を取得
    func maxInArray() {
        let input = [20, 30, 100, 60]
        print(input.max()!)
        // 100
    }

    /// 配列の最小値を取得
    func minInArray() {
        let input = [20, 30, 100, 60]
        print(input.min()!)
        // 20
    }

    /// 合計値を取得
    func getSumArray() {
        let subjectScore = [78, 80, 60, 55, 92]
        let sum = subjectScore.reduce(0) { $0 + $1 }
        print(sum)
        // 365
    }

    /// フィルタをかけた結果
    func filteredArray() {
        // 合格ボーダの点数が40点だとします。
        let input = [20, 30, 100, 60]
        let result = input.filter { $0 > 40 }
        print(result)
        // [100, 60]
    }

    /// 全ての要素に同じ処理をかける
    func mappedArray() {
        let input = "1 2 3 4 5"
        let array = input.components(separatedBy: .whitespaces)
        let intArray = array.map { Int($0)! }
        print(intArray)
        // [1, 2, 3, 4, 5]
    }

    /// 全ての要素に同じ処理をかける(不要なものは除去)
    func compactMappedArray() {
        let input = "1 2 B 4 5"
        let array = input.components(separatedBy: .whitespaces)
        let intArray = array.compactMap { Int($0) }
        print(intArray)
        // [1, 2, 4, 5]
    }
}
