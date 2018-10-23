//
//  SortArraySample.swift
//  CodingTestSample
//
//  Created by Takahiro Kato on 2018/10/24.
//  Copyright © 2018 Takahiro Kato. All rights reserved.
//

import Foundation

class SortArraySample {

    func ascSortArray() {
        // 単純な配列の並び替えの場合
        let input = [80, 100, 35, 68]
        let sortedArray = input.sorted()  // 昇順
        
        print(sortedArray)
        //  [35, 68, 80, 100]
    }
    func ascSortArray2() {
        // 単純な配列の並び替えの場合
        var input = [80, 100, 35, 68]
        input.sort(by: { $0 < $1 })       // 昇順
        print(input)
        //  [35, 68, 80, 100]
    }
    func descSortArray() {
        // 単純な配列の並び替えの場合
        var input = [80, 100, 35, 68]
        input.sort(by: { $0 > $1 })       // 降順
        print(input)
        // [100, 80, 68, 35]
    }
}
