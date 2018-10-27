//
//  ViewController.swift
//  CodingTestSample
//
//  Created by Takahiro Kato on 2018/10/23.
//  Copyright © 2018 Takahiro Kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        exampleMethod()
    }

    private func exampleMethod() {
        print("=== exampleMethod START ===")

        let otherStringSample = OtherStringSample()
        otherStringSample.reverseRead(input: "swift")
        otherStringSample.replaceCharacter(input: "ABCDEF", from: "ABC", to: "abc")
        otherStringSample.checkContainIli(input: "location")

        let separateStringSample = SeparateStringSample()
        separateStringSample.separateString(input: "1 2 3 4 5")
        separateStringSample.separateDecimalDigits(input: "a1b2c3d4e")
        separateStringSample.separateLetters(input: "1a2B3う4日5キ6")
        separateStringSample.separateLowercaseLetters(input: "1a2b3c4D5")
        separateStringSample.separatePunctuationCharacters(input: "1/2?3_4-5@6")

        let extractStringSample = ExtractStringSample()
        extractStringSample.deleteFinalCharacter(input: "123456789X")
        extractStringSample.deleteFinalCharacter2(input: "123456789X")
        extractStringSample.deleteFinalCharacter3(input: "123456789X")
        extractStringSample.extractCharacter(input: "123456789", th: 3)
        extractStringSample.extractCharacter2(input: "123456789", th: 3)
        extractStringSample.offsetCharacter(input: "ABCDEFG", char: "D")

        let arraySample = ArraySample()
        arraySample.ascSortArray(input: [80, 100, 35, 68])
        arraySample.ascSortArray2(input: [80, 100, 35, 68])
        arraySample.descSortArray(input: [80, 100, 35, 68])
        arraySample.maxInArray(input: [20, 30, 100, 60])
        arraySample.minInArray(input: [20, 30, 100, 60])
        arraySample.getSumArray(input: [78, 80, 60, 55, 92])
        arraySample.filteredArray(input: [20, 30, 100, 60], border: 40)
        arraySample.mappedArray(input: "1 2 3 4 5")
        arraySample.compactMappedArray(input: "1 2 B 4 5")

        let intSample = IntSample()
        intSample.changeToBinaryNumber(input: 10)
        intSample.changeToOctalNumber(input: 10)
        intSample.changeToHexadecimal(input: 10)
        intSample.changeToDecimal(input: "1010", radix: 2)
        intSample.ceilNum(input: 3.14)
        intSample.ceilNum(input: 3.14, decimal: 1)
        intSample.roundNum(input: 3.14)
        intSample.roundNum(input: 3.14, decimal: 1)
        intSample.floorNum(input: 3.14)
        intSample.floorNum(input: 3.14, decimal: 1)

        // 正規表現
        let regexSample = RegexSample()
        if regexSample.pregMatche(input: "title=ABCDE&body=FGHIJ", pattern: "ABCDE") {
            print("match")
        } else {
            print("not match")
        }

        var hoge: [String] = []
        _ = regexSample.pregMatche(input: "title=ABCDE&body=FGHIJ", pattern: "^title=.*&body", matches: &hoge)
        print(hoge)

        let fuga = regexSample.pregReplace(input: "title=ABCDE&body=FGHIJ", pattern: "^title=.*&body", with: "title=abcde&body")
        print(fuga)

        print("=== exampleMethod FINISH ===")
    }
}

